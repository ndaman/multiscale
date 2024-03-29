## AE 760AA: Micromechanics and multiscale modeling
Lecture 3 - Coordinate Transformation

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

25 January 2022

---
## schedule

-   25 Jan - Coordinate Transformation
-   27 Jan - 1D Micromechanics (HW1 Due)
-   1 Feb - Orientation Averaging
-   3 Feb - Mean-field (HW2 Due)

----
## outline

- transformation
- engineering notation

----
## office hours

- I expanded and combined office hours this semester
- Mondays 4:00 - 5:00
- Tuesdays 2:00 - 3:00
- Fridays 3:00 - 4:00

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

`$$\begin{aligned}
  Q_{ij} &= \cos (x_i^\prime, x_j)\\
&=
  \begin{bmatrix}
  \cos (x_1^\prime, x_1) & \cos (x_1^\prime, x_2)\\
  \cos (x_2^\prime, x_1) & \cos (x_2^\prime, x_2)
  \end{bmatrix}\\
  &= \begin{bmatrix}
  \cos \theta & \cos (90-\theta)\\
  \cos (90+\theta) & \cos \theta
  \end{bmatrix} \\
  &= \begin{bmatrix}
  \cos \theta & \sin \theta \\
  -\sin \theta & \cos \theta
  \end{bmatrix}
\end{aligned}$$`

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

`$$\begin{bmatrix}
  \sigma_{11} \\
\sigma_{22} \\
\sigma_{33} \\
\sigma_{23} \\
\sigma_{13} \\
\sigma_{12}
  \end{bmatrix}
  = \begin{bmatrix}
  C_{1111} & C_{1122} & C_{1133} & C_{1123} & C_{1113} & C_{1112} \\
  C_{1122} & C_{2222} & C_{2233} & C_{2223} & C_{1322} & C_{1222} \\
  C_{1133} & C_{2233} & C_{3333} & C_{2333} & C_{1333} & C_{1233} \\
  C_{1123} & C_{2223} & C_{2333} & C_{2323} & C_{1323} & C_{1223} \\
  C_{1113} & C_{1322} & C_{1333} & C_{1323} & C_{1313} & C_{1213} \\
  C_{1112} & C_{1222} & C_{1233} & C_{1223} & C_{1213} & C_{1212}
  \end{bmatrix}\begin{bmatrix}
  E_{11} \\
E_{22} \\
E_{33} \\
2E_{23} \\
2E_{13} \\
2E_{12}
\end{bmatrix}$$`

----
## orthotropic symmetry

`$$\small \begin{bmatrix}
  \sigma_{11}\\
\sigma_{22} \\
\sigma_{33} \\
\sigma_{23} \\
\sigma_{13} \\
\sigma_{12}
  \end{bmatrix}
  = \begin{bmatrix}
  C_{1111} & C_{1122} & C_{1133} & 0 & 0 & 0 \\
  C_{1122} & C_{2222} & C_{2233} & 0 & 0 & 0 \\
  C_{1133} & C_{2233} & C_{3333} & 0 & 0 & 0 \\
  0 & 0 & 0 & C_{2323} & 0 & 0 \\
  0 & 0 & 0 & 0 & C_{1313} & 0 \\
  0 & 0 & 0 & 0 & 0 & C_{1212}
  \end{bmatrix}\begin{bmatrix}
  E_{11}\\
E_{22} \\
E_{33} \\
2E_{23} \\
2E_{13} \\
2E_{12}
\end{bmatrix}$$`

----
## orthotropic symmetry

`$$\small \begin{bmatrix}
S
  \end{bmatrix}
  = \begin{bmatrix}
  1/E_1 & -\nu_{12}/E_1 & -\nu_{13}/E_1 & 0 & 0 & 0 \\
  -\nu_{21}/E_2 & 1/E_2 & -\nu_{23}/E_2 & 0 & 0 & 0 \\
  -\nu_{31}/E_3 & -\nu_{32}/E_3 & 1/E_3 & 0 & 0 & 0 \\
  0 & 0 & 0 & 1/G_{23} & 0 & 0 \\
  0 & 0 & 0 & 0 & 1/G_{13} & 0 \\
  0 & 0 & 0 & 0 & 0 & 1/G_{12}
  \end{bmatrix}
$$`

