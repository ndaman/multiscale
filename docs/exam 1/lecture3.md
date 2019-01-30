<style>
.left {
  left:-8.33%;
  text-align: left;
  float: left;
  width:50%;
  z-index:-10;
}
.right {
  left:31.25%;
  top: 75px;
  float: right;
  text-align: right;
  z-index:-10;
  width:50%;
}
</style>

## AE 760AA: Micromechanics and multiscale modeling
Lecture 3 - Coordinate Transformation

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

January 30, 2019

---
## schedule

-   Jan 30 - Coordinate Transformation
-   Feb 4 - 1D Micromechanics (HW1 Due)
-   Feb 6 - Mean-field
-   Feb 11 - Orientation Averaging

----

## outline
- transformation
- engineering notation

---
# transformation

----
## general coordinate transformation

-   Coordinate transformation can become much more complicated in three dimensions, and with higher-order tensors
-   It is convenient to define a general form of the coordinate transformation in index notation
-   We define `$Q_{ij}$` as the cosine of the angle between the `$x_i^\prime$` axis and the `$x_j$` axis.
-   This is also referred to as the "direction cosine"
`$$Q_{ij} = \cos(x_i^\prime, x_j)$$`

----

## mental and emotional health warning

- Different textbooks flip the definition of `$Q_{ij}$` (Elasticity and Continuum texts have opposite definitions, for example)
- The result gives the transpose
- Always use equations (next slide) from the same source as your `$Q_{ij}$` definition

----

## general coordinate transformation

-   We can transform any-order tensor using `$Q_{ij}$`
-   Vectors (first-order tensors): `$v_i^\prime = Q_{ij} v_j$`
-   Matrices (second-order tensors): `$\sigma_{ij}^\prime = Q_{im}Q_{jn} \sigma_{mn}$`
-   Fourth-order tensors: `$C_{ijkl}^\prime = Q_{im}Q_{jn}Q_{ko}Q_{lp} C_{mnop}$`

----

## transformation

-   We can use this form on our 2D transformation example
$$\\begin{aligned}
  Q\_{ij} &= \\cos (x\_i^\\prime, x\_j)\\\\ &=
  \\begin{bmatrix}
  \\cos (x\_1^\\prime, x\_1) & \\cos (x\_1^\\prime, x\_2)\\\\
  \\cos (x\_2^\\prime, x\_1) & \\cos (x\_2^\\prime, x\_2)
  \\end{bmatrix}\\\\
  &= \\begin{bmatrix}
  \\cos \\theta & \\cos (90-\\theta)\\\\
  \\cos (90+\\theta) & \\cos \\theta
  \\end{bmatrix} \\\\
  &= \\begin{bmatrix}
  \\cos \\theta & \\sin \\theta \\\\
  -\\sin \\theta & \\cos \\theta
  \\end{bmatrix}
\\end{aligned}$$

----

## general coordinate transformation

-   We can similarly use `$Q_{ij}$` to find tensors in the original coordinate system
-   Vectors (first-order tensors): `$v_j = Q_{ij} v_i^\prime$`
-   Matrices (second-order tensors): `$\sigma_{mn} = Q_{im}Q_{jn} \sigma_{ij}^\prime$`
-   Fourth-order tensors: `$C_{mnop} = Q_{im}Q_{jn}Q_{ko}Q_{lp} C_{ijkl}^\prime$`

----

## general coordinate transformation

-   We can derive some interesting properties of the transformation tensor, `$Q_{ij}$`
-   We know that `$v_i^\prime = Q_{ij} v_j$` and that `$v_j = Q_{ij} v_i^\prime$`
-   If we substitute (changing the appropriate indexes) we find:
-   `$v_j = Q_{ij} Q_{ik} v_k$`
-   We can now use the Kronecker Delta to substitute `$v_j = \delta_{jk}v_k$`
-   `$\delta_{jk}v_k = Q_{ij} Q_{ik} v_k$`

---
# engineering notation

----
## engineering notation
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

----

## orthotropic symmetry
$$\\small \\begin{bmatrix}
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

----

## transversely isotropic symmetry
$$\\small \\begin{bmatrix}
  \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
  \\end{bmatrix}
  = \\begin{bmatrix}
  C\_{1111} & C\_{1122} & C\_{1133} & 0 & 0 & 0 \\\\
  C\_{1122} & C\_{1111} & C\_{1133} & 0 & 0 & 0 \\\\
  C\_{1133} & C\_{1133} & C\_{3333} & 0 & 0 & 0 \\\\
  0 & 0 & 0 & C\_{1313} & 0 & 0 \\\\
  0 & 0 & 0 & 0 & C\_{1313} & 0 \\\\
  0 & 0 & 0 & 0 & 0 & 1/2(C\_{1111}-C\_{2222})
  \\end{bmatrix}\\begin{bmatrix}
  E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
