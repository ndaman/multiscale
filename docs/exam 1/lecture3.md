<span>upcoming schedule</span>

-   Jan 25 - 1D Micromechanics

-   Jan 30 - Eshelby (HW 1 Due)

-   Feb 1 - Mean-field

### outline

\[sections numbered\]

<span>research colloquium</span>

-   Friday at 4:00pm, WH 209

-   Students from Dr. Dutta’s group will present (space dynamics)

-   Will continue regularly throughout the year

-   Good way to practice presentations, get to know other grad students, and see what else is going on at WSU

transformation
==============

<span>general coordinate transformation</span>

-   Coordinate transformation can become much more complicated in three dimensions, and with higher-order tensors

-   It is convenient to define a general form of the coordinate transformation in index notation

-   We define *Q*<sub>*i**j*</sub> as the cosine of the angle between the *x*<sub>*i*</sub><sup>′</sup> axis and the *x*<sub>*j*</sub> axis.

-   This is also referred to as the “direction cosine”
    *Q*<sub>*i**j*</sub> = cos(*x*<sub>*i*</sub><sup>′</sup>, *x*<sub>*j*</sub>)

<span>general coordinate transformation</span>

-   We can transform any-order tensor using *Q*<sub>*i**j*</sub>

-   Vectors (first-order tensors): *v*<sub>*i*</sub><sup>′</sup> = *Q*<sub>*i**j*</sub>*v*<sub>*j*</sub>

-   Matrices (second-order tensors): *σ*<sub>*m**n*</sub><sup>′</sup> = *Q*<sub>*m**i*</sub>*Q*<sub>*n**j*</sub>*σ*<sub>*i**j*</sub>

-   Fourth-order tensors: *C*<sub>*i**j**k**l*</sub><sup>′</sup> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*Q*<sub>*k**o*</sub>*Q*<sub>*l**p*</sub>*C*<sub>*m**n**o**p*</sub>

<span>general coordinate transformation</span>

-   We can similarly use *Q*<sub>*i**j*</sub> to find tensors in the original coordinate system

-   Vectors (first-order tensors): *v*<sub>*i*</sub> = *Q*<sub>*j**i*</sub>*v*<sub>*j*</sub><sup>′</sup>

-   Matrices (second-order tensors): *σ*<sub>*m**n*</sub> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*σ*<sub>*i**j*</sub><sup>′</sup>

-   Fourth-order tensors: *C*<sub>*i**j**k**l*</sub> = *Q*<sub>*m**i*</sub>*Q*<sub>*n**j*</sub>*Q*<sub>*o**k*</sub>*Q*<sub>*p**l*</sub>*C*<sub>*m**n**o**p*</sub><sup>′</sup>

<span>engineering notation</span>
$$\\begin{bmatrix}
        \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
        \\end{bmatrix}
        = \\begin{bmatrix}
        C\_{1111} & C\_{1122} & C\_{1133} & C\_{1123} & C\_{1113} & C\_{1112} \\\\
        C\_{1122} & C\_{2222} & C\_{2233} & C\_{2223} & C\_{1322} & C\_{1222} \\\\
        C\_{1133} & C\_{2233} & C\_{3333} & C\_{2333} & C\_{1333} & C\_{1233} \\\\
        C\_{1123} & C\_{2223} & C\_{2333} & C\_{2323} & C\_{1323} & C\_{1223} \\\\
        C\_{1113} & C\_{1322} & C\_{1333} & C\_{1323} & C\_{1313} & C\_{1213} \\\\
        C\_{1112} & C\_{1222} & C\_{1233} & C\_{1223} & C\_{1213} & C\_{1212}
        \\end{bmatrix}\\begin{bmatrix}
        E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
        \\end{bmatrix}$$