----
## transversely isotropic symmetry

`$$\small \begin{bmatrix}
  \sigma_{11}\\
\sigma_{22} \\
\sigma_{33} \\
\sigma_{23} \\
\sigma_{13} \\
\sigma_{12}
  \end{bmatrix}
  = \begin{bmatrix}
  C_{1111} & C_{1122} & C_{1133} & 0 & 0 & 0 \\
  C_{1122} & C_{1111} & C_{1133} & 0 & 0 & 0 \\
  C_{1133} & C_{1133} & C_{3333} & 0 & 0 & 0 \\
  0 & 0 & 0 & C_{1313} & 0 & 0 \\
  0 & 0 & 0 & 0 & C_{1313} & 0 \\
  0 & 0 & 0 & 0 & 0 & 1/2(C_{1111}-C_{2222})
  \end{bmatrix}\begin{bmatrix}
  E_{11}\\
E_{22} \\
E_{33} \\
2E_{23} \\
2E_{13} \\
2E_{12}
\end{bmatrix}$$`

----
## transversely isotropic symmetry

`$$\small \begin{bmatrix}
S  \end{bmatrix}
  = \begin{bmatrix}
  1/E_1 & -\nu_{12}/E_1 & -\nu_{13}/E_1 & 0 & 0 & 0 \\
  -\nu_{12}/E_1 & 1/E_1 & -\nu_{13}/E_1 & 0 & 0 & 0 \\
  -\nu_{13}/E_1 & -\nu_{13}/E_1 & 1/E_3 & 0 & 0 & 0 \\
  0 & 0 & 0 & 1/G_{13} & 0 & 0 \\
  0 & 0 & 0 & 0 & 1/G_{13} & 0 \\
  0 & 0 & 0 & 0 & 0 & 2(1+\nu_{12})/E_1
  \end{bmatrix}
$$`

----
## isotropic symmetry

`$$\scriptsize \begin{bmatrix}
  \sigma_{11}\\
\sigma_{22} \\
\sigma_{33} \\
\sigma_{23} \\
\sigma_{13} \\
\sigma_{12}
  \end{bmatrix}
  = \frac{E}{(1+\nu)(1-2\nu)}\begin{bmatrix}
  1-\nu & \nu & \nu & 0 & 0 & 0 \\
  \nu & 1-\nu & \nu & 0 & 0 & 0 \\
  \nu & \nu & 1-\nu & 0 & 0 & 0 \\
  0 & 0 & 0 & \frac{1}{2}(1-2\nu) & 0 & 0 \\
  0 & 0 & 0 & 0 & \frac{1}{2}(1-2\nu) & 0 \\
  0 & 0 & 0 & 0 & 0 & \frac{1}{2}(1-2\nu)
  \end{bmatrix}\begin{bmatrix}
  E_{11}\\
E_{22} \\
E_{33} \\
2E_{23} \\
2E_{13} \\
2E_{12}
\end{bmatrix}$$`

----
## transformation

-   We know that
- 
`$$\sigma_{mn} = Q_{im}Q_{jn} \sigma_{ij}^\prime$$`

-   We can expand this to write in terms of engineering stress
-   We will expand only two terms, as they show the general pattern for all 6

----
## stress transformation

`$$\small{\begin{aligned}
    \sigma_{1}^\prime &= \sigma_{11}^\prime =  Q_{11}Q_{11} \sigma_{11} + Q_{11}Q_{12} \sigma_{12} + Q_{11}Q_{13}\sigma_{13}\\
    & + Q_{12}Q_{11} \sigma_{21} + Q_{12}Q_{12} \sigma_{22} + Q_{12}Q_{13}\sigma_{23}\\
    & + Q_{13}Q_{11} \sigma_{31} + Q_{13}Q_{12} \sigma_{32} + Q_{13}Q_{13}\sigma_{33}
\end{aligned}}$$`

`$$\small{\begin{aligned}
    \sigma_{1}^\prime &= Q_{11}^2 \sigma_{1} + Q_{12}^2 \sigma_{2} + Q_{13}^2\sigma_{3}\\
    & + 2 Q_{11}Q_{12} \sigma_{6} + 2Q_{11}Q_{13}\sigma_{5} + 2Q_{12}Q_{13}\sigma_{4}
\end{aligned}}$$`

