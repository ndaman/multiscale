<span>upcoming schedule</span>

-   Feb 13 - Variational Calculus (HW 2 Due)

-   Feb 15 - Variational Calculus

-   Feb 20 - Project Description (HW 3 Due)

-   Feb 22 - Bounds and Boundary Conditions

### outline

\[sections numbered\]

errata
======

<span>conventions</span>

-   There are two different conventions for defining general transformations

-   Two textbooks that I use have conflicting conventions, which led to some errors in my slides

-   For my equations to be consistent, *Q*<sub>*i**j*</sub> is defined as
    *Q*<sub>*i**j*</sub> = cos(*x*<sub>*i*</sub><sup>′</sup>, *x*<sub>*j*</sub>)

<span>conventions</span>

-   Once this *Q*<sub>*i**j*</sub> definition is corrected, the rest of the equations we developed are accurate

-   We can transform any-order tensor using *Q*<sub>*i**j*</sub>

-   Vectors (first-order tensors): *v*<sub>*i*</sub><sup>′</sup> = *Q*<sub>*i**j*</sub>*v*<sub>*j*</sub>

-   Matrices (second-order tensors): *σ*<sub>*i**j*</sub><sup>′</sup> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*σ*<sub>*m**n*</sub>

-   Or in matrix notation: \[*σ*\]<sup>′</sup> = \[*Q*\]\[*σ*\]\[*Q*\]<sup>*T*</sup>

-   Fourth-order tensors: *C*<sub>*i**j**k**l*</sub><sup>′</sup> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*Q*<sub>*k**o*</sub>*Q*<sub>*l**p*</sub>*C*<sub>*m**n**o**p*</sub>

<span>engineering notation</span>

-   The equations for *R*<sub>*σ*</sub> will differ slightly based on which convention you are using

-   We will either expand
    *σ*<sub>*i**j*</sub><sup>′</sup> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*σ*<sub>*m**n*</sub> = \[*Q*\]\[*σ*\]\[*Q*\]<sup>*T*</sup>
     or
    *σ*<sub>*i**j*</sub><sup>′</sup> = *β*<sub>*m**i*</sub>*β*<sub>*n**j*</sub>*σ*<sub>*m**n*</sub> = \[*β*\]<sup>*T*</sup>\[*σ*\]\[*β*\]

<span>stress transformation</span>

-   We often write *σ*<sup>′</sup> = *R*<sub>*σ*</sub>*σ* for engineering notation
    $$\\hspace\*{-2cm}
                R\_\\sigma = \\begin{bmatrix}
                    Q\_{11}^2 & Q\_{12}^2 & Q\_{13}^2 & 2Q\_{12}Q\_{13} & 2 Q\_{11} Q\_{13} & 2Q\_{11}Q\_{12}\\\\
                    Q\_{21}^2 & Q\_{22}^2 & Q\_{23}^2 & 2Q\_{22}Q\_{23} & 2 Q\_{21} Q\_{23} & 2Q\_{21}Q\_{22}\\\\
                    Q\_{31}^2 & Q\_{32}^2 & Q\_{33}^2 & 2Q\_{32}Q\_{33} & 2 Q\_{31} Q\_{33} & 2Q\_{31}Q\_{32}\\\\
                    Q\_{21}Q\_{31} & Q\_{22}Q\_{32} & Q\_{23}Q\_{33} & Q\_{23}Q\_{32} + Q\_{22}Q\_{33} & Q\_{23}Q\_{31} + Q\_{21}Q\_{33} & Q\_{22}Q\_{31} + Q\_{21}Q\_{32}\\\\
                    Q\_{11}Q\_{31} & Q\_{12}Q\_{32} & Q\_{13}Q\_{33} & Q\_{13}Q\_{32} + Q\_{12}Q\_{33} & Q\_{13}Q\_{31} + Q\_{11}Q\_{33} & Q\_{12}Q\_{31} + Q\_{11}Q\_{32}\\\\
                    Q\_{11}Q\_{21} & Q\_{12}Q\_{22} & Q\_{13}Q\_{23} & Q\_{13}Q\_{22} + Q\_{12}Q\_{23} & Q\_{13}Q\_{21} + Q\_{11}Q\_{23} & Q\_{12}Q\_{21} + Q\_{11}Q\_{22}
            \\end{bmatrix}$$