\\end{bmatrix}$$

----

## isotropic symmetry
$$\\scriptsize \\begin{bmatrix}
  \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
  \\end{bmatrix}
  = \\frac{E}{(1+\\nu)(1-2\\nu)}\\begin{bmatrix}
  1-\\nu & \\nu & \\nu & 0 & 0 & 0 \\\\
  \\nu & 1-\\nu & \\nu & 0 & 0 & 0 \\\\
  \\nu & \\nu & 1-\\nu & 0 & 0 & 0 \\\\
  0 & 0 & 0 & \\frac{1}{2}(1-2\\nu) & 0 & 0 \\\\
  0 & 0 & 0 & 0 & \\frac{1}{2}(1-2\\nu) & 0 \\\\
  0 & 0 & 0 & 0 & 0 & \\frac{1}{2}(1-2\\nu)
  \\end{bmatrix}\\begin{bmatrix}
  E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
\\end{bmatrix}$$

----
## transformation

-   We know that
`$$\sigma_{mn} = Q_{im}Q_{jn} \sigma_{ij}^\prime$$`
-   We can expand this to write in terms of engineering stress
-   We will expand only two terms, as they show the general pattern for all 6

----
## stress transformation

$$\\small{\\begin{align}
    \\sigma\_{1}^\\prime &= \\sigma\_{11}^\\prime =  Q\_{11}Q\_{11} \\sigma\_{11} + Q\_{11}Q\_{12} \\sigma\_{12} + Q\_{11}Q\_{13}\\sigma\_{13}\\\\
    & + Q\_{12}Q\_{11} \\sigma\_{21} + Q\_{12}Q\_{12} \\sigma\_{22} + Q\_{12}Q\_{13}\\sigma\_{23}\\\\
    & + Q\_{13}Q\_{11} \\sigma\_{31} + Q\_{13}Q\_{12} \\sigma\_{32} + Q\_{13}Q\_{13}\\sigma\_{33}
\\end{align}}$$

$$\\small{\\begin{align}
    \\sigma\_{1}^\\prime &= Q\_{11}^2 \\sigma\_{1} + Q\_{12}^2 \\sigma\_{2} + Q\_{13}^2\\sigma\_{3}\\\\
    & + 2 Q\_{11}Q\_{12} \\sigma\_{6} + 2Q\_{11}Q\_{13}\\sigma\_{5} + 2Q\_{12}Q\_{13}\\sigma\_{4}
\\end{align}}$$

----
## stress transformation
$$\\begin{align}
 \\sigma\_{4}^\\prime &= \\sigma\_{23}^\\prime =  Q\_{21}Q\_{31} \\sigma\_{11} + Q\_{21}Q\_{32} \\sigma\_{12} + Q\_{21}Q\_{33}\\sigma\_{13}\\\\
 &+ Q\_{22}Q\_{31} \\sigma\_{21} + Q\_{22}Q\_{32} \\sigma\_{22} + Q\_{22}Q\_{33}\\sigma\_{23}\\\\
 &+ Q\_{23}Q\_{31} \\sigma\_{31} + Q\_{23}Q\_{32} \\sigma\_{32} + Q\_{23}Q\_{33}\\sigma\_{33}
\\end{align}$$

$$\\begin{align}
 \\sigma\_{4}^\\prime &= Q\_{21}Q\_{31} \\sigma\_{1} + Q\_{22}Q\_{32} \\sigma\_{22} + Q\_{23}Q\_{33}\\sigma\_{3}\\\\
 &+ (Q\_{21}Q\_{32}+Q\_{22}Q\_{31}) \\sigma\_{6} + (Q\_{21}Q\_{33}+Q\_{23}Q\_{31})\\sigma\_{5}\\\\
 &+ (Q\_{22}Q\_{33}+Q\_{23}Q\_{32})\\sigma\_{4}
\\end{align}$$

----
## stress transformation