<span>orthotropic symmetry</span>
$$\\begin{bmatrix}
    \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
    \\end{bmatrix}
    = \\begin{bmatrix}
    C\_{1111} & C\_{1122} & C\_{1133} & 0 & 0 & 0 \\\\
    C\_{1122} & C\_{2222} & C\_{2233} & 0 & 0 & 0 \\\\
    C\_{1133} & C\_{2233} & C\_{3333} & 0 & 0 & 0 \\\\
    0 & 0 & 0 & C\_{2323} & 0 & 0 \\\\
    0 & 0 & 0 & 0 & C\_{1313} & 0 \\\\
    0 & 0 & 0 & 0 & 0 & C\_{1212}
    \\end{bmatrix}\\begin{bmatrix}
    E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
    \\end{bmatrix}$$

<span>transversely isotropic symmetry</span>
$$\\begin{bmatrix}
    \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
    \\end{bmatrix}
    = \\begin{bmatrix}
    C\_{1111} & C\_{1122} & C\_{1133} & 0 & 0 & 0 \\\\
    C\_{1122} & C\_{1111} & C\_{1133} & 0 & 0 & 0 \\\\
    C\_{1133} & C\_{1133} & C\_{3333} & 0 & 0 & 0 \\\\
    0 & 0 & 0 & C\_{1313} & 0 & 0 \\\\
    0 & 0 & 0 & 0 & C\_{1313} & 0 \\\\
    0 & 0 & 0 & 0 & 0 & \\frac{1}{2}(C\_{1111}-C\_{2222})
    \\end{bmatrix}\\begin{bmatrix}
    E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
    \\end{bmatrix}$$

<span>isotropic symmetry</span>
$$\\hspace\*{-1cm}
    \\begin{bmatrix}
    \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
    \\end{bmatrix}
    = A\\begin{bmatrix}
    1-\\nu & \\nu & \\nu & 0 & 0 & 0 \\\\
    \\nu & 1-\\nu & \\nu & 0 & 0 & 0 \\\\
    \\nu & \\nu & 1-\\nu & 0 & 0 & 0 \\\\
    0 & 0 & 0 & \\frac{1}{2}(1-2\\nu) & 0 & 0 \\\\
    0 & 0 & 0 & 0 & \\frac{1}{2}(1-2\\nu) & 0 \\\\
    0 & 0 & 0 & 0 & 0 & \\frac{1}{2}(1-2\\nu)
    \\end{bmatrix}\\begin{bmatrix}
    E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
    \\end{bmatrix}$$
 Where
$$A = \\frac{E}{(1+\\nu)(1-2\\nu)}$$

<span>transformation</span>

-   We know that
    *σ*<sub>*m**n*</sub><sup>′</sup> = *Q*<sub>*m**i*</sub>*Q*<sub>*n**j*</sub>*σ*<sub>*i**j*</sub>

-   We can expand this to write in terms of engineering stress

-   We will expand only two terms, as they show the general pattern for all 6

<span>stress transformation</span>
$$\\begin{gathered}
        \\sigma\_{1}^\\prime = \\sigma\_{11}^\\prime =  Q\_{11}Q\_{11} \\sigma\_{11} + Q\_{11}Q\_{12} \\sigma\_{12} + Q\_{11}Q\_{13}\\sigma\_{13}\\\\
        + Q\_{12}Q\_{11} \\sigma\_{21} + Q\_{12}Q\_{12} \\sigma\_{22} + Q\_{12}Q\_{13}\\sigma\_{23}\\\\
        + Q\_{13}Q\_{11} \\sigma\_{31} + Q\_{13}Q\_{12} \\sigma\_{32} + Q\_{13}Q\_{13}\\sigma\_{33}
    \\end{gathered}$$
$$\\begin{gathered}
        \\sigma\_{1}^\\prime = Q\_{11}^2 \\sigma\_{1} + Q\_{12}^2 \\sigma\_{2} + Q\_{13}^2\\sigma\_{3}\\\\
        + 2 Q\_{11}Q\_{12} \\sigma\_{6} + 2Q\_{11}Q\_{13}\\sigma\_{5} + 2Q\_{12}Q\_{13}\\sigma\_{4}
    \\end{gathered}$$