<span>checking transformations</span>

-   Follow the procedure here <http://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/Orientation%20Playground.ipynb>

-   This gives a way to systematically check whether your rotations are correct

-   You can check any coordinate transformation as long as you know the unit vectors of your primed coordinate system in the global coordinates
    *x* = \[*Q*<sup>*T*</sup>\]*x*<sup>′</sup>

<span>eshelby tensor</span> \[tab:eshelby\]

| *S*<sub>*i**j**k**l*</sub>                                                                              | Long Fibers                               | Short Fibers (Ellipsoids)                |
|:--------------------------------------------------------------------------------------------------------|:------------------------------------------|:-----------------------------------------|
| *S*<sub>1111</sub> = *S*<sub>2222</sub>                                                                 | $\\frac{5-\\nu}{8(1-\\nu)}$               | $Q+RI\_1+\\frac{3T}{4}$                  |
| *S*<sub>3333</sub>                                                                                      | 0                                         | $\\frac{4Q}{3}+RI\_3+2s^2T$              |
| *S*<sub>1122</sub> = *S*<sub>2211</sub>                                                                 | $\\frac{-1+4\\nu}{8(1-\\nu)}$             | $\\frac{Q}{3}-RI\_1+\\frac{4T}{3}$       |
| *S*<sub>1133</sub> = *S*<sub>2233</sub>                                                                 | $\\frac{\\nu}{2(1-\\nu)}$                 | −*R**I*<sub>1</sub> − *s*<sup>2</sup>*T* |
| *S*<sub>3311</sub> = *S*<sub>3322</sub>                                                                 | 0                                         | −*R**I*<sub>3</sub> − *T*                |
| $\\begin{aligned}                                                                                       
     S\_{1212} & = S\_{1221} \\\\& = S\_{2112}=S\_{2121}                                                  
     \\end{aligned}$                                                                                      | $\\frac{3-4\\nu}{8\\left(1-\\nu\\right)}$ | $\\frac{Q}{3}+RI\_1+\\frac{T}{4}$        |
| $\\begin{aligned}                                                                                       
     S\_{1313} & = S\_{1331} \\\\&=S\_{3113}=S\_{3131}\\\\&=S\_{3232}=S\_{3223}\\\\&=S\_{2332}=S\_{2323}  
     \\end{aligned}$                                                                                      | $\\frac{1}{4}$                            | $2R-\\frac{I\_1R}{2}-\\frac{1+s^2}{2}T$  |
| all other *S*<sub>*i**j**k**l*</sub>                                                                    | 0                                         | 0                                        |

<span>common homework errors</span>

-   Some people had rotations about an axis with zeros along the diagonal

-   This is possible with successive rotations, but for a rotation about one of the three axes, you should always have one term along the diagonal equal to 1

-   When calculating stiffness in Problem 2, most students had some un-expected behavior

-   All four walls had same *x*<sub>1</sub> component of fibers, you should have gotten *C*<sub>11</sub> the same for all 4 walls

-   *C*<sub>22</sub> or *C*<sub>33</sub> should have also been equal to *C*<sub>11</sub>, depending on the wall

syllabus
========

<span>syllabus</span>

-   Since we will not be having exams, the homework and final project carry a greater weight

-   I added a few homework assignments to help spread the homework weight out a little bit

-   There will now be a total of 8 homework assignments (7 + Project Abstract)

-   Homework will be worth 40% of grade, Project will be 60%

-   I will start using a stricter scale for homework grading

-   Resubmit corrections?