-   We often write `$\sigma^\prime =R_\sigma \sigma$` for engineering notation
$$\\scriptsize{R\_\\sigma = \\begin{bmatrix}
      Q\_{11}^2 & Q\_{12}^2 & Q\_{13}^2 & 2Q\_{12}Q\_{13} & 2 Q\_{11} Q\_{13} & 2Q\_{11}Q\_{12}\\\\
      Q\_{21}^2 & Q\_{22}^2 & Q\_{23}^2 & 2Q\_{22}Q\_{23} & 2 Q\_{21} Q\_{23} & 2Q\_{21}Q\_{22}\\\\
      Q\_{31}^2 & Q\_{32}^2 & Q\_{33}^2 & 2Q\_{32}Q\_{33} & 2 Q\_{31} Q\_{33} & 2Q\_{31}Q\_{32}\\\\
      Q\_{21}Q\_{31} & Q\_{22}Q\_{32} & Q\_{23}Q\_{33} & Q\_{23}Q\_{32} + Q\_{22}Q\_{33} & Q\_{23}Q\_{31} + Q\_{21}Q\_{33} & Q\_{22}Q\_{31} + Q\_{21}Q\_{32}\\\\
      Q\_{11}Q\_{31} & Q\_{12}Q\_{32} & Q\_{13}Q\_{33} & Q\_{13}Q\_{32} + Q\_{12}Q\_{33} & Q\_{13}Q\_{31} + Q\_{11}Q\_{33} & Q\_{12}Q\_{31} + Q\_{11}Q\_{32}\\\\
      Q\_{11}Q\_{21} & Q\_{12}Q\_{22} & Q\_{13}Q\_{23} & Q\_{13}Q\_{22} + Q\_{12}Q\_{23} & Q\_{13}Q\_{21} + Q\_{11}Q\_{23} & Q\_{12}Q\_{21} + Q\_{11}Q\_{22}
\\end{bmatrix}}$$

----
## strain transformation

-   We can follow the exact same procedure to transform strain
-   The values are almost the same, notice the highlighted terms
$$\require{color} \\tiny{R\_\\epsilon = \\begin{bmatrix}
    Q\_{11}^2 & Q\_{12}^2 & Q\_{13}^2 & {    \\colorbox{red}{$ Q\_{12}Q\_{13} $}} &  {    \\colorbox{red}{$ Q\_{11} Q\_{13} $}} & {    \\colorbox{red}{$ Q\_{11}Q\_{12} $}}\\\\
    Q\_{21}^2 & Q\_{22}^2 & Q\_{23}^2 & {    \\colorbox{red}{$ Q\_{22}Q\_{23} $}} &  {    \\colorbox{red}{$ Q\_{21} Q\_{23} $}} & {    \\colorbox{red}{$ Q\_{21}Q\_{22} $}}\\\\
    Q\_{31}^2 & Q\_{32}^2 & Q\_{33}^2 & {    \\colorbox{red}{$ Q\_{32}Q\_{33} $}} &  {    \\colorbox{red}{$ Q\_{31} Q\_{33} $}} & {    \\colorbox{red}{$ Q\_{31}Q\_{32} $}}\\\\
    {    \\colorbox{red}{$ Q\_{21}Q\_{31} $}} & {    \\colorbox{red}{$ Q\_{22}Q\_{32} $}} & {    \\colorbox{red}{$ Q\_{23}Q\_{33} $}} & Q\_{23}Q\_{32} + Q\_{22}Q\_{33} & Q\_{23}Q\_{31} + Q\_{21}Q\_{33} & Q\_{22}Q\_{31} + Q\_{21}Q\_{32}\\\\
    {    \\colorbox{red}{$ Q\_{11}Q\_{31} $}} & {    \\colorbox{red}{$ Q\_{12}Q\_{32} $}} & {    \\colorbox{red}{$ Q\_{13}Q\_{33} $}} & Q\_{13}Q\_{32} + Q\_{12}Q\_{33} & Q\_{13}Q\_{31} + Q\_{11}Q\_{33} & Q\_{12}Q\_{31} + Q\_{11}Q\_{32}\\\\
    {    \\colorbox{red}{$ Q\_{11}Q\_{21} $}} & {    \\colorbox{red}{$ Q\_{12}Q\_{22} $}} & {    \\colorbox{red}{$ Q\_{13}Q\_{23} $}} & Q\_{13}Q\_{22} + Q\_{12}Q\_{23} & Q\_{13}Q\_{21} + Q\_{11}Q\_{23} & Q\_{12}Q\_{21} + Q\_{11}Q\_{22}
\\end{bmatrix}}$$

----
## stiffness transformation

