# OpenEXR

OpenEXR provides the specification and reference implementation of the
EXR file format, the professional-grade image storage format of the
motion picture industry.

Table of Contents:

* [About](about.md)

* [Download](download.md)

* [Documentation](documentation.md)

* [Images](images.md)

* [Security](security.md)

* [News](news.md)

* [Help](help.md)

## News

* [OpenEXR version v2.5.2 is released (June 15, 2020)](news.md#june-15-2020---openexr-version-v252-is-released)

* [OpenEXR version v2.4.2 is released (June 15, 2020)](news.md#june-15-2020---openexr-version-v242-is-released)

* [OpenEXR version v2.5.1 is released (May 11, 2020)](news.md#may-11-2020---openexr-version-v251-is-released)

* [OpenEXR version v2.5.0 is released (May 6, 2020)](https://github.com/cary-ilm/seabeepea/blob/master/website/news.md#may-6-2020---openexr-version-v250-is-released)

## Download

The latest stable release is OpenEXR v2.5.2. Download it here:
[v2.5.2.tar.gz](https://github.com/AcademySoftwareFoundation/openexr/archive/v2.5.2.tar.gz)

Download the most recent unstable development version from the GitHub
repo:

    git clone https://github.com/AcademySoftwareFoundation/openexr

See the [download](download.md) page for help building from source.

## The OpenEXR File Format

The purpose of the OpenEXR format is to accurately and efficiently represent
high-dynamic-range scene-linear image data and associated metadata,
with strong support for multi-part, multi-channel use cases.

OpenEXR is widely used in host application software where accuracy is
critical, such as photorealistic rendering, texture access, image
compositing, deep compositing, and DI.

OpenEXR is a project of the [Academy Software
Foundation](https://www.aswf.io).

OpenEXR is included in the [VFX Reference
Platform](https://vfxplatform.com).

### OpenEXR Features

* High dynamic range and color precision.

* Support for 16-bit floating-point, 32-bit floating-point, and
  32-bit integer pixels.

* Multiple image compression algorithms, both lossless and lossy. Some of
  the included codecs can achieve 2:1 lossless compression ratios on images
  with film grain.  The lossy codecs have been tuned for visual quality and
  decoding performance.

* Extensibility. New compression codecs and image types can easily be added
  by extending the C++ classes included in the OpenEXR software distribution.
  New image attributes (strings, vectors, integers, etc.) can be added to
  OpenEXR image headers without affecting backward compatibility with
  existing OpenEXR applications. 

* Support for stereoscopic image workflows and a generalization
  to multi-views.

* Flexible support for deep data: pixels can store a variable-length list
  of samples and, thus, it is possible to store multiple values at different
  depths for each pixel. Hard surfaces and volumetric data representations
  are accommodated.

* Multipart: ability to encode separate, but related, images in one file.
  This allows for access to individual parts without the need to read other
  parts in the file.

* Versioning: OpenEXR source allows for user configurable C++
  namespaces to provide protection when using multiple versions of the
  library in the same process space.

### The OpenEXR Project Mission

The goal of the OpenEXR project is to keep the EXR format reliable and
modern and to maintain its place as the preferred image format for
entertainment content creation. 

Major revisions are infrequent, and new features will be carefully
weighed against increased complexity.  The principal priorities of the
project are:

* Robustness, reliability, security

* Backwards compatibility, data longevity

* Performance - read/write/compression/decompression time

* Simplicity, ease of use, maintainability

* Wide adoption, multi-platform support - Linux, Windows, macOS, and others

OpenEXR is intended solely for 2D data. It is not appropriate for
storage of volumetric data, cached or lit 3D scenes, or more complex
3D data such as light fields.

The goals of the IlmBase project are simplicity, ease of use,
correctness and verifiability, and breadth of adoption. IlmBase is not
intended to be a comprehensive linear algebra or numerical analysis
package.

## License

OpenEXR is released under the [BSD-3-Clause](LICENSE) license. See
[PATENTS](OpenEXR/PATENTS) for license information about portions of
OpenEXR that are provided under a different license.

![aswf](/ASWF/images/aswf.png)
