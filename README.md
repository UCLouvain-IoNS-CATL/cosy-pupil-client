cosy-pupil-client
=================

A Matlab client of [cosy-pupil-server](https://github.com/UCL-CATL/cosy-pupil-server).

Works on both GNU/Linux and Windows.

cosy-pupil-client is licensed under the GNU General Public License version 3 or later.

Dependencies
------------

- [cosy-zeromq-matlab](https://github.com/UCL-CATL/cosy-zeromq-matlab) >= 1.0

Pupil diameter in millimeters
-----------------------------

The [Pupil Capture](https://github.com/pupil-labs/pupil) software provides the
pupil diameter in pixels on the eye camera image. For neuroscience research,
it's more appropriate to have the pupil size in mm instead. But it is not
needed to know the pupil size in mm very precisely. What is important is the
variation. The size in mm is just to get a rough idea. So a ratio between
pixels and mm can be computed "manually", i.e. not by a sophisticated method
that analyzes the image, take the focus into account, create a 3D model, and so
on.
