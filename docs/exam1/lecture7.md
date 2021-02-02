## AE 760AA: Micromechanics and multiscale modeling
Lecture 7 - Physical measurements

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

February 13, 2019

---
## schedule

-   Feb 13 - Physical measurements (HW2 Due)
-   Feb 18 - Variational Calculus
-   Feb 20 - Variational Calculus
-   Feb 25 - Bounds and Boundary Conditions

----
## outline
- review
- measuring orientation

---
# review

----
## checking transformations

-   Follow the procedure [here](http://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/examples/Orientation%20Playground.ipynb)
-   This gives a way to systematically check whether your rotations are correct
-   You can check any coordinate transformation as long as you know the unit vectors of your primed coordinate system in the global coordinates

    *x* = [*Q*<sup>*T*</sup>]*x*<sup>'</sup>

----
## common homework errors

-   Some people had rotations about an axis with zeros along the diagonal
-   This is possible with successive rotations, but for a rotation about one of the three axes, you should always have one term along the diagonal equal to 1
-   When calculating stiffness in Problem 2, most students had some un-expected behavior
-   All four walls had same *x*<sub>1</sub> component of fibers, you should have gotten *C*<sub>11</sub> the same for all 4 walls
-   *C*<sub>22</sub> or *C*<sub>33</sub> should have also been equal to *C*<sub>11</sub>, depending on the wall

---
# measuring orientation

----
## measuring orientation

-   In micromechanics (and most places where multi-scale modeling would be used), measuring local orientations can be difficult
-   For composites, these are some common techniques
    -   Microscopy (some ambiguity in orientation tensor)
    -   Serial sectioned microscopy (eliminates ambiguity, very expensive)
    -   CT-scanning (only gives approximate measure)
    -   Micro CT-scanning (only for very small parts)

----
## microscopy

-   Cylindrical fiber intersects cutting plane at some angle
-   After cutting and polishing, this leaves an ellipse
-   By measuring the ellipse, we can calculate the angle between it and the cutting plane
-   Microscopy can also be used to measure volume fraction, void content, and fiber spacing

----
## microscopy

![An image showing the ellipse that results from cutting a cylinder at an angle that isn't perpendicular to the axis.](images\cut_fiber.JPG)

----
## fiber in spherical coordinates

![Relating the spherical coordinate system to direction vectors to describe fiber orientation](images\single_fiber.png)

----
## fiber direction components

| Component | Definition |
| --- | --- |
|*p*<sub>1</sub> | `$\sin \theta \cos \phi$` |
|*p*<sub>2</sub> | `$\sin \theta \sin \phi$` |
|*p*<sub>3</sub> | `$\cos \theta$` |

----
## measurements

![Defining some terms for analyzing the cross-section of an elliptical fiber cut. Phi is the angle between the major axis of the ellipse and the 1 axis, x1, y1 mark the bottom left point of the ellipse, x2, y2 mark the upper right point of the ellipse (the major axis), while x3,y3 and x4,y4 mark the ends of the minor axis](images\coordinates.PNG)

----
## calculations

-   We find the major (*M*) and minor (*m*) axes using
$$\\begin{aligned}
  m &= \\sqrt{(x\_3-x\_4)^2+(y\_3-y\_4)^2}\\\\
  X &= x\_1-x\_2\\\\
  Y &= y\_1-y\_2\\\\
  M &= \\sqrt{X^2-Y^2}
\\end{aligned}$$

----
## orientation tensor

-   We can now calculate angles using
$$\\sin \\phi = \\frac{Y}{M} \\cos \\phi = \\frac{X}{M} \\cos \\theta = \\frac{m}{M} \\sin \\theta = \\sqrt{1-\\frac{m^2}{M^2}}$$

----
## microscopy

![A microscopic image of a composite laminate, showing plies at different angles](images\plies.png)

----
## microscopy

![An image from some analysis to find the volume fraction of fibers in an image.](images\thresh1.png)

----
## microscopy

![A demonstration that choosing the correct threshold value to convert greyscale images to only black and white is essential to correctly determining the volume fraction.](images\thresh2.png)

----
## microscopy

![Ply thickness can be measured from a microscopic image](images\ply_thickness.png)

----
## microscopy

![It can also be useful sometimes to measure the distance between a fiber and its nearest neighbors.](images\spacing.png)

----
## software

-   If you have to do a lot of microscopy measurements, contact Dr. Sharma, he wrote an automated measurement tool
-   Otherwise you can use [imageJ](https://imagej.nih.gov/ij/download.html)

----
## microscopy

-   Need to account for bias in measurement (more likely to see fibers coming out of plane)
-   There is some ambiguity in fiber angle
-   Fiber at (`$\phi, \theta$`) is not distinguishable from (`$\phi + \pi, \theta$`)
-   In the second-order orientation tensor, this affects *a*<sub>23</sub> and *a*<sub>13</sub>

----
## serial sectioning

-   Serial sectioning is a method where you continually polish a specimen after photographing it
-   After photograph you grind and polish, then photograph and repeat
-   Gives the full 3D state of orientation, but is difficult

----
## CT Scanning

-   Even if a CT Scan cannot resolve down to fiber resolution, the gradient information can give an idea of fiber orientation
-   This method is not very precise
-   But it can view the full-field and detect many forms of damage without destroying a part
-   At the micro-scale full orientation can be obtained, but this is not practical for large parts