<span>stress transformation</span>
$$\\begin{gathered}
     \\sigma\_{4}^\\prime = \\sigma\_{23}^\\prime =  Q\_{21}Q\_{31} \\sigma\_{11} + Q\_{21}Q\_{32} \\sigma\_{12} + Q\_{21}Q\_{33}\\sigma\_{13}\\\\
     + Q\_{22}Q\_{31} \\sigma\_{21} + Q\_{22}Q\_{32} \\sigma\_{22} + Q\_{22}Q\_{33}\\sigma\_{23}\\\\
     + Q\_{23}Q\_{31} \\sigma\_{31} + Q\_{23}Q\_{32} \\sigma\_{32} + Q\_{23}Q\_{33}\\sigma\_{33}
 \\end{gathered}$$
$$\\begin{gathered}
     \\sigma\_{4}^\\prime = Q\_{21}Q\_{31} \\sigma\_{1} + Q\_{22}Q\_{32} \\sigma\_{22} + Q\_{23}Q\_{33}\\sigma\_{3}\\\\
     + (Q\_{21}Q\_{32}+Q\_{22}Q\_{31}) \\sigma\_{6} + (Q\_{21}Q\_{33}+Q\_{23}Q\_{31})\\sigma\_{5}\\\\
     + (Q\_{22}Q\_{33}+Q\_{23}Q\_{32})\\sigma\_{4}
 \\end{gathered}$$

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

<span>strain transformation</span>

-   We can follow the exact same procedure to transform strain

-   The values are almost the same, notice the highlighted terms
    $$\\hspace\*{-2cm}
                R\_\\epsilon = \\begin{bmatrix}
                    Q\_{11}^2 & Q\_{12}^2 & Q\_{13}^2 & {    \\colorbox{red!50}{$\\displaystyleQ\_{12}Q\_{13}$}} &  {    \\colorbox{red!50}{$\\displaystyleQ\_{11} Q\_{13}$}} & {    \\colorbox{red!50}{$\\displaystyleQ\_{11}Q\_{12}$}}\\\\
                    Q\_{21}^2 & Q\_{22}^2 & Q\_{23}^2 & {    \\colorbox{red!50}{$\\displaystyleQ\_{22}Q\_{23}$}} &  {    \\colorbox{red!50}{$\\displaystyleQ\_{21} Q\_{23}$}} & {    \\colorbox{red!50}{$\\displaystyleQ\_{21}Q\_{22}$}}\\\\
                    Q\_{31}^2 & Q\_{32}^2 & Q\_{33}^2 & {    \\colorbox{red!50}{$\\displaystyleQ\_{32}Q\_{33}$}} &  {    \\colorbox{red!50}{$\\displaystyleQ\_{31} Q\_{33}$}} & {    \\colorbox{red!50}{$\\displaystyleQ\_{31}Q\_{32}$}}\\\\
                    {    \\colorbox{red!50}{$\\displaystyle2Q\_{21}Q\_{31}$}} & {    \\colorbox{red!50}{$\\displaystyle2Q\_{22}Q\_{32}$}} & {    \\colorbox{red!50}{$\\displaystyle2Q\_{23}Q\_{33}$}} & Q\_{23}Q\_{32} + Q\_{22}Q\_{33} & Q\_{23}Q\_{31} + Q\_{21}Q\_{33} & Q\_{22}Q\_{31} + Q\_{21}Q\_{32}\\\\
                    {    \\colorbox{red!50}{$\\displaystyle2Q\_{11}Q\_{31}$}} & {    \\colorbox{red!50}{$\\displaystyle2Q\_{12}Q\_{32}$}} & {    \\colorbox{red!50}{$\\displaystyle2Q\_{13}Q\_{33}$}} & Q\_{13}Q\_{32} + Q\_{12}Q\_{33} & Q\_{13}Q\_{31} + Q\_{11}Q\_{33} & Q\_{12}Q\_{31} + Q\_{11}Q\_{32}\\\\
                    {    \\colorbox{red!50}{$\\displaystyle2Q\_{11}Q\_{21}$}} & {    \\colorbox{red!50}{$\\displaystyle2Q\_{12}Q\_{22}$}} & {    \\colorbox{red!50}{$\\displaystyle2Q\_{13}Q\_{23}$}} & Q\_{13}Q\_{22} + Q\_{12}Q\_{23} & Q\_{13}Q\_{21} + Q\_{11}Q\_{23} & Q\_{12}Q\_{21} + Q\_{11}Q\_{22}
            \\end{bmatrix}$$