-   We can now formulate the transformation of the stiffness matrix. We know that
$$ \sigma^\prime = R \sigma_\sigma = C^\prime E^\prime$$    
-   And since `$\sigma=CE$`, we can say
$$ R_\sigma CE = C^\prime E^\prime$$
-   Now we know that `$E^\prime = R_E E$`, so we substitute that to find
$$ R_\sigma CE = C^\prime R_E E$$
----
## stiffness transformation

-   We can right multiply both sides by *E*<sup>−1</sup> to cancel *E*
-   Then we can right multiply both sides by *R*<sub>*E*</sub><sup>−1</sup> to get *C*<sup>'</sup> by itself
$$C^\prime = R_\sigma C (R_E)^{-1}$$
-   Note that *R*<sub>*E*</sub><sup>−1</sup> = *R*<sub>*σ*</sub><sup>*T*</sup>

----
## conventions

-   There are two things that can be very confusing when transforming engineering stiffness
-   First, while I have used the most standard ordering of stress/strain terms, not everyone uses the same order
-   Second, the equations used here are for engineering strain (which is the most common)
-   However, tensorial strain may also be used, in which case *R*<sub>*σ*</sub> = *R*<sub>*E*</sub>, but that adds other complications

---
# one dimensional micromechanics

----
## one dimensional micromechanics

-   Some simple one-dimensional micromechanics models are useful as bounding cases
-   The first micromechancis models were developed by Voigt and Reuss
-   These provide a type of bound to possible solutions
-   Some improvements were made using the method of cells

----
## equivalent solid

-   The goal of all micromechanics models is to use the known properties of constituents to find the large-scale behavior
-   We can find this by averaging the stress and strain tensors over the volume of some RVE
$$\\begin{aligned}
  \\bar{\\sigma}\_{ij} &= \\frac{1}{V}\\int\_V \\sigma\_{ij}(x,y,z) dV\\\\
  \\bar{\\epsilon}\_{ij} &= \\frac{1}{V}\\int\_V \\epsilon\_{ij}(x,y,z) dV
\\end{aligned}$$

----
## equivalent solid

-   If we have only two phases (fiber and matrix), and we use engineering notation, this average can be expressed as
$$\\begin{aligned}
  \\bar{\\sigma}\_{i} &= \\frac{1}{V}\\left(\\int\_{V^f} \\sigma^f\_{i}(x,y,z) dV  + \\int\_{V^m} \\sigma^m\_{i}(x,y,z) dV\\right)\\\\
  \\bar{\\epsilon}\_{i} &= \\frac{1}{V}\\left(\\int\_{V^f} \\epsilon^f\_{i}(x,y,z) dV  + \\int\_{V^m} \\epsilon^m\_{i}(x,y,z) dV\\right)
\\end{aligned}$$

----
## equivalent solid

-   We also know that in the fiber and matrix, respectively, Hooke's Law still holds
`$$ \sigma_i = C_{ij} \epsilon_j $$`
-   And this must be true for the average as well
$$\\bar{\\sigma}\_i = C\_{ij} \\bar{\\epsilon}\_j$$

----
## voigt

-   Voigt considered a two-phase composite with a uniform strain imposed on both phases
-   The uniform strain assumption means that
$$ \epsilon_i^f = \epsilon_i^m = \epsilon_i$$

-   While a macroscopically homogeneous strain does not necessarily impose a locally homogeneous strain field, Voigt assumed that
$$\\epsilon\_i = \\bar{\\epsilon}\_i$$

----
## voigt

-   This assumption results in
$$\\begin{aligned}
  \\bar{\\sigma}\_i &= \\frac{1}{V}\\left(\\int\_{V^f} C\_{ij}^f\\bar{\\epsilon}\_j dV  + \\int\_{V^m} C\_{ij}^m\\bar{\\epsilon}\_j dV\\right)\\\\
  \\bar{\\sigma}\_i &= \\left( \\frac{V\_f}{V} C\_{ij}^f + \\frac{V\_m}{V} C\_{ij}^m\\right)\\bar{\\epsilon}\_j
\\end{aligned}$$

-   This gives the well-known rule of mixtures for *C*<sub>*ij*</sub>
$$C\_{ij}^c = \\frac{V\_f}{V} C\_{ij}^f + \\frac{V\_m}{V} C\_{ij}^m$$

----
## reuss

-   If we instead assume a uniform stress imposed on both phases such that
$$\\sigma\_i^f = \\sigma\_i^m = \\sigma\_i = \\bar{\\sigma}\_i$$

