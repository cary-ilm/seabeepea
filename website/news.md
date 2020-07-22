# OpenEXR News

## June 15, 2020 - OpenEXR version v2.5.2 is released.

Available for download at
https://github.com/AcademySoftwareFoundation/openexr/releases/tag/v2.5.2

Patch release with various bug/security and build/install fixes:

* Invalid input could cause a heap-use-after-free error in
  DeepScanLineInputFile::DeepScanLineInputFile()

* Invalid chunkCount attributes could cause heap buffer overflow in
  getChunkOffsetTableSize()

* Invalid tiled input file could cause invalid memory access
  TiledInputFile::TiledInputFile()

* OpenEXRConfig.h now correctly sets OPENEXR_PACKAGE_STRING to
  "OpenEXR" (rather than "IlmBase")

* Various Windows build fixes

## June 15, 2020 - OpenEXR version v2.4.2 is released.

Available for download at
https://github.com/AcademySoftwareFoundation/openexr/releases/tag/v2.4.2

Patch release that backports various recent bug/security fixes:

* Invalid input could cause a heap-use-after-free error in
  DeepScanLineInputFile::DeepScanLineInputFile()

* Invalid chunkCount attributes could cause heap buffer overflow in
  getChunkOffsetTableSize()

* Invalid tiled input file could cause invalid memory access
  TiledInputFile::TiledInputFile()