<span>stiffness transformation</span>

-   We can now formulate the transformation of the stiffness matrix. We know that

-   
    *σ*<sup>′</sup> = *R*<sub>*σ*</sub>*σ* = *C*<sup>′</sup>*E*<sup>′</sup>

-   And since *σ* = *C**E*, we can say
    *R*<sub>*σ*</sub>*C**E* = *C*<sup>′</sup>*E*<sup>′</sup>

-   Now we know that *E*<sup>′</sup> = *R*<sub>*E*</sub>*E*, so we substitute that to find
    *R*<sub>*σ*</sub>*C**E* = *C*<sup>′</sup>*R*<sub>*E*</sub>*E*

<span>stiffness transformation</span>

-   We can right multiply both sides by *E*<sup>−1</sup> to cancel *E*

-   Then we can right multiply both sides by *R*<sub>*E*</sub><sup>−1</sup> to get *C*<sup>′</sup> by itself
    *C*<sup>′</sup> = *R*<sub>*σ*</sub>*C*(*R*<sub>*E*</sub>)<sup>−1</sup>

-   Note that *R*<sub>*E*</sub><sup>−1</sup> = *R*<sub>*σ*</sub><sup>*T*</sup>

<span>conventions</span>

-   There are two things that can be very confusing when transforming engineering stiffness

-   First, while I have used the most standard ordering of stress/strain terms, not everyone uses the same order

-   Second, the equations used here are for engineering strain (which is the most common)

-   However, tensorial strain may also be used, in which case *R*<sub>*σ*</sub> = *R*<sub>*E*</sub>, but that adds other complications

one dimensional micromechanics
==============================

<span>one dimensional micromechanics</span>

-   Some simple one-dimensional micromechanics models are useful as bounding cases

-   The first micromechancis models were developed by Voigt and Reuss

-   These provide a type of bound to possible solutions

-   Some improvements were made using the method of cells

<span>equivalent solid</span>

-   The goal of all micromechanics models is to use the known properties of constituents to find the large-scale behavior

-   We can find this by averaging the stress and strain tensors over the volume of some RVE
    $$\\begin{aligned}
                \\bar{\\sigma}\_{ij} &= \\frac{1}{V}\\int\_V \\sigma\_{ij}(x,y,z) dV\\\\
                \\bar{\\epsilon}\_{ij} &= \\frac{1}{V}\\int\_V \\epsilon\_{ij}(x,y,z) dV
            \\end{aligned}$$

<span>equivalent solid</span>

-   If we have only two phases (fiber and matrix), and we use engineering notation, this average can be expressed as
    $$\\begin{aligned}
                \\bar{\\sigma}\_{i} &= \\frac{1}{V}\\left(\\int\_{V^f} \\sigma^f\_{i}(x,y,z) dV  + \\int\_{V^m} \\sigma^m\_{i}(x,y,z) dV\\right)\\\\
                \\bar{\\epsilon}\_{i} &= \\frac{1}{V}\\left(\\int\_{V^f} \\epsilon^f\_{i}(x,y,z) dV  + \\int\_{V^m} \\epsilon^m\_{i}(x,y,z) dV\\right)
            \\end{aligned}$$