----
## stress transformation

`$$\begin{aligned}
 \sigma_{4}^\prime &= \sigma_{23}^\prime =  Q_{21}Q_{31} \sigma_{11} + Q_{21}Q_{32} \sigma_{12} + Q_{21}Q_{33}\sigma_{13}\\
 &+ Q_{22}Q_{31} \sigma_{21} + Q_{22}Q_{32} \sigma_{22} + Q_{22}Q_{33}\sigma_{23}\\
 &+ Q_{23}Q_{31} \sigma_{31} + Q_{23}Q_{32} \sigma_{32} + Q_{23}Q_{33}\sigma_{33}
\end{aligned}$$`

`$$\begin{aligned}
 \sigma_{4}^\prime &= Q_{21}Q_{31} \sigma_{1} + Q_{22}Q_{32} \sigma_{22} + Q_{23}Q_{33}\sigma_{3}\\
 &+ (Q_{21}Q_{32}+Q_{22}Q_{31}) \sigma_{6} + (Q_{21}Q_{33}+Q_{23}Q_{31})\sigma_{5}\\
 &+ (Q_{22}Q_{33}+Q_{23}Q_{32})\sigma_{4}
\end{aligned}$$`

----
## stress transformation

-   We often write `$\sigma^\prime =R_\sigma \sigma$` for engineering notation

`$$\scriptsize{R_\sigma = \begin{bmatrix}
      Q_{11}^2 & Q_{12}^2 & Q_{13}^2 & 2Q_{12}Q_{13} & 2 Q_{11} Q_{13} & 2Q_{11}Q_{12}\\
      Q_{21}^2 & Q_{22}^2 & Q_{23}^2 & 2Q_{22}Q_{23} & 2 Q_{21} Q_{23} & 2Q_{21}Q_{22}\\
      Q_{31}^2 & Q_{32}^2 & Q_{33}^2 & 2Q_{32}Q_{33} & 2 Q_{31} Q_{33} & 2Q_{31}Q_{32}\\
      Q_{21}Q_{31} & Q_{22}Q_{32} & Q_{23}Q_{33} & Q_{23}Q_{32} + Q_{22}Q_{33} & Q_{23}Q_{31} + Q_{21}Q_{33} & Q_{22}Q_{31} + Q_{21}Q_{32}\\
      Q_{11}Q_{31} & Q_{12}Q_{32} & Q_{13}Q_{33} & Q_{13}Q_{32} + Q_{12}Q_{33} & Q_{13}Q_{31} + Q_{11}Q_{33} & Q_{12}Q_{31} + Q_{11}Q_{32}\\
      Q_{11}Q_{21} & Q_{12}Q_{22} & Q_{13}Q_{23} & Q_{13}Q_{22} + Q_{12}Q_{23} & Q_{13}Q_{21} + Q_{11}Q_{23} & Q_{12}Q_{21} + Q_{11}Q_{22}
\end{bmatrix}}$$`

----
## strain transformation

-   We can follow the exact same procedure to transform strain
-   The values are almost the same, notice the highlighted terms
 