* OpenEXRConfig.h now correctly sets OPENEXR_PACKAGE_STRING to
  "OpenEXR" (rather than "IlmBase)"


## May 11, 2020 - OpenEXR version v2.5.1 is released.

Available for download at
https://github.com/AcademySoftwareFoundation/openexr/releases/tag/v2.5.1

v2.5.1 is a patch release that corrects the SO version for the v2.5
release, which missed getting bumped in v2.5.0.

This release also fixes an improper failure in IlmImfTest when running
on ARMv7 and AAarch64.

## May 6, 2020 - OpenEXR version v2.5.0 is released.

Available for download at
https://github.com/AcademySoftwareFoundation/openexr/releases/tag/v2.5.0

This is a minor release with miscellaneous bug fixes and small
features.

Summary:

* No more build-time header generation: toFloat.h, eLut.h,
  b44ExpLogTable.h, and dwaLookups.h are now ordinary header files, no
  longer generated on the fly.

* New StdISSTream class, an "input" stringstream version of
  StdOSStream

* New Matrix22 class in Imath

* Chromaticity comparison operator now includes white (formerly
  ignored)

* Various cmake fixes

* Bug fixes for various memory leaks

* Bug fixes for various invalid memory accesses

* New checks to detect damaged input files

* OpenEXR_Viewers has been deprecated, removed from the top-level
  cmake build and documentation.

* See the release notes for more details.

## April 30, 2020 - OpenEXR version v2.2.2 is released

Available for download at
https://github.com/AcademySoftwareFoundation/openexr/releases/tag/v2.2.2

This is a patch release of OpenEXR v2.2 that includes fixes for the following security vulnerabilities:

* [CVE-2020-11765] There is an off-by-one error in use of the ImfXdr.h
  read function by DwaCompressor::Classifier::Classifier, leading to
  an out-of-bounds read.

* [CVE-2020-11764] There is an out-of-bounds write in
  copyIntoFrameBuffer in ImfMisc.cpp.

* [CVE-2020-11763] There is an std::vector out-of-bounds read and
  write, as demonstrated by ImfTileOffsets.cpp.

* [CVE-2020-11762] There is an out-of-bounds read and write in
  DwaCompressor::uncompress in ImfDwaCompressor.cpp when handling the
  UNKNOWN compression case.

* [CVE-2020-11761] There is an out-of-bounds read during Huffman
  uncompression, as demonstrated by FastHufDecoder::refill in
  ImfFastHuf.cpp.

* [CVE-2020-11760] There is an out-of-bounds read during RLE
  uncompression in rleUncompress in ImfRle.cpp.

* [CVE-2020-11759] Because of integer overflows in
  CompositeDeepScanLine::Data::handleDeepFrameBuffer and
  readSampleCountForLineBlock, an attacker can write to an
  out-of-bounds pointer.

* [CVE-2020-11758](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-11758)
  There is an out-of-bounds read in ImfOptimizedPixelReading.h.

See the CHANGES.md for more details.

## Feb 11, 2020 - OpenEXR version v2.4.1 is released.

Available for download at
https://github.com/AcademySoftwareFoundation/openexr/releases/tag/v2.4.1

This is a patch release that addresses miscellaneous bugs.

Summary:

* Various fixes for memory leaks and invalid memory accesses

* Various fixes for integer overflow with large images.

* Various cmake fixes for build/install of python modules.

* ImfMisc.h is no longer installed, since it's a private header.

## Sep 19, 2019 - OpenEXR version v2.4.0 is released.

Available for download at
https://github.com/AcademySoftwareFoundation/openexr/releases/tag/v2.4.0

This release contains no major new functionality, although it does
include many miscellaneous bug and security fixes. The major new
feature is a completely rewritten CMake setup, which should work
reliably on Linux, macOS, and Windows. The installation instructions
and project documentation are also freshly revised. See the release
notes for the complete details.

The project also now supports continuous integration via Azure
Pipelines and code analysis via SonarCloud, services supported by the
Academy Software Foundation. Links to the dashboards are through
the"Azure Pipelines" and "quality gate" badges at the top the GitHub
repo home page.

Summary of changes:

* Completely re-written CMake configuration files

* Improved support for building on Windows, via CMake

* Improved support for building on macOS, via CMake

* All code compiles without warnings on gcc, clang, msvc

* Cleanup of license and copyright notices

* floating-point exception handling is disabled by default

* New Slice::Make method to reliably compute base pointer for a slice.

* Miscellaneous bug fixes

* This version fixes the following security vulnerabilities:

  * CVE-2018-18444 Issue #351 Out of Memory
  * CVE-2018-18443 Issue #350 heap-buffer-overflow


## Sep 5, 2019 - OpenEXR version v2.4.0-beta.1 is released

Available for download at
https://github.com/AcademySoftwareFoundation/openexr/releases/tag/v2.4.0-beta.1

This release contains no major new functionality, although it does
include many miscellaneous bug and security fixes. The major new
feature is a completely rewritten CMake setup, which should work
reliably on Linux, macOS, and Windows. The installation instructions
and project documentation are also freshly revised. See the release
notes for the complete details.

The project also now supports continuous integration via Azure
Pipelines and code analysis via SonarCloud, services supported by the
Academy Software Foundation. Links to the dashboards are through
the"Azure Pipelines" and "quality gate" badges at the top the GitHub
repo home page.

Summary of changes:

* Completely re-written CMake configuration files

* Improved support for building on Windows, via CMake

* Improved support for building on macOS, via CMake

* All code compiles without warnings on gcc, clang, msvc

* Cleanup of license and copyright notices

* floating-point exception handling is disabled by default

* New Slice::Make method to reliably compute base pointer for a slice.

* Miscellaneous bug fixes

* This version fixes the following security vulnerabilities:

  * CVE-2018-18444 Issue #351 Out of Memory

  * CVE-2018-18443 Issue #350 heap-buffer-overflow

## May 1, 2019 - OpenEXR has been adopted by the Academy Software Foundation.

## August 13, 2018 - OpenEXR v2.3.0 is released.

Features/Improvements:

* ThreadPool overhead improvements, enable custom thread pool to be registered via ThreadPoolProvider class

* Fixes to enable custom namespaces for Iex, Imf

* Improve read performance for deep/zipped data, and SIMD-accelerated
  uncompress support

* Added rawPixelDataToBuffer() function for access to compressed
  scanlines

* Iex::BaseExc no longer derived from std::string.

* Imath throw() specifiers removed

* Initial Support for Python 3

Bugs:

* 25+ various bug fixes (see detailed Release Notes for the full list)

Build Fixes:

  * Various fixes to the cmake and autoconf build infrastructures

  * Various changes to support compiling for C++11 / C++14 / C++17 and
    GCC 6.3.1

  * Various fixes to address Windows build issues

  * 60+ total build-related fixes (see detailed Release Notes for the
    full list)

Full release notes are here:

https://github.com/AcademySoftwareFoundation/openexr/blob/develop/CHANGES.md

OpenEXR source can be obtained from the downloads section of
www.openexr.com or from the project page on github:
https://github.com/AcademySoftwareFoundation/openexr

## November 30, 2017 - OpenEXR v2.2.1 has been released and is available for download.

This maintenance release addresses the reported OpenEXR security
vulnerabilities, specifically CVE-2017-9110, CVE-2017-9111,
CVE-2017-9112, CVE-2017-9113, CVE-2017-9114, CVE-2017-9115,
CVE-2017-9116.

OpenEXR source can be obtained from the downloads section of
www.openexr.com or from the project page on github:
https://github.com/AcademySoftwareFoundation/openexr

## August 10, 2014 - OpenEXR v2.2.0 has been released.

This release includes the following components:

* OpenEXR: v2.2.0

* IlmBase: v2.2.0

* PyIlmBase: v2.2.0

* OpenEXR_Viewers: v2.2.0

The significant new features of this release include:

* DreamWorks Lossy Compression - A new high quality, high performance
  lossy compression codec contributed by DreamWorks Animation. This
  codec allows control over variable lossiness to balance visual
  quality and file size.

* This contribution also includes performance improvements that speed
  up the PIZ codec.

* IlmImfUtil A new library intended to aid in development of image
  file manipulation utilities that support the many types of OpenEXR
  images.

* This release also includes improvements to cross-platform build
  support using CMake.

OpenEXR source can be obtained from the downloads section of
www.openexr.com or from the project page on github:
https://github.com/AcademySoftwareFoundation/openexr

## November 25, 2013 - OpenEXR v2.1.0 has been released.

This release includes the following components (version locked):

* OpenEXR: v2.1.0

* IlmBase: v2.1.0

* PyIlmBase: v2.1.0

* OpenEXR_Viewers: v2.1.0

This release includes a refactoring of the optimised read paths for
RGBA data, optimisations for some of the python bindings to Imath,
improvements to the cmake build environment as well as additional
documentation describing deep data in more detail.

## April 9, 2013 - Industrial Light & Magic (ILM) and Weta Digital announce the release of OpenEXR 2.0.

This is a major version update of the open source high dynamic range
file format first introduced by ILM and maintained and expanded by a
number of key industry leaders including Weta Digital, Pixar Animation
Studios, Autodesk and others.

The release includes a number of new features that align with the
major version number increase. Amongst the major improvements are:

* Deep Data support - Pixels can now store a variable-length list of
  samples. The main rationale behind deep images is to enable the
  storage of multiple values at different depths for each
  pixel. OpenEXR 2.0 supports both hard-surface and volumetric
  representations for Deep Compositing workflows.

* Multi-part Image Files - With OpenEXR 2.0, files can now contain a
  number of separate, but related, data parts in one file. Access to
  any part is independent of the others, pixels from parts that are
  not required in the current operation don't need to be accessed,
  resulting in quicker read times when accessing only a subset of
  channels. The multipart interface also incorporates support for
  Stereo images where views are stored in separate parts. This makes
  stereo OpenEXR 2.0 files significantly faster to work with than the
  previous multiview support in OpenEXR.

* Optimized pixel reading - decoding RGB(A) scanline images has been
  accelerated on SSE processors providing a significant speedup when
  reading both old and new format images, including multipart and
  multiview files.

* Namespacing - The library introduces versioned namespaces to avoid
  conflicts between packages compiled with different versions of the
  library.

Although OpenEXR 2.0 is a major version update, files created by the
new library that don't exercise the new feature set are completely
backwards compatible with previous versions of the library. By using
the OpenEXR 2.0 library, performance improvements, namespace versions
and basic multi-part/deep reading support should be available to
applications without code modifications.

This code is designed to support Deep Compositing - a revolutionary
compositing workflow developed at Weta Digital that detached the
rendering of different elements in scene. In particular, changes in
one layer could be rendered separately without the need to re-render
other layers that would be required to handle holdouts in a
traditional comp workflow or sorting of layers in complex scenes with
elements moving in depth. Deep Compositing became the primary
compositing workflow on Avatar and has seen wide industry
adoption. The technique allows depth and color value to be stored for
every pixel in a scene allowing for much more efficient handling of
large complex scenes and greater freedom for artists to iterate.

True to the open source ethos, a number of companies contributed to
support the format and encourage adoption. Amongst others, Pixar
Animation Studios has contributed its DtexToExr converter to the
OpenEXR repository under a Microsoft Public License, which clears any
concerns about existing patents in the area, and Autodesk provided
performance optimizations geared towards real-time post-production
workflows.

Extensive effort has been put in ensuring all requirements were met to
help a wide adoption, staying true to the wide success of
OpenEXR. Many software companies were involved in the beta cycle to
insure support amongst a number of industry leading
applications. Numerous packages like SideFX's Houdini, Autodesk's
Maya, Solid Angle's Arnold renderer, Sony Pictures Imageworks' Open
Image IO have already announced their support of the format.

Open EXR 2.0 is an important step in the adoption of deep compositing
as it provides a consistent file format for deep data that is easy to
read and work with throughout a visual effects pipeline. The Foundry
has build OpenEXR 2.0 support into its Nuke Compositing application as
the base for the Deep Compositing workflows.

OpenEXR 2.0 is already in use at both Weta Digital and Industrial
Light & Magic. ILM took advantage of the new format on Marvel's The
Avengers and two highly anticipated summer 2013 releases, Pacific Rim
and The Lone Ranger. Recent examples of Weta Digital's use of the
format also include Marvel's Avengers as well as Prometheus and The
Hobbit. In addition, a large number of visual effects studios have
already integrated a deep workflow into their compositing pipelines or
are in the process of doing so including:, Sony Pictures Imageworks,
Pixar Animation Studios, Rhythm & Hues, Fuel and MPC.

In addition to visual effects, the new additions to the format, means
that depth data can also be assigned to two-dimensional data for a use
in many design fields including, architecture, graphic design,
automotive and product prototyping.

## July 31st, 2012 - OpenEXR v1.7.1 has been released.

This release includes the following components:

* OpenEXR: v1.7.1

* IlmBase: v1.0.3

* PyIlmBase: v1.0.0 (introduces a Boost dependency)

* OpenEXR_Viewers: v1.0.2

Of particular note is the introduction of PyIlmBase. This module forms
a comprehensive set of python bindings to the IlmBase module.

In addition, contained in this release is a number of additions to
Imath as well as a minor tweak to Imath::Frustrum (for better support
for Windows platforms) as well as other minor fixes, including
correction for soname version of IlmImf.

## June 18, 2012 - We're pleased to announce the first public Beta release of OpenEXR v2.

Development of OpenEXR v2 has been undertaken in a collaborative
environment (cf. previous github announcement) comprised of Industrial
Light & Magic, Weta Digital as well as a number of other contributors.

Some of the new features included in the Beta.1 release of OpenEXR v2
are:

* Deep Data. Pixels can now store a variable length list of
  samples. The main rationale behind deep-images is to have multiple
  values at different depths for each pixel. OpenEXR v2 supports both
  hard surface and volumetric representation requirements for deep
  compositing workflows.

* Multi-part image files. With OpenEXR v2, files can now contain a
  number of separate, but related, images in one file. Access to any
  part is independent of the others; in particular, no access of data
  need take place for unrequested parts.

In addition, OpenEXR v2 also contains platform independent mechanisms
for handling co-existing library version conflicts in the same process
space. (Currently implemented in IlmImf)

Finally, a reminder that this is a Beta release and potentially
incompatible changes may be introduced in future releases prior to the
v2.0.0 production version.

OpenEXR v2Beta.1 can be found at:
https://github.com/AcademySoftwareFoundation/openexr/tree/v2_beta.1

## June 18, 2012 - We're pleased to announce that the OpenEXR source code is moving to github.com.

You can browse, download and branch the code at
www.github.com/AcademySoftwareFoundation/openexr.

We're looking forward to taking advantage of the collaborative
features presented by git and github.com and of course community
contributions. Please see the developer Wiki pages for more
information regarding participation.

## July 23, 2010 - New feature version of OpenEXR is now available.

This release includes support for stereoscopic images, please see the
adjoining documentation in the MultiViewOpenEXR.pdf. (Many thanks to
Weta Digital for their contribution.) In addition, we added support
for targeting 64 bit Windows, fixes for buffer overruns and a number
of other minor fixes, additions and optimisations. Please see the
Changelog files for more detailed information.

OpenEXR 1.7.0, OpenEXR_Viewers 1.0.2, IlmBase 1.0.2 and
OpenEXR-Images-1.7.0 can be downloaded from the downloads section of
www.openexr.com

## October 22, 2007 - New versions of OpenEXR and CTL are now available.

This release fixes a buffer overrun in OpenEXR and a Windows build
problem in CTL, and it removes a few unnecessary files from the
.tar.gz packages.

OpenEXR 1.6.1, OpenEXR_Viewers 1.0.1 and IlmBase 1.0.1 can be
downloaded from the downloads section of www.openexr.com. CTL 1.4.1
and OpenEXR_CTL 1.0.1 can be downloaded from
http://www.oscars.org/science-technology/council/projects/ctl.html.

## August 3, 2007 - New stable versions of OpenEXR and CTL are now available.

The source code has been tested on Linux, Mac OS X and Windows (Visual Studio 7 and 8).

Here's a summary of what has changed since the last release:

OpenEXR 1.6.0:

* Reduced generational loss in B44- and B44A-compressed images.

* Added B44A compression. This is a variation of B44, but with a better compression ratio for images with large uniform areas, such as in an alpha channel.

* Bug fixes.

CTL 1.4.0:

* Added new functions to the CTL standard library: 3x3 matrix support, 1D lookup tables with cubic interpolation.

* Added new "ctlversion" statement to the language.

* Bug fixes.

OpenEXR_CTL 1.0.0:

* Applying CTL transforms to a frame buffer is multi-threaded.

* Bug fixes.

* OpenEXR_Viewers 1.0.0:

* Implemented new naming conventions for CTL parameters.

IlmBase 1.0.0:

* Half now implements "round to nearest even" mode.

OpenEXR 1.6.0, OpenEXR_Viewers 1.0.0 and IlmBase 1.0.0 can be
downloaded from the downloads section of www.openexr.com. CTL 1.4.0
and OpenEXR_CTL 1.0.0 can be downloaded from
http://www.oscars.org/council/ctl.html.

## January 22, 2007 - CTL has been released.

The Color Transformation Language, or CTL, is a programming language
for digital color management. Color management requires translating
images between different representations or color spaces. CTL allows
users to describe color transforms in a concise and unambiguous way by
expressing them as programs. In order to apply a given transform to an
image, a color management system instructs a CTL interpreter to load
and run the CTL program that describes the transform.

The image viewers included in the OpenEXR software distribution,
exrdisplay and playexr, both support color rendering via CTL. For more
information see http://www.openexr.com/OpenEXRViewers.pdf.

Sorce code and documentation for the CTL interpreter can be downloaded
from http://ampasctl.sourceforge.net. Please note the license under
which CTL is distributed; it is similar but not identical to the
OpenEXR license.

## January 4, 2007 - OpenEXR wins an Academy Award for Technical Achievement.

The Academy of Motion Picture Arts and Sciences today announced the 15
winners of Scientific and Technical Academy Awards. A Technical
Achievement Award goes to Florian Kainz for the design and engineering
of OpenEXR, a software package implementing 16-bit, floating-point,
high dynamic range image files. Widely adopted, OpenEXR is engineered
to meet the requirements of the visual effects industry by providing
for lossless and lossy compression of tiered and tiled images.

Congratulations to all for making OpenEXR such a success!!!

Click here for the official Press Release

## December 15, 2006 - A new development version of OpenEXR is now available.

We have tested the code in this version internally at ILM, but we
would like to get feedback from others before we release a production
version.

The new version includes several significant changes:

* OpenEXR supports a new image compression method, called B44. It has
  a fixed compression rate of 2.28:1, or 4.57:1 if used in combination
  with luminance/chroma encoding. B44-compressed images can be
  uncompressed fast enough to support real-time playback of image
  sequences.

* The new playexr program plays back moving image sequences. Playexr
  is multi-threaded and utilizes the threading capabilities of the
  IlmImf library that were introduced in OpenEXR 1.3.0. The program
  plays back B44-compressed images with fairly high-resolution in real
  time on commodity hardware.

* The playexr program and a new version of the existing exrdisplay
  image viewer both support color rendering via color transforms
  written in the new Color Transformation Language or CTL. CTL is not
  part of OpenEXR; it will be released separately. CTL support in
  playexr and exrdisplay is optional; the programs can be built and
  will run without CTL.

* In preparation for the release of CTL, OpenEXR has been split into
  three separate packages:

* IlmBase 0.9.0 includes the Half, Iex, Imath and IlmThread libraries

* OpenEXR 1.5.0 includes the IlmImf library, programming examples and
  utility programs such as exrheader or exrenvmap

* OpenEXRViewers 0.9.0 includes the playexr and exrdisplay programs

* The "Technical Introduction to OpenEXR" document now includes a
  recommendation for storing CIE XYZ pixel data in OpenEXR files.

* A new "OpenEXR Image Viewing Software" document describes the
  playexr and exrdisplay programs. It briefly explains real-time
  playback and color rendering, and includes recommendations for
  testing if other image viewing software displays OpenEXR images
  correctly.

* The OpenEXR sample image set now includes B44-compressed files and
  files with CIE XYZ pixel data.

## August 8, 2006 - We have released an updated set of sample OpenEXR images.

This release includes several new images that are useful for testing
OpenEXR applications. The images are organized by subdirectory
according to their image type or purpose. Several of these
subdirectories contain README files that explain the contents of the
images in those subdirectories.

## August 2, 2006 - OpenEXR 1.4.0 is now available.

This is the next major production-ready release of OpenEXR and offers
full compatibility with our last production release, which was
1.2.2. This version obsoletes versions 1.3.x, which were test versions
for 1.4.0. If you have been using 1.3.x, please upgrade to 1.4.0.

## June 8, 2006 - OpenEXR 1.3.0 is now available.

This is a test release. The major new feature in this version is
support for multithreaded file I/O. We've been testing the threaded
code internally at ILM for a few months, and we have not encountered
any bugs, but we'd like to get some feedback from others before we
release the production version.

Here's a summary of the changes since version 1.2.2:

* Support for multithreaded file reading and writing.

* Support for Intel-based OS X systems.

* Support for Visual Studio 2005.

* Better handling of PLATFORM_* and HAVE_* macros.

* Updated documentation.

* Bug fixes related to handling of incomplete and damaged files.

* Numerous bug fixes and cleanups to the autoconf-based build system.

* Removed support for the following configurations that were
  previously supported. Some of these configurations may happen to
  continue to function, but we can't help you if they don't, largely
  because we don't have any way to test them:

  * IRIX

  * OSF1

  * SunOS

  * OS X versions prior to 10.3.

  * gcc on any platform prior to version 3.3


## March 15, 2005 - We're pleased to announce the release of OpenEXR 1.2.2.

This is a relatively minor update to the project, with the following changes:

* New build system for Windows; support for DLLs.

* Switched documentation from HTML to PDF format.

* IlmImf: support for image layers in ChannelList.

* IlmImf: added isComplete() method to file classes to check whether a
  file is complete.

* IlmImf: exposed staticInitialize() in ImfHeader.h in order to allow
  thread-safe library initialization in multithreaded applications.

* IlmImf: New "time code" standard attribute.

* exrdisplay: support for displaying wrap-around texture map images.

* exrmaketiled: can now specify wrap mode.

* IlmImf: New "wrapmodes" standard attribute to indicate extrapolation
  mode for mipmaps and ripmaps.

* IlmImf: New "key code" standard attribute to identify motion picture
  film frames.

* Imath: Removed TMatrix<T> classes; these classes are still under
  development and are too difficult to keep in sync with OpenEXR CVS.

## August 10, 2004 - ILM's OpenEXR color management proposal,
   presented at the Siggraph 2004 "OpenEXR, Film and Color" Birds of a
   Feather meeting, is now available online.

## June 6, 2004 - OpenEXR 1.2.1 is now available.

This is a fairly minor release, mostly just a few tweaks, a few bug
fixes, and some new documentation. Here are the most important
changes:

* reduced memory footprint of exrenvmap and exrmaketiled utilities.

* IlmImf: new helper functions to determine whether a file is an
  OpenEXR file, and whether it's scanline- or tile-based.

* IlmImf: bug fix for PXR24 compression with ySampling != 1.

* Better support for gcc 3.4.

* Warning cleanups in Visual C++.

## May 11, 2004 - OpenEXR 1.2.0 is now available.

This is the first official, production-ready release since OpenEXR
1.0.7. If you have been using the development 1.1 series, please
switch to 1.2.0 as soon as possible. We believe that OpenEXR 1.2.0 is
ready for use in shipping applications. We have been using it in
production at ILM for several months now with no problems. There are
quite a few major new features in the 1.2 series as compared to the
original 1.0 series:

* Support for tiled images, including mipmaps and ripmaps. Note that
  software based on the 1.0 series cannot read or write tiled
  images. However, simply by recompiling your software against the 1.2
  release, any code that reads scanline images can read tiled images,
  too.

* A new Pxr24 compressor, contributed by Pixar Animation
  Studios. Values produced by the Pxr24 compressor provide the same
  range as 32-bit floating-point numbers with slightly less precision,
  and compress quite a bit better. The Pxr24 compressor stores UINT
  and HALF channels losslessly, and for these data types performs
  similarly to the ZIP compressor.

* OpenEXR now supports high dynamic-range YCA (luminance/chroma/alpha)
  images with subsampled chroma channels. These files are supported
  via the RGBA convenience interface, so that data is presented to the
  application as RGB(A) but stored in the file as YC(A). OpenEXR also
  supports Y and YA (black-and-white/black-and-white with alpha)
  images.

* An abstracted file I/O interface, so that you can use OpenEXR with
  interfaces other than C++'s iostreams.

* Several new utilities for manipulating tiled image files.

See the downloads section to download the source code and sample images.

## Mar 27, 2004 - OpenEXR 1.1.1 is now available.

This another development release. We expect to release a stable
version, 1.2, around the end of April. Version 1.1.1 includes support
for PXR24 compression, and for high-dynamic-range luminance/chroma
images with subsampled chroma channels. Version 1.1.1 also fixes a bug
in the 1.1.0 tiled file format.

* Mar 27, 2004 - We are pleased to announce that Pixar Animation
  Studios has contributed code to OpenEXR for a new lossy compression
  method.

This compression method compresses 32-bit floating-point data quite a
bit better than OpenEXR's other compressors. This new compressor is
called PXR24 and is available as of the 1.1.1 development release of
OpenEXR. It will also be included in the upcoming 1.2 stable
release. Thanks to Loren Carpenter and Dana Batali of Pixar, for
making this happen!

## Feb 6, 2004 - OpenEXR 1.1.0 is now available.

This is a major new release with support for tiled images,
multi-resolution files (mip/ripmaps), environment maps, and abstracted
file I/O. We've also released a new set of images that demonstrate
these features, and updated the CodeWarrior project and Photoshop
plugins for this release. See the downloads section for the source
code and the new images.

## Jan 8, 2004 - Industrial Light & Magic has released the source code
  for an OpenEXR Shake plugin.

The plugin is supported on Shake 3.0 on the GNU/Linux and MacOS X
platforms. See the downloads section.

## Jan 7, 2004 - OpenEXR 1.0.7 is now available.

In addition to some bug fixes, this version adds support for some new
standard attributes, such as primary and white point chromaticities,
lens aperture, film speed, image acquisition time and place, and
more. If you want to use these new attributes in your applications,
see the ImfStandardAttributes.h header file for documentation.

Our project hosting site, Savannah, is still recovering from a
compromise last month, so in the meantime, we're hosting file
downloads here. Some of the files are not currently available, but
we're working to restore them.

## April 3, 2003 - OpenEXR release 1.0.5 is now available.

It includes support for Windows and improved support for OS X. It also
includes support for hardware rendering of OpenEXR images on NVIDIA
GeForce FX and Quadro FX video cards. See the downloads section for
source code and prebuilt packages for Windows, OS X 10.2, and RedHat.

## April 3, 2003 - Industrial Light & Magic has released the source
   code for an OpenEXR display driver for Pixar's Renderman.

This display driver is covered under the OpenEXR free software
license. See the downloads section for the source code.

## January 22, 2003 - OpenEXR Press Release click here

## January 22, 2003 - openexr.com web site is officially launched.