-   We would find the identical relationship, but with compliance instead of stiffness
$$\\begin{aligned}
  \\bar{\\epsilon}\_i &= \\frac{1}{V}\\left(\\int\_{V^f} S\_{ij}^f\\bar{\\sigma}\_j dV  + \\int\_{V^m} S\_{ij}^m\\bar{\\sigma}\_j dV\\right)\\\\
  \\bar{\\epsilon}\_i &= \\left( \\frac{V\_f}{V} S\_{ij}^f + \\frac{V\_m}{V} S\_{ij}^m\\right)\\bar{\\sigma}\_j
\\end{aligned}$$

----
## bounds

-   In general, the Voigt assumption (homogeneous strain, rule of mixtures for stiffness) gives an upper bound for stiffness
-   On the other hand, the Reuss assmption (homogeneous stress, rule of mixtures for compliance) gives a lower bound for stiffness
-   In uni-directional composites, the Voigt model is good enough for *E*<sub>1</sub> and *v*<sub>12</sub> predictions, but not for *E*<sub>2</sub> or *G*<sub>12</sub>

----
## subregions

-   Hopkins and Chamis considered a refined model to subdivide the RVE into sub-regions
-   This gives reasonable predictions for *E*<sub>2</sub> and *G*<sub>12</sub>

---

# discontinuous composites

----
## discontinuous fibers

-   The previous models all assumed that the constituent (fiber) was infinitely long
-   There are many cases where we want to consider discontinuous fibers
-   Weaker than continuous composites, but easier to mass-produce, more shapes can be made
-   We will consider a simple model for aligned composites (shear lag)

----
## shear lag

![shear lag diagram](images\shearlag-intro.PNG)

----
## shear lag

-   Balancing forces on a differential element we find
$$\\begin{aligned}
  \\sum F\_x &= (\\sigma\_f + d\\sigma\_f) \\frac{\\pi d^2}{4} - \\sigma\_f\\frac{\\pi d^2}{4} - \\tau\_i (\\pi d) dx = 0\\\\
  \\frac{d\\sigma\_f}{dx} &= \\frac{4\\tau\_i}{d}
\\end{aligned}$$

----
## shear lag

-   To integrate, we need to make some assumptions
-   It is commonly assumed that the normal stress on the end of the fibers is 0
-   Various assumptions are made about the shear stress, `$\tau$`, Kelly-Tyson assumed it is constant (rigid plastic)
-   Cox assumed `$\tau$` is a linear function of *x*

----
## shear stress

-   We can also find the shear stress by comparing adjacent annuli of matrix material around the fiber
-   This assumes that fiber and matrix are perfectly bonded (continuous displacement at boundary)
-   The force balance due to shear in adjacent annula means that
`$$ \pi d t = \pi d_0 \tau_i $$`
-   The shear stress far away from the fiber, `$\tau = G_m \gamma$`, and if $\\gamma = \\frac{du}{dr}$, then we can say
    $$\\frac{r\_0}{r} \\tau\_i = G\_m \\frac{du}{dr}$$

----
## shear stress

-   We integrate to find that
    $$\\tau\_i = \\frac{G\_m(u\_R-u\_f)}{r\_0 ln(r)}$$

-   Which we can substitute into our original force-balance equation to find
    $$\\frac{d\\sigma\_f}{dx} = \\frac{4 G\_m(u\_R-u\_f)}{ d r\_0 ln(r)}$$

-   But *d*=2*r*<sub>0</sub>, so we can simplify to
    $$\\frac{d\\sigma\_f}{dx} = \\frac{2 G\_m(u\_R-u\_f)}{ r\_0^2 ln(r)}$$

----
## shear lag

-   Finally, we differentiate with respect to *x* to replace the displacements with strains

-   We assume that *du*<sub>*R*</sub>/*dx* is far enough away from the fiber such that the strain is equal to far-field strain

-   The solution to the differential equation is
`$$\sigma_f = E_f \epsilon_1 + B\sinh(nx/r) + D\cos(nx/r)$$`

----
## stress in fibers

![Stress near the edge of fibers in shear lag model](images\shearlag.png)

----
## normalizing

-   An interesting finding was that when we normalized distance (x) by fiber diameter
-   The shear stress was the same for any fiber length
-   This means that most/all shear stress transfer occurs near the ends
-   If fibers are not long enough, full stress profile does not develop, fibers contribute very little to stiffness

----
## next class

-   Eshelby's equivalent inclusion
-   Textbook pages 94-99 and 364 - 370 (I feel these are pretty confusing though)