measuring orientation
=====================

<span>measuring orientation</span>

-   In micromechanics (and most places where multi-scale modeling would be used), measuring local orientations can be difficult

-   For composites, these are some common techniques

    -   Microscopy (some ambiguity in orientation tensor)

    -   Serial sectioned microscopy (eliminates ambiguity, very expensive)

    -   CT-scanning (only gives approximate measure)

    -   Micro CT-scanning (only for very small parts)

<span>microscopy</span>

-   Cylindrical fiber intersects cutting plane at some angle

-   After cutting and polishing, this leaves an ellipse

-   By measuring the ellipse, we can calculate the angle between it and the cutting plane

-   Microscopy can also be used to measure volume fraction, void content, and fiber spacing

<span>microscopy</span>

![image](../Figures/cut_fiber.JPG)

<span>fiber in spherical coordinates</span>

\[fig:single\_fiber\]

<span>fiber direction components</span>

<span>c c</span> Component & Definition
*p*<sub>1</sub> & sin*θ*cos*ϕ*
*p*<sub>2</sub> & sin*θ*sin*ϕ*
*p*<sub>3</sub> & cos*θ*

<span>measurements</span>

<img src="../Figures/coordinates.PNG" alt="image" style="width:50.0%" />

<span>calculations</span>

-   We find the major (*M*) and minor (*m*) axes using
    $$\\begin{aligned}
                m &= \\sqrt{(x\_3-x\_4)^2+(y\_3-y\_4)^2}\\\\
                X &= x\_1-x\_2\\\\
                Y &= y\_1-y\_2\\\\
                M &= \\sqrt{X^2-Y^2}
            \\end{aligned}$$

<span>orientation tensor</span>

-   We can now calculate angles using
    $$\\sin \\phi = \\frac{Y}{M} \\cos \\phi = \\frac{X}{M} \\cos \\theta = \\frac{m}{M} \\sin \\theta = \\sqrt{1-\\frac{m^2}{M^2}}$$

<span>microscopy</span>

<img src="../Figures/plies.png" alt="image" style="width:70.0%" />

<span>microscopy</span>

<img src="../Figures/thresh1.png" alt="image" style="width:70.0%" />

<span>microscopy</span>

<img src="../Figures/thresh2.png" alt="image" style="width:70.0%" />

<span>microscopy</span>

<img src="../Figures/ply_thickness.png" alt="image" style="width:70.0%" />

<span>microscopy</span>

<img src="../Figures/spacing.png" alt="image" style="width:70.0%" />

<span>software</span>

-   If you have to do a lot of microscopy measurements, contact Dr. Sharma, he wrote an automated measurement tool

-   Otherwise you can use imageJ <https://imagej.nih.gov/ij/download.html>

-   demo

<span>microscopy</span>

-   Need to account for bias in measurement (more likely to see fibers coming out of plane)

-   There is some ambiguity in fiber angle

-   Fiber at (*ϕ*, *θ*) is not distinguishable from (*ϕ* + *π*, *θ*)

-   In the second-order orientation tensor, this affects *a*<sub>23</sub> and *a*<sub>13</sub>

<span>serial sectioning</span>

-   Serial sectioning is a method where you continually polish a specimen after photographing it

-   After photograph you grind and polish, then photograph and repeat

-   Gives the full 3D state of orientation, but is difficult

<span>CT Scanning</span>

-   Even if a CT Scan cannot resolve down to fiber resolution, the gradient information can give an idea of fiber orientation

-   This method is not very precise

-   But it can view the full-field and detect many forms of damage without destroying a part

-   At the micro-scale full orientation can be obtained, but this is not practical for large parts

variational calculus
====================

<span>differential and variational statements</span>

-   A differential statement includes a set of governing differential equations established inside a domain and a set of boundary conditions to be satisfied along the boundaries

-   A variational statement is to find stationary conditions for an integral with unknown functions in the integrand

