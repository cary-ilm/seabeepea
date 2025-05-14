(global-font-lock-mode t)

(setq compile-command "cmk ")

;;(setq frame-background-mode `dark)
;; Always insert spaces, never tabs.
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 8)

(setq find-file-existing-other-name t)  ; goto buffer with same name
(setq mouse-yank-at-point t)		; rather than yanking at mouse click
(setq text-mode-hook 'turn-on-auto-fill)
(setq inhibit-startup-message t)
(put 'eval-expression 'disabled nil)
(put 'suspend-emacs 'disabled nil)

(setq dabbrev-case-replace nil)
(setq dabbrev-case-fold-search t)

;; Enable line wrapping in SuSE Emacs.
(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)
;;
;; minibuffer stuff
;;

(display-time)
(define-key minibuffer-local-completion-map " " 'minibuffer-complete)
(define-key minibuffer-local-completion-map "\t" 'minibuffer-complete-word)
(define-key minibuffer-local-must-match-map " " 'minibuffer-complete)
(define-key minibuffer-local-must-match-map "\t" 'minibuffer-complete-word)
(put 'minibuffer-complete-and-exit 'disabled nil)


;;
;; key bindings
;;

;(global-unset-key "\Xm")

(global-set-key '[f6] 'split-window-horizontally)

(global-set-key "\M-g" 'goto-line)
(global-set-key "\^X\^L" 'what-line)
(global-set-key "\^X\^B" 'buffer-menu)
(global-set-key "\^X\^E" 'compile)
(global-set-key "\^X\^N" 'next-error)
(global-set-key "\^C+" 'c++-mode)
(global-set-key "\^X\^D" 'gdb)
(global-set-key "\^]" 'enlarge-window)
(global-set-key "\^Xq" 'toggle-read-only)

(global-set-key "\C-A" 'beginning-of-line)
(global-set-key "\C-B" 'backward-char)
(global-set-key "\C-D" 'delete-char)
(global-set-key "\C-E" 'end-of-line)
(global-set-key "\C-F" 'forward-char)

(global-set-key "\ef" 'forward-word)
(global-set-key "\eh" 'backward-word)
(global-set-key "\en" 'next-line)
(global-set-key "\ep" 'previous-line)
(global-set-key "\ek" 'kill-line)

(global-set-key "\C-H" 'backward-char)

(global-set-key "\C-J" 'newline-and-indent)
(global-set-key "\C-K" 'kill-line)
(global-set-key "\C-L" 'recenter)
(global-set-key "\C-M" 'newline)
(global-set-key "\C-N" 'next-line) 
(global-set-key "\C-O" 'open-line)
(global-set-key "\C-P" 'previous-line)
(global-set-key "\C-Q" 'quoted-insert)
(global-set-key "\C-R" 'isearch-backward)
(global-set-key "\C-S" 'isearch-forward-regexp)
(global-set-key "\C-T" 'goto-line)
(global-set-key "\C-U" 'universal-argument)
(global-set-key "\C-V" 'scroll-up)
(global-set-key "\C-W" 'kill-region)
(global-set-key "\C-Y" 'yank)
(global-set-key "\C-Z" 'scroll-one-line-up)

(global-set-key "\C-Xd" 'delete-window)
(global-set-key "\C-Xf" 'fill-paragraph)
(global-set-key "\C-xl" 'set-left-margin)
(global-set-key "\C-Xn" 'point-to-next-window)
(global-set-key "\C-Xo" 'switch-to-old-buffer)
(global-set-key "\C-Xp" 'point-to-previous-window)
(global-set-key "\C-Xt" 'find-tag-other-window)
(global-set-key "\C-Xu" 'capitalize-word)
(global-set-key "\C-X0" 'kill-buffer-and-window)

(global-set-key "\C-Xc" 'compare-windows)

(global-set-key "\C-Xg" 'abort-recursive-edit)

(global-set-key "\C-X\C-E" 'compile)
(global-set-key "\C-X\C-G" 'grep)
(global-set-key "\C-X\C-K" 'kill-entire-line)
(global-set-key "\C-X\C-N" 'next-error)
(global-set-key "\C-X\C-O" 'switch-to-buffer)
(global-set-key "\C-X\C-Q" 'p4-edit)
(global-set-key "\C-X\C-U" 'undo)
(global-set-key "\C-X\C-V" 'find-file-other-window)
(global-set-key "\C-X." 'delete-right-space)

(global-set-key "\C-X\C-I" 'my-insert-copyright)

(global-set-key "\e\C-Y" 'insert-buffer)
(global-set-key "\ec" 'cap-word)
(global-set-key "\el" 'down-word)
(global-set-key "\eq" 'query-replace)
(global-set-key "\er" 'replace-string)
(global-set-key "\eR" 'revert-buffer)
(global-set-key "\es" 'shell)
(global-set-key "\eu" 'up-word)
(global-set-key "\ez" 'scroll-one-line-down)
(global-set-key "\e<" 'beginning-of-buffer)
(global-set-key "\e>" 'end-of-buffer)
(global-set-key "\e," 'beginning-of-window)
(global-set-key "\e." 'end-of-window)
(global-set-key "\e?" 'apropos)
(global-set-key "\e!" 'line-to-top-of-window)
(global-set-key "\e@" 'line-to-bottom-of-window)
(global-set-key "\e=" 'query-goto-line)
(global-set-key "\e " 'set-mark-command)
(global-set-key "\eq" 'query-replace-regexp)
(global-set-key "\er" 'replace-regexp)
(global-set-key "\e\t" 'indent-region)

(defun find-h-file ()
  "Find the .h file for this .C file (or vice versa)."
  (interactive)
  (let ((dotc (string-match "[.]cpp$" (buffer-name)))
	(doth (string-match "[.]h$" (buffer-name))))
    (if dotc
	(find-file (concat (substring (buffer-name) 0 dotc) ".h"))
      (if doth
	  (find-file (concat (substring (buffer-name) 0 doth) ".cpp"))
	(message "Not a C or h file!!")))))

(global-set-key "\^Xh" 'find-h-file)


(setq py-indent-offset 4)

(setq interpreter-mode-alist (append '(("python" . python-mode)
				       ("python3.7" . python-mode)
				       ("python2"   . python-mode)
				       ("python2.3" . python-mode)
				       ("python1.5" . python-mode)
				       ("irbatch" . python-mode)
				       ("zenobatch" . python-mode))
				     interpreter-mode-alist))


;;
;; auto mode stuff
;;

(setq auto-mode-alist
      (append
       (list
	(quote ("\\.C$"		. c++-mode))
	(quote ("\\.C.[0-9]+$"	. c++-mode))
	(quote ("\\.C#[0-9]+$"	. c++-mode))
	(quote ("\\.cpp$"	. c++-mode))
	(quote ("\\.cpp.[0-9]+$" . c++-mode))
	(quote ("\\.cpp#[0-9]+$" . c++-mode))
	(quote ("\\.h$"		. c++-mode))
	(quote ("\\.Th$"	. c++-mode))
	(quote ("\\.c\\+\\+$"	. c++-mode))
	(quote ("\\.H$"		. c++-mode))
	(quote ("\\.cmd$"	. c++-mode))
	(quote ("\\.y$"		. text-mode))
	(quote ("\\.l$"		. text-mode))
	(quote ("\\.0$"		. text-mode))
	(quote ("\\.rst$"	. rst-mode))
	(quote ("\\.txt$"	. rst-mode))
	(quote ("README"	. rst-mode))
	(quote ("\\.tar$"	. tar-mode))
	(quote ("IFLEditor.*"   . python-mode))
	)
       auto-mode-alist
       )
      )

;;
;; c/c++ hooks
;;

;(defconst emacs-lisp-mode-hook
;  '(lambda ()
;n     (run-hooks 'text-mode-hook)
;     (font-lock-mode)))

(defun my-c++-mode-hook ()
     (run-hooks 'c-mode-hook)
     (local-set-key "\C-c=" 'c++-align-assign)
     (local-set-key "\C-c\"" 'my-c++-stringize-region)
     (local-set-key "\C-c8" 'my-make-get-set-methods)
     (local-set-key "\C-c9" 'my-def-from-decl)
     (setq c++-friend-offset 0)
     (setq c++-member-init-indent 4)
     (setq c++-hanging-member-init-colon 'before)
     (setq c++-comment-only-line-offset  0)
     (setq c++-untame-characters         nil)
     (setq c++-tab-always-indent         nil)
     (setq c-basic-offset 4)
     (setq fill-column 77)
     (auto-fill-mode 1)
)

(defun my-c-mode-hook ()
     (run-hooks 'text-mode-hook)
     (setq fill-column 70)
     (setq c-tab-always-indent nil)
     (setq c-insert-tab-function 'tab-to-tab-stop)
     (setq c-basic-offset 4)
     (setq cpp-face-default-list
       '(("gray" background-color . "Grey")
         ("light-gray" background-color . "light gray")
         ("blue" background-color . "light blue")
         ("cyan" background-color . "light cyan")
         ("yellow" background-color . "light yellow")
         ("pink" background-color . "light pink")
         ("greenish" background-color . "pale green")
         ("beige" background-color . "beige")
         ("orange" background-color . "orange")
         ("magenta" background-color . "magenta")
         ("violet" background-color . "violet")
         ("medium purple" background-color . "medium purple")
         ("turquoise" background-color . "turquoise")
         ("default" . default)
         ("invisible" . invisible)))
     (setq c-offsets-alist
           '((string . -1000)
             (c . c-lineup-C-comments)
             (defun-open . 0)
             (defun-close . 0)
             (defun-block-intro . +)
             (class-open . 0)
             (class-close . 0)
             (inline-open . +)
             (inline-close . 0)
             (func-decl-cont . +)
             (knr-argdecl-intro . 5)
             (knr-argdecl . 0)
             (topmost-intro . 0)
             (topmost-intro-cont . 0)
             (member-init-intro . +)
             (member-init-cont . 0)
             (inher-intro . +)
             (inher-cont . c-lineup-multi-inher)
             (block-open . 0)
             (block-close . 0)
             (brace-list-open . 0)
             (brace-list-close . 0)
             (brace-list-intro . +)
             (brace-list-entry . 0)
             (statement . 0)
             (statement-cont . +)
             (statement-block-intro . +)
             (statement-case-intro . +)
             (statement-case-open . +)
             (substatement . +)
             (substatement-open . 0)
             (case-label . *)
             (access-label . /)
             (label . *)
             (do-while-closure . 0)
             (else-clause . 0)
             (comment-intro . c-lineup-comment)
             (arglist-intro . c-lineup-arglist-intro-after-paren)
             (arglist-cont . 0)
             (arglist-cont-nonempty . c-lineup-arglist)
             (arglist-close . c-lineup-arglist)
             (stream-op . c-lineup-streamop)
             (inclass . +)
             (cpp-macro . -1000)
             (friend . 0)
             (extern-lang-open . 0)
             (extern-lang-close . 0)
             (inextern-lang . 0)
             (namespace-open . 0)
             (namespace-close . 0)
             (innamespace . 0)
             (template-args-cont . +)))    
     (setq truncate-lines t)
     (auto-fill-mode 1)
     (line-number-mode 1)
;;     (add-my-menu-buttons)
     (font-lock-mode)
)

(setq c-mode-hook 'my-c-mode-hook)
(setq c++-mode-hook 'my-c++-mode-hook)


;;
;;  functions
;;

(defun forward-paren ()
  "Move past next matching parens (brackets, braces)."
  (interactive)
  (condition-case ()
      (forward-list)
    (error (up-list 1)))
)
(global-set-key "\e)" 'forward-paren)

(defun backward-paren ()
  "Move before previous matching parens (brackets, braces)."
  (interactive)
  (condition-case ()
      (backward-list)
    (error (up-list -1)))
)
(global-set-key "\e(" 'backward-paren)

(defun Next-line (arg)
  "Move to next line unless at end of buffer."
  (interactive "p")
  (if (not (eobp))
      (next-line arg))
  (setq this-command 'next-line))
(global-set-key "\^N" 'Next-line)

(defun revert-buffer-force()
  "Call revert-buffer and don't ask which file to use"
  (interactive)
  (revert-buffer t t))
(global-set-key "\^X\R" 'revert-buffer-force)

(defun my-c++-stringize-current-line (doit)
  "Backslashifies current line."
  (forward-to-indentation 0)
  (cond
   (doit
    (if (not (looking-at "\""))
	(insert "\""))
    (end-of-line)
    (if (not (save-excursion (forward-char -1) (looking-at "\"")))
	(insert "\\n\"")))
   (t
    (if (looking-at "\"")
	(delete-char 1))
    (end-of-line)
    (if (save-excursion (forward-char -3) (looking-at "\\\\n\""))
	(backward-delete-char-untabify 3)
      (if (save-excursion (forward-char -1) (looking-at "\""))
	  (backward-delete-char-untabify 1))))))

(defun my-c++-stringize-region (from to arg)
  "Convert region into a string constant.  If called with a prefix argument,
it will unconvert."
  (interactive "r\nP")
  (save-excursion
    (goto-char from)
    (let ((line (count-lines (point-min) (point)))
	  (to-line (save-excursion (goto-char to)
				   (count-lines (point-min) (point)))))
      (while (< line to-line)
	(my-c++-stringize-current-line (null arg))
	(forward-line 1) (setq line (1+ line)))
      (if (null arg)
	  (progn
	    (forward-line -1)
	    (end-of-line)
	    (forward-char -3)
	    (if (looking-at "\\\\n\"")
		(delete-char 2)))))))

;; Change a C++ variable declaration to a get and set macro
(defun my-make-get-set-methods (arg)
  "Change a C++ variable declaration to a get and set macro.
With prefix arg, inline these declarations."
  (interactive "P")
  (beginning-of-line)
  (delete-horizontal-space)
  (let ((type (concat (if arg "const " "")
		      (buffer-substring (point)
					(progn 
					  (end-of-line)
					  (forward-word -1)
					  (delete-horizontal-space)
					  (point)))
		      (if arg " &" " ")))
	(name (buffer-substring (point)
				(progn 
				  (end-of-line)
				  (1- (point)))))
	(tab "	"))
    (beginning-of-line)
    (kill-line 1)
    (let ((Name (my-capitalize-first-letter name))
	  (n    (substring name 0 1)))
      (insert "    " type tab "get" Name "() const {return " name ";}")
      (newline)
      (insert "    void" tab (if arg tab "") "set" Name "(" type n ");")
      (newline)
)))

;; Change a C++ function declaration to a function definition
(defun my-def-from-decl nil
  "Change a C++ function declaration to a function definition."
  (interactive)
  (beginning-of-line)
;  (insert "//")
;  (insert-char ?- 77)
;  (newline)
  (if (looking-at "[ \t\n]*\\(static\\|virtual\\)[ \t\n]*")
      (kill-word 1))
  (delete-horizontal-space)
  (search-forward "(")
  (forward-word -1)
  (delete-horizontal-space)
  (insert
   "\n"
   (save-excursion
     (cond
      ((re-search-backward "^[a-zA-Z0-9]*::" nil t)
       (buffer-substring (point) (progn (forward-word 1) (point))))
      ((re-search-forward  "^[a-zA-Z0-9]*::" nil t)
       (buffer-substring (progn (beginning-of-line) (point))
			 (progn (forward-word 1) (point))))
      (1 "")))
   "::")
  (search-forward ";")
  (delete-char -1)
  (insert "\n{\n}\n")
  (next-line 1)
)


(defun set-left-margin (arg)
"Set left-margin to the current column, or to argument if given.
left-margin's value is separate for each buffer."
  (interactive "P")
  (setq left-margin (if (integerp arg) arg (current-column)))
  (message "left-margin set to %d" left-margin))

(defun cap-word () "Capitalize previous word"
  (interactive)
  (if (bowp)
      (progn (capitalize-word 1) (forward-word -1))
    (capitalize-word -1)))

(defun down-word () "Lower case previous word"
  (interactive)
  (if (bowp)
      (progn (downcase-word 1) (forward-word -1))
    (downcase-word -1)))

(defun up-word () "Upper case previous word"
  (interactive)
  (if (bowp)
      (progn (upcase-word 1) (forward-word -1))
    (upcase-word -1)))

(defun window-count () "Return the number of windows on the screen"
  (let ((start-w (selected-window))
	(done nil)
	(w (next-window (selected-window)))
	(count 1))
	(while (not (eq w start-w))
	  (setq w (next-window w))
	  (setq count (1+ count)))
	count))

(defun kill-buffer-and-window ()
  "Delete the buffer and the window"
  (interactive)
  (kill-buffer (current-buffer))
  (if (not (= (window-count) 1))
      (delete-window)))

(defun backward-kill-line ()
  "Delete from the beginning of the line to the cursor"
  (interactive)
  (kill-region (point) (progn (beginning-of-line) (point))))

(defun beginning-of-window ()
  "Move the point to the beginning of the first line in the window"
  (interactive)
  (goto-char (window-start)))

(defun end-of-window ()
  "Move the point to the beginning of the last line in the window"
  (interactive)
  (goto-char (window-start))
  (vertical-motion (- (window-height) 2)))

(defun scroll-one-line-up (&optional arg)
  "Scroll the selected window up (forward in the text) one line (or N lines)."
  (interactive "p")
  (scroll-up (or arg 1)))

(defun scroll-one-line-down (&optional arg)
  "Scroll the selected window down (backward in the text) one line (or N)."
  (interactive "p")
  (scroll-down (or arg 1)))

(defun line-to-top-of-window ()
  "Scroll the selected window up so that the current line is at the top."
  (interactive)
  (recenter 0))

(defun line-to-bottom-of-window ()
  "Scroll the selected window down so that the current line is at the bottom."
  (interactive)
  (recenter (- (window-height) 2)))

(defun point-to-previous-window ()
  "Select the window above or to the left of the window now selected.
From the window at the upper left corner, select the one at the lower right."
  (interactive)
  (select-window (previous-window)))

(defun point-to-next-window ()
  "Select the window below or to the right of the window now selected.
From the window at the lower right corner, select the one at the upper left."
  (interactive)
  (select-window (next-window)))

(defun my-transpose-chars ()
  "Transpose characters without moving the cursor."
  (interactive)
  (backward-char)
  (transpose-chars ()))

(defun query-goto-line (&optional arg)
  "If an argument is given, go to that line.  Otherwise prompt for the
argument.  If a non-integer is entered, just show the current line number."
  (interactive "P")
  (if arg
    (goto-line arg)
    (progn
      (let* (line)
	(setq line (string-to-int (read-string "Line ")))
	(if (> line 0)
	    (goto-line line)))))
	  
  (what-line))  

(defun kill-entire-line (&optional arg)
  "Kill the entire line (including the newline) regardless of the location
of the cursor.  If an argument is given, kill that many lines."
  (interactive "P")
  (if (null arg) (setq arg 1))
  (beginning-of-line)
  (kill-line arg))


(defun bowp () nil
  (let* (pos)
    (setq pos (point))
    (forward-word 1) (forward-word -1) 
    (let* (rc)
      (setq rc (= (point) pos))
      (goto-char pos)
      rc)))

(defun switch-to-old-buffer (buffer) ""
  (interactive "bSwitch to old buffer: ")
  (switch-to-buffer buffer))

(defun delete-right-space ()
  "Delete all spaces and tabs to the right of point."
  (interactive "*")
  (delete-region (point) (progn (skip-chars-forward " \t") (point))))

(defvar havent-added-menu-buttons t)

(defun add-my-menu-buttons ()
  "something"
  (if havent-added-menu-buttons
      (progn
	(setq havent-added-menu-buttons nil)
	(define-key-after c-c++-menu [cpp-highlight-it] 
	  '("Highlight CPP Conditionals" . cpp-highlight-buffer) 
	  'Fill\ Comment\ Paragraph)
	(define-key-after c-c++-menu [syntax-it] 
	  '("Syntax at point" . c-show-syntactic-information) 
	  'Fill\ Comment\ Paragraph)
	(define-key-after c-c++-menu [ii-it] 
	  '("Show template instantiations" . showii) 
	  'Fill\ Comment\ Paragraph)
	(define-key-after c-c++-menu [dis-it] 
	  '("Disassemble .C file" . dis-C-file) 
	  'Fill\ Comment\ Paragraph)
	(define-key-after c-c++-menu [me-clean] 
	  '("Clean Whitespaces/Semicolons" . clean-C-code) 
	  'Fill\ Comment\ Paragraph)
	(define-key-after c-c++-menu [demangle] 
	  '("Demangle Region" . demangle-region) 
	  'Fill\ Comment\ Paragraph)
	(define-key-after c-c++-menu [c++-sep9] '("----" . nil) 
	  'Fill\ Comment\ Paragraph))))

(defun sg-format ()
  "Format a buffer containing an sg file"
  (interactive)
  (beginning-of-buffer)
  (replace-regexp "{" "\^J{")
  (beginning-of-buffer)
  (replace-regexp "{" "(")
  (beginning-of-buffer)
  (replace-regexp "}" ")")
  (lisp-mode)
  (indent-region (point-min) (point-max) nil)
  (text-mode)
  (beginning-of-buffer)
  (replace-regexp "(" "{")
  (beginning-of-buffer)
  (replace-regexp ")" "}"))

(defun hack ()
"Provides write permission for this file."
  (interactive)
  (let ((dir default-directory)
	(fname (file-name-nondirectory buffer-file-name)))
    (save-window-excursion
      (if (buffer-modified-p)
	  (if (not (yes-or-no-p 
		    (format "Buffer %s is modified; hack anyway? "
			    (buffer-name))))
	      (error "hack aborted")))
      (set-buffer (get-buffer-create "*hack output*"))
      (bury-buffer (current-buffer))
      (erase-buffer)
      (setq default-directory dir)
      (display-buffer (current-buffer))
      (if (not 
	   (equal 0 
		  (call-process "hack" nil "*hack output*" nil 
				fname)))
	  ;; something wrong
	  (progn
	    (pop-to-buffer "*hack output*")
	    (message "Error during <hack>!  Hit any key...")
	    (read-char)
	    (error "Hack of %s aborted" fname)))
      )
    (revert-buffer t t)
    (message (concat  fname " hacked"))
    ))


(defun unhack ()
"Removes write permission for this file."
  (interactive)
  (let ((dir default-directory)
	(fname (file-name-nondirectory buffer-file-name)))
    (save-window-excursion
      (if (buffer-modified-p)
	  (if (not (yes-or-no-p 
		    (format "Buffer %s is modified; unhack anyway? "
			    (buffer-name))))
	      (error "hack aborted")))
      (set-buffer (get-buffer-create "*hack output*"))
      (bury-buffer (current-buffer))
      (erase-buffer)
      (setq default-directory dir)
      (display-buffer (current-buffer))
      (if (not 
	   (equal 0 
		  (call-process "chmod" nil "*hack output*" nil 
				"-w" fname)))
	  ;; something wrong
	  (progn
	    (pop-to-buffer "*hack output*")
	    (message "Error during <unhack>!  Hit any key...")
	    (read-char)
	    (error "Hack of %s aborted" fname)))
      )
    (revert-buffer t t)
    (message (concat  fname " unhacked"))
    ))

(defun my-insert-copyright ()
  "Insert the Lucasfilm copyright notice"
  (interactive)
  (insert "//-----------------------------------------------------------------------------\n"
"//\n"
"//  Copyright (c) 2007 Lucasfilm Entertainment Company Ltd.\n"
"//  All rights reserved.   Used under authorization.\n"
"//  This material contains the confidential and proprietary\n"
"//  information of Lucasfilm Entertainment Company and\n"
"//  may not be copied in whole or in part without the express\n"
"//  written permission of Lucasfilm Entertainment Company.\n"
"//  This copyright notice does not imply publication.\n"
"//\n"
"//-----------------------------------------------------------------------------\n"))