`$$\require{color} \tiny{R_\epsilon = \begin{bmatrix}
    Q_{11}^2 & Q_{12}^2 & Q_{13}^2 & {    \colorbox{red}{$ Q_{12}Q_{13} $}} &  {    \colorbox{red}{$ Q_{11} Q_{13} $}} & {    \colorbox{red}{$ Q_{11}Q_{12} $}}\\
    Q_{21}^2 & Q_{22}^2 & Q_{23}^2 & {    \colorbox{red}{$ Q_{22}Q_{23} $}} &  {    \colorbox{red}{$ Q_{21} Q_{23} $}} & {    \colorbox{red}{$ Q_{21}Q_{22} $}}\\
    Q_{31}^2 & Q_{32}^2 & Q_{33}^2 & {    \colorbox{red}{$ Q_{32}Q_{33} $}} &  {    \colorbox{red}{$ Q_{31} Q_{33} $}} & {    \colorbox{red}{$ Q_{31}Q_{32} $}}\\
    {    \colorbox{red}{$ 2Q_{21}Q_{31} $}} & {    \colorbox{red}{$ 2Q_{22}Q_{32} $}} & {    \colorbox{red}{$ 2Q_{23}Q_{33} $}} & Q_{23}Q_{32} + Q_{22}Q_{33} & Q_{23}Q_{31} + Q_{21}Q_{33} & Q_{22}Q_{31} + Q_{21}Q_{32}\\
    {    \colorbox{red}{$ 2Q_{11}Q_{31} $}} & {    \colorbox{red}{$ 2Q_{12}Q_{32} $}} & {    \colorbox{red}{$ 2Q_{13}Q_{33} $}} & Q_{13}Q_{32} + Q_{12}Q_{33} & Q_{13}Q_{31} + Q_{11}Q_{33} & Q_{12}Q_{31} + Q_{11}Q_{32}\\
    {    \colorbox{red}{$ 2Q_{11}Q_{21} $}} & {    \colorbox{red}{$ 2Q_{12}Q_{22} $}} & {    \colorbox{red}{$ 2Q_{13}Q_{23} $}} & Q_{13}Q_{22} + Q_{12}Q_{23} & Q_{13}Q_{21} + Q_{11}Q_{23} & Q_{12}Q_{21} + Q_{11}Q_{22}
\end{bmatrix}}$$`

----
## stiffness 

-   We can now formulate the transformation of the stiffness matrix. We know that
 
`$$ \sigma^\prime = R_\sigma\sigma = C^\prime E^\prime$$`

-   And since `$\sigma=CE$`, we can say
 
`$$ R_\sigma CE = C^\prime E^\prime$$`

----
## stiffness

-   Now we know that `$E^\prime = R_E E$`, so we substitute that to find
 
`$$ R_\sigma CE = C^\prime R_E E$$`

-   We can right multiply both sides by `$E^{-1}$` to cancel *E*
-   Then we can right multiply both sides by `$R_E^{-1}$` to get `$C^\prime$` by itself

`$$C^\prime = R_\sigma C (R_E)^{-1}$$`

-   Note that `$R_E^{-1} = R_\sigma^T$`

----
## conventions

-   There are two things that can be very confusing when transforming engineering stiffness
-   First, while I have used the most standard ordering of stress/strain terms, not everyone uses the same order
-   Second, the equations used here are for engineering strain (which is the most common)
-   However, tensorial strain may also be used, in which case `$R_\sigma = R_E$`, but that adds other complications

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

`$$\begin{aligned}
  \bar{\sigma}_{ij} &= \frac{1}{V}\int_V \sigma_{ij}(x,y,z) dV\\
  \bar{\epsilon}_{ij} &= \frac{1}{V}\int_V \epsilon_{ij}(x,y,z) dV
\end{aligned}$$`

----
## equivalent solid

-   If we have only two phases (fiber and matrix), and we use engineering notation, this average can be expressed as

`$$\begin{aligned}
  \bar{\sigma}_{i} &= \frac{1}{V}\left(\int_{V^f} \sigma^f_{i}(x,y,z) dV  + \int_{V^m} \sigma^m_{i}(x,y,z) dV\right)\\
  \bar{\epsilon}_{i} &= \frac{1}{V}\left(\int_{V^f} \epsilon^f_{i}(x,y,z) dV  + \int_{V^m} \epsilon^m_{i}(x,y,z) dV\right)
\end{aligned}$$`

----
## equivalent solid

-   We also know that in the fiber and matrix, respectively, Hooke's Law still holds
 
`$$ \sigma_i = C_{ij} \epsilon_j $$`

-   And this must be true for the average as well

`$$\bar{\sigma}_i = C_{ij} \bar{\epsilon}_j$$`

----
## voigt

-   Voigt considered a two-phase composite with a uniform strain imposed on both phases
-   The uniform strain assumption means that
 
`$$ \epsilon_i^f = \epsilon_i^m = \epsilon_i$$`

-   While a macroscopically homogeneous strain does not necessarily impose a locally homogeneous strain field, Voigt assumed that

`$$\epsilon_i = \bar{\epsilon}_i$$`

----
## voigt

