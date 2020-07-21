# About OpenEXR

The following pictures show the same OpenEXR image; yet the amount of
detail you can see when comparing the three is substantially
different. The view out the window is obscured by the bright sunlight,
although there is, in fact, a building next door with a rust-colored
roof; the sky is blue, and there are even power lines visible above
the building. Using the Viewer, you can adjust the amount of exposure
on the fly to see more details emerge, as the following images show.
 
Original OpenEXR Image

... with original Exposure setting of zero (0):	Adjust 4 Stops Darker

... details emerge from the glaring sunlight.	Adjust 8 Stops Darker

... and even more details emerge from the outside.
		

## History

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
  sufficient; but for image processing in a visual effects house,
  highlights often need to be preserved in the image data. Preserving
  over-range values in the source image allows an artist to change the
  apparent exposure of the image with minimal loss of data, for
  example.

* Conversely, 32-bit floating-point TIFF is often overkill for visual
  effects work. 32-bit FP TIFF provides more than sufficient precision
  and dynamic range for VFX images, but it comes at the cost of
  storage, both on disk and in memory. When creating background plates
  for VFX work, film is usually scanned in at 2k pixels wide or more,
  and 24p HD images are 1920x1080, so background plates are already
  quite large relative to "typical" digital images.  back to top

## Features

ILM decided to develop a new HDR file format with 16-bit
floating-point color component values. Since the IEEE-754
floating-point specification does not define a 16-bit format, ILM
created the "half" format. Half values have 1 sign bit, 5 exponent
bits, and 10 mantissa bits. For linear images, this format provides
1024 (210) values per color component per f-stop, and 30 f-stops (25 -
2), with an additional 10 f-stops with reduced precision at the low
end (denormals).

The half format supports denormalized numbers, positive and negative
infinities, and NaNs. It is identical to the half data type in
NVIDIA's Cg graphics language, allowing a developer to process values
from an OpenEXR image directly on current NVIDIA GPUs such as the
GeForce FX family.

In addition to the half data type, OpenEXR supports 32-bit unsigned
integer and 32-bit floating-point data types. OpenEXR images can have
an arbitrary number of channels, each with a different data type.

The current release of OpenEXR supports several lossless compression
methods, some of which can achieve compression ratios of about 2:1 for
images with film grain. OpenEXR is extensible, so developers can
easily add new compression methods (lossless or lossy).

OpenEXR images can be annotated with an arbitrary number of
attributes, e.g., with color balance information from a camera.

OpenEXR images are able to support stereoscopic workflows; version
1.7.0 has support for multiple views resident in the image files.

OpenEXR v2 introduces support for storing "Deep Data" buffers wherein
pixels are capable of holding variable number of data samples,
particularly as pertaining to depth. The implementation is capable of
both hard surface and volumetric representation requirements for deep
compositing workflows. OpenEXR v2 also introduces the concept of
"Multi-Part" files that contain a number of separate, but related,
images in one file. Access to any part is independent of the others.

Please see the documentation pages for further detail.

## Contributors

This is a list of contributors to the OpenEXR project, sorted
alphabetically by first name.

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
* Shawn Walker-Salas
* Simon Otter
* Srinath Ravichandran
* Thanh Ha
* Thorsten Kaufmann
* Wenzel Jakob
* Wojciech Jarosz
* Xo Wang
* Yujie Shu
