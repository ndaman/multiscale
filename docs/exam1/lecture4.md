## AE 760AA: Micromechanics and multiscale modeling
Lecture 4 - Eshelby

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

27 January 2022

---
## schedule

-   27 Jan - 1D Micromechanics (HW1 Due)
-   1 Feb - Mean-field
-   3 Feb - Orientation Averaging (HW2 Due)
-   8 Feb - Variational Calculus

----
## outline

- eshelby
- aspect ratio

---
# eshelby's equivalent inclusion

----
## eshelby

-   Eshelby formulated the exact elastic solution for an elliptical inclusion in an infinite matrix
-   While this is not often useful, it serves as an exact analytical model to compare numerical results with
-   It is also the base for more useful mean-field theories

----
## eshelby's thought experiment

-   Eshelby solution starts with a thought experiment
-   Suppose we have a homogeneous, elastic body in equilibrium
-   We now cut an ellipsoidal pieces out of that body and allow it to undergo a stress-free transformation, such as thermal expansion
-   This stress-free transformation is referred to as the transformation strain, `$\epsilon^T$`

----
## eshelby's thought experiment

![Eshelby's thought experiment](../images/eshelby.png) <!-- .element width="50%" -->

----
## eshelby's thought experiment

-   Now, we weld that expanded ellipsoid back into the original body
-   Tractions need to be applied to force it to fit
-   Once the stresses equilibrate, the ellipsoid has a constrained strain, `$\epsilon^C$`

----
## eshelby

-   After equilibrium is reached the inclusion is still under a state of uniform strain
-   The inclusion stress, `$\sigma_I$` can be found as:

`$$\sigma_I = C_m (\epsilon^C - \epsilon^T)$$`

Where `$C_m$` is the stiffness of the material.

----
## eshelby

-   One of Eshelby's critical findings is that
 
`$$\epsilon^C = S \epsilon^T$$`

-   *S* is known as the Eshelby Tensor, and is a fourth-order tensor
-   Function of shape and poisson's ratio
-   It has been calculated exactly for ellipsoids, and numerically for other shapes

----
## eshelby tensor
<!-- -- id="eshelby-params" -->

-   `$\nu$` represents the matrix Poisson's ratio
-   *s* is the aspect ratio of the fibers
-   `$I_1 = \frac{2s}{\left(s^2-1\right)^{\frac{3}{2}}}(s{\left(s^2-1\right)}^{\frac{1}{2}}-\cosh^{-1} s)$`
-   `$Q=\frac{3}{8(1-\nu)}$`
-   `$R=\frac{1-2\nu}{8(1-\nu)}$`
-   `$T=\frac{Q\left(4-3I_1\right)}{3(s^2-1)}$`
-   `$I_3 = 4-2I_1$`

----
## eshelby tensor
<!-- -- id="eshelby-table" -->


| `$S_{ijkl}$`  | Long Fibers                               | Short Fibers (Ellipsoids)                |
|:-------------:|:-----------------------------------------:|:---:|
| `$S_{1111}=S_{2222}$` | `$\frac{5-\nu}{8(1-\nu)}$`| `$Q+RI_1+\frac{3T}{4}$` |
| `$S_{3333}$` | 0 | `$\frac{4Q}{3}+RI_3+2s^2T$` |
| `$S_{1122} = S_{2211}$` | `$\frac{-1+4\nu}{8(1-\nu)}$` | `$\frac{Q}{3}-RI_1+\frac{4T}{3}$` |
| `$S_{1133} = S_{2233}$` | `$\frac{\nu}{2(1-\nu)}$` | `$-R I_1 - s^2T$` |
| `$S_{3311} = S_{3322}$` | 0 | `$-R I_3 - T$` |
| `$\begin{aligned} S_{1212} & = S_{1221} \\& = S_{2112}=S_{2121} \end{aligned}$` | `$\frac{3-4\nu}{8\left(1-\nu\right)}$` | `$\frac{Q}{3}+RI_1+\frac{T}{4}$` |
| `$\begin{aligned} S_{1313} & = S_{1331} \\&=S_{3113}=S_{3131}\\&=S_{3232}=S_{3223}\\&=S_{2332}=S_{2323}   \end{aligned}$` | `$\frac{1}{4}$` | `$2R-\frac{I_1R}{2}-\frac{1+s^2}{2}T$` |
| all other `$S_{ijkl}$` | 0 | 0 |

----
## inclusions

-   Eshelby's initial thought experiment was for a homogeneous material
-   To consider a different type of inclusion, we need to relate the transformation strain between some fictitious ellipsoid of matrix material which would be equivalent to our inclusion.
-   We will refer to the inclusion stiffness as `$C_f$`, the transformation strain in the matrix as `$\epsilon^T$`, and the transformation strain in the inclusion `$\epsilon^{T*}$`.

----
## inclusions

-   We are trying to find a transformation equivalent to our inclusion, so we set

`$$\sigma_I = C_m(\epsilon^C - \epsilon^T) = C_f(\epsilon^C-\epsilon^{T*})$$`

-   Now we substitute the relation `$\epsilon^C = S\epsilon^T$`

`$$C_m(S - I)\epsilon^T = C_f(S \epsilon^T-\epsilon^{T*})$$`

----
## inclusions 

-   We can solve this to find the transformation strain

`$$\epsilon^T = \left [ (C_f - C_m)S + C_m\right]^{-1} C_f \epsilon^{T*}$$`

-   Since the transformation strain is arbitrary, we can choose `$\epsilon^T$` such that `$\epsilon^{T*}$` is 0
-   Now suppose we impose some strain, `$\epsilon^0$` on the composite

----
## stiffness

-   The stress in the inclusion will be

`$$\sigma_I = C_m (\epsilon^0 + \epsilon^C - \epsilon^T) = C_f (\epsilon^0 + \epsilon^C)$$`

-   Simplifying terms gives

`$$\left ( C_f - C_m \right ) \left ( \epsilon^0 + \epsilon^C \right) = -C_m \epsilon^T$$`

----
## stiffness

-   We now assume `$\epsilon^0 + \epsilon^C = \bar{\epsilon}^f$` and multiply both sides by `$S C_m^{-1}$`

`$$S \left( C_m \right ) ^{-1} \left ( C_f - C_m \right ) \bar{\epsilon}^f = -\epsilon^C$$`

-   Recall `$S\epsilon^T = \epsilon^C$`
-   We can also write `$\epsilon^C$` in terms of `$\bar{\epsilon}^f$`

`$$S \left( C_m \right ) ^{-1} \left ( C_f - C_m \right ) \bar{\epsilon}^f = \epsilon^0- \bar{\epsilon}^f$$`

----
## strain concentration 

-   Finally, we can add `$I\bar{\epsilon}^f$` to both sides to find

`$$[I+S \left( C_m \right ) ^{-1} \left ( C_f - C_m \right )] \bar{\epsilon}^f = \epsilon^0$$`

-   We define the inverse of the left-hand side the Eshelby strain-concentration tensor

`$$A^E = [I+S \left( C_m \right ) ^{-1} \left ( C_f - C_m \right )]^{-1}$$`

-   The stiffness can be calculated as
 
`$$C = C_m + v_i (C_f-C_m)A^E$$`

----
## stiffness

-   This stiffness calculation is valid for any number of inclusions
-   However, it is only appropriate for very dilute concentrations (<1% volume fraction)
-   This ensures that the assumption `$\epsilon^0 + \epsilon^C = \bar{\epsilon}^f$`

---
# aspect ratio

----
## aspect ratio

-   Some studies have been done to evaluate Eshelby tensors for short fibers
-   Long fibers are approximated by an ellipsoid with infinitely long major axis
-   This is not appropriate for short fibers
-   We could logically consider three different ellipsoids to represent a short fiber

----
## aspect ratio

![aspect ratio comparisons](../images/ellipsoids.PNG)

----
## aspect ratio

-   Steif and Hoysan investigated the effect of aspect ratio numerically
-   Found that (a) and (c) were good for short fibers
-   As fibers get longer, and as stiffness ratio of fiber to matrix increases, (a) gives best results
-   (a) is also the easiest to use (same aspect ratio), so that is what is done in Eshelby-based models

----
## fiber orientation

-   With Eshelby (and derivative models), fibers at different orientations are modeled as a different inclusion
-   Since the Eshelby tensor, *S* is a fourth-order tensor, we can treat it the same way as *C*
-   Write it as 6x6 matrix, transform using `$R^\sigma$`

----
## example

-   As an example, let us consider a "laminate" of short fiber composites
-   This is a good approximate for many 3D printed composites
-   We have a `$\pm 45^\circ$` laminate, with very short carbon fibers, *s* = 15

----
## example

-   First we find the Eshelby tensor for *s* = 15
-   We also need the matrix Poisson's ratio, `$\nu = 0.4$`
-   We find the parameters [here](#/eshelby-params)
-   Then we use [this slide](#/eshelby-table) to find `$S_{ijkl}$`
-   Notice that this assumes fibers are pointed in the 3-direction

----
## example

-   Next, we rotate `$S_{ijkl}$` to find `$S^{45}$` and `$S^{-45}$`
-   Notice: the eshelby tensor, *S* accounts for rotation, we do not rotate `$C_f$`
-   So we find `$A^{45}$` and `$A^{-45}$`

`$$A^{45} = \left[I + S^{45} (C_m)^{-1}(C_f-C_m) \right]^{-1}$$`

`$$A^{-45} = \left[I + S^{-45} (C_m)^{-1}(C_f-C_m) \right]^{-1}$$`

----
## example

-   This gives our total stiffness calculation as

`$$C = C_m + v^{45}(C_f-C_m)A^{45} + v^{-45}(C_f-C_m)A^{-45}$$`

-   If we assume the volume fraction of fibers in our part is 20%
-   And that there are equally many fibers in 45 and -45 directions
-   Then `$v^{45} = v^{-45} = 0.1$`
-   Note: Since this is not a dilute concentration, we would not expect this to be very accurate

----
## example

-   Python code for this example (with some typical values for `$C_m$` and `$C_f$`) is posted [here](https://colab.research.google.com/drive/1aUs_BfeWugyUfwQiKoPx5g-hxvrsQqNs?usp=sharing)

---
# fiber orientation

----
## fiber orientation

-   While a laminate analogy works well for some cases, in general short fibers are not aligned in laminates
-   It is not practical to model each possible fiber orientation as a separate inclusion
-   Advani-Tucker introduced a tensorial representation of fiber orientation

----
## fiber in spherical coordinates

![single fiber coordinate system](../images/single_fiber.png) <!-- .element width="50%" -->

----
## fiber direction components

|Component | Definition |
| --- | --- |
|`$p_1$` | `$\sin \theta \cos \phi$`|
|`$p_2$` | `$\sin \theta \sin \phi$`|
|`$p_3$` | `$\cos \theta$` |

----
## orientation tensor

-   Within a given volume, a distribution of fibers can be defined by some orientation distribution function, `$\psi(\theta, \phi)$`.
-   Advani and Tucker introduced tensor representations of fiber orientation distribution functions

`$$a_{ij} = \oint p_i p_j \psi(p) dp$$`

----
## orientation tensor

-   And

`$$a_{ijkl} = \oint p_i p_j p_k p_l\psi(p) dp$$`

-   Note: any order tensor may be defined in this manner, the orientation distribution function must be even, due to fiber symmetry, and thus any odd-ordered tensor will be zero.

----
## orientation tensor

-   It can be noted that some symmetries must exist due to the way the tensors are defined.
-   In the second order tensor we have

`$$a_{ij} = a_{ji}$$`

-   and in the fourth order tensor

`$$a_{ijkl} = a_{jikl} = a_{kijl}$$`

and so on for any permutation of i, j, k and l.

----
## orientation tensor

-   The orientation tensor is also normalized such that:

`$$a_{ii} = 1$$`

-   And any lower-order tensor can be expressed in terms of the next higher-order tensor, for example

`$$a_{ijkk} = a_{ij}$$`

----
## example - 2D random

![A visualization of a 2D random orientation distribution. This is expressed with the second-order tensor a_11 = a_22 = 0.5, with all other a_ij = 0.](../images/random2D.PNG) <!-- .element width="30%" -->

A visualization of a 2D random orientation distribution. This is expressed with the second-order tensor `$a_{11} = a_{22} = 0.5$` with all other `$a_{ij} = 0$`.

----
## example - 3D random

![A visualization of a 3D random orientation distribution. This is expressed with the second-order tensor a_11 = a_22 = a_33 = 1/3, with all other a_ij = 0.](../images/random3D.PNG) <!-- .element width="30%" -->

A visualization of a 3D random orientation distribution. This is expressed with the second-order tensor `$a_{11} = a_{22} = a_{33} = 1/3$` with all other `$a_{ij} = 0$`.

----
## example - aligned 45

![A visualization of a perfectly aligned, off-axis orientation distribution. This is expressed by rotating the tensor with a<sub>11</sub> = 1 and all other a<sub>ij</sub> = 0.](../images/aligned45.PNG) <!-- .element width="30%" -->

A visualization of a perfectly aligned, off-axis orientation distribution. This is expressed by rotating the tensor with `$a_{11} = 1$` and all other `$a_{ij} = 0$`.

----
## next class

-   Orientation averaging
-   Self-consistent and Mori-Tanaka methods