-   This assumption results in

`$$\begin{aligned}
  \bar{\sigma}_i &= \frac{1}{V}\left(\int_{V^f} C_{ij}^f\bar{\epsilon}_j dV  + \int_{V^m} C_{ij}^m\bar{\epsilon}_j dV\right)\\
  \bar{\sigma}_i &= \left( \frac{V_f}{V} C_{ij}^f + \frac{V_m}{V} C_{ij}^m\right)\bar{\epsilon}_j
\end{aligned}$$`

-   This gives the well-known rule of mixtures for `$C_{ij}$`
 
`$$C_{ij}^c = \frac{V_f}{V} C_{ij}^f + \frac{V_m}{V} C_{ij}^m$$`

----
## reuss

-   If we instead assume a uniform stress imposed on both phases such that

`$$\sigma_i^f = \sigma_i^m = \sigma_i = \bar{\sigma}_i$$`

-   We would find the identical relationship, but with compliance instead of stiffness

`$$\begin{aligned}
  \bar{\epsilon}_i &= \frac{1}{V}\left(\int_{V^f} S_{ij}^f\bar{\sigma}_j dV  + \int_{V^m} S_{ij}^m\bar{\sigma}_j dV\right)\\
  \bar{\epsilon}_i &= \left( \frac{V_f}{V} S_{ij}^f + \frac{V_m}{V} S_{ij}^m\right)\bar{\sigma}_j
\end{aligned}$$`

----
## bounds

-   In general, the Voigt assumption (homogeneous strain, rule of mixtures for stiffness) gives an upper bound for stiffness
-   On the other hand, the Reuss assmption (homogeneous stress, rule of mixtures for compliance) gives a lower bound for stiffness
-   In uni-directional composites, the Voigt model is good enough for `$E_1$` and `$\nu_{12}$` predictions, but not for `$E_2$` or `$G_{12}$`

----
## subregions

-   Hopkins and Chamis considered a refined model to subdivide the RVE into sub-regions
-   This gives reasonable predictions for `$E_2$` and `$G_{12}$`

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

![shear lag diagram](../images/shearlag-intro.PNG)

----
## shear lag

-   Balancing forces on a differential element we find

`$$\begin{aligned}
  \sum F_x &= (\sigma_f + d\sigma_f) \frac{\pi d^2}{4} - \sigma_f\frac{\pi d^2}{4} - \tau_i (\pi d) dx = 0\\
  \frac{d\sigma_f}{dx} &= \frac{4\tau_i}{d}
\end{aligned}$$`

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

`$$ t \pi d \tau = t \pi d_0 \tau_i $$`

----
## shear stress
-   The shear stress far away from the fiber, `$\tau = G_m \gamma$`, and if `$\gamma = \frac{du}{dr}$` then we can say

`$$\frac{r_0}{r} \tau_i = G_m \frac{du}{dr}$$`

-   We integrate to find that

`$$\tau_i = \frac{G_m(u_R-u_f)}{r_0 ln(r)}$$`

----
## shear stress

-   Which we can substitute into our original force-balance equation to find

`$$\frac{d\sigma_f}{dx} = \frac{4 G_m(u_R-u_f)}{ d r_0 ln(r)}$$`

-   But `$d=2r_0$`, so we can simplify to

`$$\frac{d\sigma_f}{dx} = \frac{2 G_m(u_R-u_f)}{ r_0^2 ln(r)}$$`

----
## shear lag

-   Finally, we differentiate with respect to *x* to replace the displacements with strains
-   We assume that `$du_R/dx$` is far enough away from the fiber such that the strain is equal to far-field strain
-   The solution to the differential equation is

`$$\sigma_f = E_f \epsilon_1 + B\sinh(nx/r) + D\cos(nx/r)$$`

----
## stress in fibers

![Stress near the edge of fibers in shear lag model](../images/shearlag.png)

----
## normalizing

-   An interesting finding was that when we normalized distance (x) by fiber diameter
-   The shear stress was the same for any fiber length
-   This means that most/all shear stress transfer occurs near the ends
-   If fibers are not long enough, full stress profile does not develop, fibers contribute very little to stiffness

----
## next class

-   Eshelby's equivalent inclusion