<span>equivalent solid</span>

-   We also know that in the fiber and matrix, respectively, Hooke’s Law still holds
    *σ*<sub>*i*</sub> = *C*<sub>*i**j*</sub>*ϵ*<sub>*j*</sub>

-   And this must be true for the average as well
    $$\\bar{\\sigma}\_i = C\_{ij} \\bar{\\epsilon}\_j$$

<span>voigt</span>

-   Voigt considered a two-phase composite with a uniform strain imposed on both phases

-   The uniform strain assumption means that
    *ϵ*<sub>*i*</sub><sup>*f*</sup> = *ϵ*<sub>*i*</sub><sup>*m*</sup> = *ϵ*<sub>*i*</sub>

-   While a macroscopically homogeneous strain does not necessarily impose a locally homogeneous strain field, Voigt assumed that
    $$\\epsilon\_i = \\bar{\\epsilon}\_i$$

<span>voigt</span>

-   This assumption results in
    $$\\begin{aligned}
                \\bar{\\sigma}\_i &= \\frac{1}{V}\\left(\\int\_{V^f} C\_{ij}^f\\bar{\\epsilon}\_j dV  + \\int\_{V^m} C\_{ij}^m\\bar{\\epsilon}\_j dV\\right)\\\\
                \\bar{\\sigma}\_i &= \\left( \\frac{V\_f}{V} C\_{ij}^f + \\frac{V\_m}{V} C\_{ij}^m\\right)\\bar{\\epsilon}\_j
            \\end{aligned}$$

-   This gives the well-known rule of mixtures for *C*<sub>*i**j*</sub>
    $$C\_{ij}^c = \\frac{V\_f}{V} C\_{ij}^f + \\frac{V\_m}{V} C\_{ij}^m$$

<span>reuss</span>

-   If we instead assume a uniform stress imposed on both phases such that
    $$\\sigma\_i^f = \\sigma\_i^m = \\sigma\_i = \\bar{\\sigma}\_i$$

-   We would find the identical relationship, but with compliance instead of stiffness
    $$\\begin{aligned}
                \\bar{\\epsilon}\_i &= \\frac{1}{V}\\left(\\int\_{V^f} S\_{ij}^f\\bar{\\sigma}\_j dV  + \\int\_{V^m} S\_{ij}^m\\bar{\\sigma}\_j dV\\right)\\\\
                \\bar{\\epsilon}\_i &= \\left( \\frac{V\_f}{V} S\_{ij}^f + \\frac{V\_m}{V} S\_{ij}^m\\right)\\bar{\\sigma}\_j
            \\end{aligned}$$

<span>bounds</span>

-   In general, the Voigt assumption (homogeneous strain, rule of mixtures for stiffness) gives an upper bound for stiffness

-   On the other hand, the Reuss assmption (homogeneous stress, rule of mixtures for compliance) gives a lower bound for stiffness

-   In uni-directional composites, the Voigt model is good enough for *E*<sub>1</sub> and *ν*<sub>12</sub> predictions, but not for *E*<sub>2</sub> or *G*<sub>12</sub>

<span>subregions</span>

-   Hopkins and Chamis considered a refined model to subdivide the RVE into sub-regions

-   This gives reasonable predictions for *E*<sub>2</sub> and *G*<sub>12</sub>

-   (draw on board)

discontinuous composites
========================

<span>discontinuous fibers</span>

-   The previous models all assumed that the constituent (fiber) was infinitely long

-   There are many cases where we want to consider discontinuous fibers

-   Weaker than continuous composites, but easier to mass-produce, more shapes can be made

-   We will consider a simple model for aligned composites (shear lag)

<span>shear lag</span>

(10,-3) – (0,-3) arc (-90:-270:1cm and 3cm) – (10,3) ++ (0,-3) circle (1cm and 3cm);

(0,-3) arc (-90:90:1cm and 3cm);

