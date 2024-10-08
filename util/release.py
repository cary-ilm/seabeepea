#!/usr/bin/env python3

import sys
import re
from subprocess import PIPE, run
from datetime import datetime
import markdown

def extract_section(content, version_tag):
    """
    Extracts the section of release notes starting with a header like "Version <tag>".
    Includes only the text in the section itself, omitting any subsections.
    """

    # Regular expression to match the version title
    version_header = re.compile(rf'^##.*Version {re.escape(version_tag)}\b.*\(([^)]+)\)', re.IGNORECASE)    

    # Regular expression to match subheaders (### or higher)
    subsection_header_pattern = re.compile(r'^###\s+')

    lines = content.splitlines()
    capture = False
    section_lines = []
    release_date = None
    
    for line in lines:
        # Look for the start of the requested version section
        m = version_header.match(line)
        if m:
            release_date = datetime.strptime(m.group(1), "%B %d, %Y")
            capture = True
            continue
            
        # Stop capturing when the next subsection (### or higher) starts
        if capture and subsection_header_pattern.match(line):
            break
        # Capture lines if inside the correct section and before any subsections
        if capture:
            section_lines.append(line)

    return release_date, '\n'.join(section_lines).strip()

def markdown_to_rst(markdown_text):
    """
    Converts simple Markdown text to reStructuredText (reST) manually.
    """
    # Replace markdown links [text](url) with reST format `text <url>`_
    markdown_text = re.sub(r'\[(.*?)\]\((.*?)\)', r'`\1 <\2>`_', markdown_text)

    # Split into lines for further processing
    lines = markdown_text.splitlines()
    rst_lines = []
    for line in lines:
        # Replace bullet points (- becomes *)
        if line.startswith("- "):
            line = line.replace("- ", "* ", 1)
        
        # Handle other elements (bold, italics, etc.)
        line = re.sub(r'\*\*(.*?)\*\*', r'**\1**', line)  # Bold
        line = re.sub(r'\*(.*?)\*', r'*\1*', line)  # Italics

        rst_lines.append(line)

    return '\n'.join(rst_lines).strip()

def create_draft_release(tag, release_notes):
    """
    Creates a draft release using the GitHub CLI.
    """

    release_tag = tag.split("-rc")[0]
#    run(['echo', 'gh', 'release', 'create', release_tag, '--draft', '--title', release_tag, '--notes', notes])
    result = run(['gh', 'release', 'create', tag, '--draft', '--title', release_tag, '-F', '-'],
                 input=release_notes,
                 text=True,
                 check=True
                 )
    
def update_news_file(release_notes, tag, release_date):
    """
    Updates the website/news.rst file with the release notes.
    """
    date_str = release_date.strftime("%B %e, %Y")
    section_title = f"{date_str} - OpenEXR {tag} Released"

    result = run(['git', 'show', f"HEAD:website/news.rst"], stdout=PIPE, stderr=PIPE, universal_newlines=True)
    content = result.stdout

    # Remove existing latestNews directives
    content = re.sub(r'\.\. _LatestNewsStart:\n', '', content, flags=re.DOTALL)
    content = re.sub(r'\.\. _LatestNewsEnd:\n', '', content, flags=re.DOTALL)

    old_news = content.split('   :caption: News')
    
    # Insert the new section
    new_section = f"{section_title}\n{'=' * len(section_title)}\n\n.. _LatestNewsStart\n\n{release_notes}\n_LatestNewsStart\n\n"

    content = f"{old_news[0]}   :caption: News\n\n{new_section}\n{old_news[1]}"
    
    with open('website/news.rst', 'w') as f:
        f.write(content)

def markdown_to_html(markdown_text):
    """
    Convert markdown content to HTML.
    """

    result = run(
        ['pandoc', '-f', 'markdown', '-t', 'html'],  # pandoc command to convert markdown to html
        input=markdown_text,                         # pass markdown_text as stdin
        text=True,                                   # treat input and output as strings (not bytes)
        capture_output=True                          # capture the output
    )

    html = f"<style> body {{ line-height: 1.0; margin: 0; padding: 0; }} p, h1, h2, h3, h4, h5, h6 {{ margin: 0; padding: 0; }} </style> {result.stdout}"
    
    return html


def convert_to_html(release_notes):
    """
    Convert release notes to HTML format.
    """
    notes = release_notes.replace('\n', '<br>')
    html_content = f"<h2>Release Notes</h2><p>{notes}</p>"
    return html_content

def main():
    if len(sys.argv) < 3:
        print("Usage: python release.py <notes|news|draft|candidate> <tag> [date]")
        sys.exit(1)

    action = sys.argv[1]
    tag = sys.argv[2]
#    release_date = datetime.strptime(sys.argv[3], "%Y-%m-%d") if len(sys.argv) == 4 else datetime.datetime.now()

    # Strip leading 'v' and trailing '-rc<candidate>' if necessary
    base_tag = tag.lstrip('v').split('-rc')[0]
    
    # Get the content of the CHANGES.md at the specified git tag
    try:
        result = run(['git', 'show', f"{tag}:CHANGES.md"], stdout=PIPE, stderr=PIPE, universal_newlines=True)
        content = result.stdout
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)

    # Extract the release notes
    release_date, release_notes = extract_section(content, base_tag)
    if release_date == None:
        print("No release found.")
        return
    
    if action == "notes":
        print(release_notes)

    elif action == "draft":
        create_draft_release(tag, release_notes)

    elif action == "news":
        rst_text = markdown_to_rst(release_notes)
        update_news_file(rst_text, base_tag, release_date)

    elif action == "candidate":
        version = base_tag
        html_notes = markdown_to_html(release_notes)
        date_string = release_date.strftime("%A, %B %e")
        print(f"OpenEXR {version} is staged for release at tag <a href=https://github.com/AcademySoftwareFoundation/openexr/releases/tag/{tag}>{tag}</a> and will be released officially {date_string} barring any issues. <br><br> {html_notes}")

if __name__ == "__main__":
    main()
