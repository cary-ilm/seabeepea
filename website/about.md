# About OpenEXR

## High Dynamic Range Imagery

The following pictures show the same OpenEXR image, yet the amount of
detail you can see when comparing the three is substantially
different. The view out the window is obscured by the bright sunlight,
although there is, in fact, a building next door with a rust-colored
roof; the sky is blue, and there are even power lines visible above
the building.

[<img src="https://www.openexr.com/images/sample3_01_sm.jpg">](https://www.openexr.com/images/sample3_01.jpg)
[<img src="https://www.openexr.com/images/sample3_02_sm.jpg">](https://www.openexr.com/images/sample3_02.jpg)
[<img src="https://www.openexr.com/images/sample3_03_sm.jpg">](https://www.openexr.com/images/sample3_03.jpg)
	  
The image on the left shows an exposure setting of 0. The middle image
displays the image 4 stops darker; details emerge from the glaring
sunlight. The image on the right is 8 stops darker; even more details
emerge from outside the window.

With a program like Photoshop that is capable of working with or
display high dynamic range images, changing the exposure does not
affect image data itself, it simply changes the way that the original
16-bit floating-point pixel values in the image are converted to 8-bit
integer data in the frame buffer. We call the original 16-bit FP
pixels the "raw" image data, and the converted 8-bit pixels the
"cooked" image data. When you change the exposure, you are
"re-cooking" the data.

## History of OpenEXR

ILM developed the OpenEXR format in response to the demand for higher
color fidelity in the visual effects industry. When the project began
in 2000, ILM evaluated existing file formats, but rejected them for
various reasons:

* 8- and 10-bit formats lack the dynamic range necessary to store
  high-contrast images captured from HDR devices.
  
* 16-bit integer-based formats typically represent color component
  values from 0 ("black") to 1 ("white"), but don't account for
  over-range values (e.g., a chrome highlight) that can be captured by
  film negative or other HDR devices. For images intended only for
  display or print reproduction, clamping at "white" may be
  sufficient; but for image processing in motion picture production,
  highlights often need to be preserved in the image data. Preserving
  over-range values in the source image allows an artist to change the
  apparent exposure of the image with minimal loss of data, for
  example.

* Conversely, 32-bit floating-point TIFF is often overkill for visual
  effects work. 32-bit FP TIFF provides more than sufficient precision
  and dynamic range for VFX images, but it comes at the cost of
  storage, both on disk and in memory. Motion picture images are
  typically 2k or 4k resolution or larger.

## OpenEXR Features

In 2000, ILM decided to develop a new HDR file format with color
component values stored in a new 16-bit floating-point type called
"half." This type is compatible with the IEEE-754-2008 standard,
although note that this standard was not adopted until 2008, several
years after the develoment on OpenEXR.

Half values have 1 sign bit, 5 exponent bits, and 10 mantissa
bits. For linear images, this format provides 1024 (210) values per
color component per f-stop, and 30 f-stops (25 - 2), with an
additional 10 f-stops with reduced precision at the low end
(denormals).

The half format supports denormalized numbers, positive and negative
infinities, and NaNs. It is identical to the half data type in
NVIDIA's CUDA platform, allowing a developer to process values from an
OpenEXR image directly on current NVIDIA GPUs.

In addition to the half data type, OpenEXR supports 32-bit unsigned
integer and 32-bit floating-point data types. OpenEXR images can have
an arbitrary number of channels, each with a different data type.

OpenEXR supports several lossless compression methods, some of which
can achieve compression ratios of about 2:1 for images with film
grain. OpenEXR is extensible, so developers can easily add new
compression methods (lossless or lossy).

OpenEXR images can be annotated with an arbitrary number of
attributes, e.g., with color balance information from a camera.

OpenEXR images are able to support stereoscopic workflows by holding
multiple views resident in a single image file.

OpenEXR also supports storing "Deep Data" buffers wherein pixels are
capable of holding variable number of data samples, particularly as
pertaining to depth. The implementation is capable of both hard
surface and volumetric representation requirements for deep
compositing workflows.

OpenEXR also has the concept of "Multi-Part" files that contain a
number of separate, but related, images in one file. Access to any
part is independent of the others.

Please see the technical documentation for further detail.

## About the OpenEXR Project

OpenEXR is a project of the [Academy Software
Foundation](https://www.aswf.io).  The format and library were
originally developed by Industrial Light & Magic and first released in
2003.  Weta Digital, Walt Disney Animation Studios, Sony Pictures
Imageworks, Pixar Animation Studios, DreamWorks, and other studios,
companies, and individuals have made contributions to the code base.
OpenEXR was adopted by the ASWF in 2019.

See the project [GOVERNANCE](GOVERNANCE.md) page in the GitHub repo
for more information about how the project operates.

The OpenEXR project is dedicated to promoting a harassment-free
community. Read our [code of conduct](CODE_OF_CONDUCT.md).

## Contributors

The following individuals have contributed to the OpenEXR project:

* Andre Mazzone
* Andrew Kunz
* Arkady Shapkin
* Arkell Rasiah
* Brendan Bolles
* Cary Phillips
* Christina Tempelaar-Lietz
* Christopher Horvath
* Christopher Kulla
* Daniel Kaneider
* Drew Hess
* Ed Hanway
* Edward Kmett
* Eric Sommerlade
* Eric Wimmer
* E Sommerlade
* Florian Kainz
* Halfdan Ingvarsson
* Ibraheem Alhashim
* Jack Kingsman
* Jamie Kenyon
* Ji Hun Yu
* John Loy
* John Mertic
* Jonathan Stone
* Juri Abramov
* Karl Rasche
* Kevin Wheatley
* Kimball Thurston
* Larry Gritz
* Liam Fernandez
* Lucy Wilkes
* Michael Thomas
* Nicholas Yue
* Nick Porcino
* Nick Rasmussen
* Nicolas Chauvet
* Paul Schneider
* Peter Hillman
* Piotr Stanczyk
* Ralph Potter
* Richard Goedeken
* Rod Bogart
* Shawn Walker-Salas
* Simon Otter
* Srinath Ravichandran
* Thanh Ha
* Thorsten Kaufmann
* Wenzel Jakob
* Wojciech Jarosz
* Xo Wang
* Yujie Shu