-   Variational statements are advantageous in the following aspects

    -   Clear physical meaning, invariant to coordinate system

    -   Can provide more realistic descriptions than differential statements (concentrated loads)

    -   More easily suited to solving problems numerically or approximately

    -   Can be more systematic and consistent than building a set of differential equations

<span>stationary problems</span>

-   If the function *F*(*u*<sub>1</sub>) is defined on a domain, then at $\\frac{dF}{du\_1}=1$ it is considered to be stationary

-   This stationary point could be a minimum, maximum, or saddle point

-   We use the second derivative to determine which of these it is: &gt;0 for a minimum, &lt;0 for a maximum and =0 for a saddle point

-   For a function of *n* variables, *F*(*u*<sub>*n*</sub>) the stationary points are
    $$\\frac{\\partial F}{\\partial u\_i} = 0$$
     for all values of *i*

-   and to determine the type of stationary point we use
    $$\\sum\_{i,j=1,n} \\frac {\\partial^2 F}{\\partial u\_i \\partial u\_j}$$

<span>lagrange multipliers</span>

-   Let us now consider a function of several variables, but the variables are subject to a constraint
    *f*(*u*<sub>1</sub>, *u*<sub>2</sub>, ...)=0

-   Algebraically, we could use each provided constraint equation to reduce the number of variables

-   For large problems, it can be cumbersome or impossible to eliminate some variables

-   The Lagrange Multiplier method is an alternative, systematic approach

<span>lagrange multiplier</span>

-   For a constrained problem at a stationary point we will have
    $$dF = \\frac{\\partial F}{\\partial u\_1} du\_1 + ... + \\frac{\\partial F}{\\partial u\_n} du\_n = 0$$

-   The relationship between *d**u*<sub>*i*</sub> can be found by differentiating the constraint
    $$df = \\frac{\\partial f}{\\partial u\_1} du\_1 + ... + \\frac{\\partial f}{\\partial u\_n} du\_n = 0$$

-   We can combine these two equations using a Lagrange Multiplier
    $$\\frac{\\partial F}{\\partial u\_1} du\_1 + ... + \\frac{\\partial F}{\\partial u\_n} du\_n + \\lambda \\left\[\\frac{\\partial f}{\\partial u\_1} du\_1 + ... + \\frac{\\partial f}{\\partial u\_n} du\_n \\right\]$$

-   We can re-group terms as
    $$\\sum\_{i=1}^n \\left\[\\frac{\\partial F}{\\partial u\_i} + \\lambda \\frac{\\partial f}{\\partial u\_i} \\right\]du\_i = 0$$

<span>lagrange multiplier</span>

-   The Lagrange Multiplier, *λ* is an arbitrary function of *u*<sub>*i*</sub>

-   We can choose the Lagrange Multiplier such that
    $$\\frac{\\partial F}{\\partial u\_n} + \\lambda \\frac{\\partial f}{\\partial u\_n}  = 0$$

-   Which now leaves
    $$\\frac{\\partial F}{\\partial u\_i} + \\lambda \\frac{\\partial f}{\\partial u\_i} = 0 \\qquad i=1,2,...,n-1$$

-   We now define a new function *F*<sup>\*</sup> = *F* + *λ**f*

<span>lagrange multiplier</span>

-   This converts a constrained problem in *n* variables to an unconstrained problem in *n* + 1 variables

-   Notice that while the stationary values of *F*\* will be the same as the stationary values to *F*, they will not necessarily correspond

-   For example, a minimum in *F*\* might be a maximum in *F*

-   This provides a systematic method for solving problems with any number of variables and constraints, and is also well-posed for numeric solutions

<span>example</span>

-   Design a box with given surface area such that the volume is maximized

-   The box has no cover along one of the surfaces (open-face box)

-   This gives the surface area as *A* = *x**y* + 2*y**z* + 2*x**z* = *C*

-   <http://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/Lagrange%20Multipliers.ipynb>