(8,-1.5) – (2,-1.5) arc (-90:-270:0.5cm and 1.5cm) – (8,1.5) ++ (0,-1.5) circle (0.5cm and 1.5cm);

(2,-1.5) arc (-90:90:0.5cm and 1.5cm);

(2,2) – (5,2); at (3.5,2) <span>L</span>; (5,2) – (8,2); at (6.5,2) <span>L</span>; (8,0) – (8,1.5); at (7,0.5) <span>*r*<sub>0</sub></span>; (10,0) – (10,3); at (9.5,1) <span>R</span>; (-2,0) – (12,0); (12,0) – (13,0); at (14,0) <span>*ϵ*<sub>*x*</sub></span>; (-2,0) – (-3,0); at (-4,0) <span>*ϵ*<sub>*x*</sub></span>;

<span>shear lag</span>

-   Balancing forces on a differential element we find
    $$\\begin{aligned}
                \\sum F\_x &= (\\sigma\_f + d\\sigma\_f) \\frac{\\pi d^2}{4} - \\sigma\_f\\frac{\\pi d^2}{4} - \\tau\_i (\\pi d) dx = 0\\\\
                \\frac{d\\sigma\_f}{dx} &= \\frac{4\\tau\_i}{d}
            \\end{aligned}$$

<span>shear lag</span>

-   To integrate, we need to make some assumptions

-   It is commonly assumed that the normal stress on the end of the fibers is 0

-   Various assumptions are made about the shear stress, *τ*, Kelly-Tyson assumed it is constant (rigid plastic)

-   Cox assumed *τ* is a linear function of *x*

<span>shear stress</span>

-   We can also find the shear stress by comparing adjacent annuli of matrix material around the fiber

-   This assumes that fiber and matrix are perfectly bonded (continuous displacement at boundary)

-   The force balance due to shear in adjacent annula means that *π**d**τ* = *π**d*<sub>0</sub>*τ*<sub>*i*</sub>

-   The shear stress far away from the fiber, *τ* = *G*<sub>*m*</sub>*γ*, and if $\\gamma = \\frac{du}{dr}$, then we can say
    $$\\frac{r\_0}{r} \\tau\_i = G\_m \\frac{du}{dr}$$

<span>shear stress</span>

-   We integrate to find that
    $$\\tau\_i = \\frac{G\_m(u\_R-u\_f)}{r\_0 ln(r)}$$

-   Which we can substitute into our original force-balance equation to find
    $$\\frac{d\\sigma\_f}{dx} = \\frac{4 G\_m(u\_R-u\_f)}{ d r\_0 ln(r)}$$

-   But *d* = 2*r*<sub>0</sub>, so we can simplify to
    $$\\frac{d\\sigma\_f}{dx} = \\frac{2 G\_m(u\_R-u\_f)}{ r\_0^2 ln(r)}$$

<span>shear lag</span>

-   Finally, we differentiate with respect to *x* to replace the displacements with strains

-   We assume that *d**u*<sub>*R*</sub>/*d**x* is far enough away from the fiber such that the strain is equal to far-field strain

-   The solution to the differential equation is
    *σ*<sub>*f*</sub> = *E*<sub>*f*</sub>*ϵ*<sub>1</sub> + *B*sinh(*n**x*/*r*)+*D*cos(*n**x*/*r*)

<span>stress in fibers</span>

<img src="../Figures/shearlag.png" alt="Stress near the edge of fibers in shear lag model" style="width:80.0%" />

<span>normalizing</span>

-   An interesting finding was that when we normalized distance (x) by fiber diameter

-   The shear stress was the same for any fiber length

-   This means that most/all shear stress transfer occurs near the ends

-   If fibers are not long enough, full stress profile does not develop, fibers contribute very little to stiffness

<span>next class</span>

-   Eshelby’s equivalent inclusion

-   Textbook pages 94-99 and 364 - 370 (I feel these are pretty confusing though)


