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
Lecture 5 - Mean-Field Methods

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

February 6, 2019

---
## schedule

-   Feb 6 - Mean-field
-   Feb 11 - Orientation Averaging
-   Feb 13 - Variational Calculus (HW2 Due)
-   Feb 18 - Variational Calculus


----
### outline
- mean field methods
- halpin-tsai

---
# mean field methods

----
## self consistent method

-   The so-called self-consistent method attempts to solve the low-volume fraction by treating the matrix as "composite"
-   For spherical inclusions and continuous fibers, a closed-form can be found
-   For short fibers, the composite properties are found using iteration
-   The "matrix" properties are no longer isotropic, generally a transversely isotropic Eshelby tensor is used

----
## mori-tanaka model

-   While the model is known as the Mori-Tanaka model, and is based on assumptions from work by Mori and Tanaka, they did not calculate fiber stiffness
-   Benveniste(1987) first proposed a method for using Mori-Tanaka's (1973) methods for calculated composite stiffness
-   Some others followed a different development, but reached the same result (Chow, Taya)

----
## mori-tanaka model

-   Using the strain concentration tensor we know that the average fiber strain is related to the global strain by
$$\\bar{\\epsilon}\_f = A \\epsilon^0$$
-   Benveniste starts by defining an alternate strain concentration tensor to relate average fiber strain to average matrix strain
$$\\bar{\\epsilon}\_f = \\hat{A} \\bar{\\epsilon}\_m$$
-   For a dilute composite, $\\bar{\\epsilon}\_m = \\epsilon^0$, but this is not true in general

----
## strain concentration

-   We also know that the average strain in the material must follow
$$\\bar{\\epsilon} = V\_f \\bar{\\epsilon}\_f + V\_m \\bar{\\epsilon}\_m = \\epsilon^0$$
-   We can now express the strain concentration tensor in terms of the alternate strain concentration tensor
$$\\begin{aligned}
  V\_f \\hat{A} \\bar{\\epsilon}\_m + V\_m \\bar{\\epsilon\_m} &= \\epsilon^0\\\\
  \\left\[ V\_f \\hat{A} + V\_m I\\right\]\\bar{\\epsilon}\_m &= \\epsilon^0\\\\
  \\bar{\\epsilon}\_m &= \\left\[ V\_f \\hat{A} + V\_m I\\right\]^{-1} \\epsilon^0\\\\
  \\bar{\\epsilon}\_f &= \\hat{A}\\left\[ V\_f \\hat{A} + V\_m I\\right\]^{-1} \\epsilon^0\\\\
  A &= \\hat{A}\\left\[ V\_f \\hat{A} + V\_m I\\right\]^{-1}
\\end{aligned}$$

----
## mori-tanaka

-   Mori and Tanaka's critical assumption is that $\\hat{A} = A^E$
-   This means that the stress in each fiber is related to the average matrix strain in the same way that a dilute fiber would be related to remote strain
-   While this may not generally be true at the local level, when averaged about the entire composite, it gives very good results
-   Substituting *A*<sup>*E*</sup> gives the following expression for *A*<sup>*M**T*</sup>
    *A*<sup>*M**T*</sup> = *A*<sup>*E*</sup>\[*V*<sub>*f*</sub>*A*<sup>*E*</sup>+*V*<sub>*m*</sub>*I*\]<sup>−1</sup>
     where
    *A*<sup>*E*</sup> = \[*I* + *S*(*C*<sub>*m*</sub>)<sup>−1</sup>(*C*<sub>*f*</sub>−*C*<sub>*m*</sub>)\]<sup>−1</sup>

----
## multiple inclusions

-   When we have multiple inclusions (or orientations), we follow a slightly different scheme in Mori-Tanaka
-   We first add all Eshelby concentration tensors (multiplied by volume fraction)
    *A*<sup>*T**o**t*</sup> = ∑*V*<sub>*i*</sub>*A*<sub>*i*</sub><sup>*E*</sup>
-   And then calculate the Mori-Tanaka strain concentration tensor at each orientation as
    *A*<sub>*i*</sub><sup>*M**T*</sup> = *A*<sub>*i*</sub><sup>*E*</sup>\[(1−*V*<sub>*f*</sub>)*I*+*A*<sup>*T**o**t*</sup>\]<sup>−1</sup>

---
# halpin-tsai

----
## halpin-tsai

-   The Halpin-Tsai equations are some of the most commonly used short-fiber property models
-   Although they are not based on the Eshelby elasticity solution as many other models, and thus lack some theoretical rigor, they have been shown to have very good agreement with experiments.
-   They stem from a common form they identified in the generalized self-consistent model
$$\\frac{P}{P\_m} = \\frac{1+\\zeta \\eta V\_f}{1-\\eta V\_f}$$
     where
$$\\eta = \\frac{P\_f/P\_m - 1}{P\_f/P\_m + \\zeta}$$

----
## halpin-tsai

-   the coefficient, $\zeta$, is a parameter based on the matrix Poisson's ratio used to differentiate between properties
-   Halpin and Tsai also made the ad-hoc assumption that while this form had been derived for a specific set of material properties, it could also be used to find *E*<sub>11</sub> or *E*<sub>22</sub>.
-   They use constant values for $\zeta$ since in most cases the dependence on the matrix Poisson's ratio is minimal.

----
## halpin-tsai

-   It is worth mentioning that when $\zeta=0$ the Halpin-Tsai equations reduce to the inverse rule of mixtures
$$\\frac{1}{P} = \\frac{V\_f}{P\_f} + \\frac{V\_m}{P\_m}$$
-   and when $\zeta = \infty$ they reduce to the rule of mixtures
    *P* = *V*<sub>*f*</sub>*P*<sub>*f*</sub> + *V*<sub>*m*</sub>*P*<sub>*m*</sub>

----
## halpin-tsai

|               *P*|  *P*<sub>*f*</sub>|  *P*<sub>*m*</sub>|              *ζ*|
|-----------------:|------------------:|------------------:|----------------:|
|  *E*<sub>11</sub>|  *E*<sub>*f*</sub>|  *E*<sub>*m*</sub>|  $2\\frac{L}{d}$|
|  *E*<sub>22</sub>|  *E*<sub>*f*</sub>|  *E*<sub>*m*</sub>|                2|
|  *G*<sub>12</sub>|  *G*<sub>*f*</sub>|  *G*<sub>*m*</sub>|                1|
|  *ν*<sub>12</sub>|  *ν*<sub>*f*</sub>|  *ν*<sub>*m*</sub>|                ∞|

----
## example

-   We can continue our previous example and compare Eshelby, Mori-Tanaka, and Halpin-Tsai
-   [link](http://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/examples/Short%20Fiber%20Comparison.ipynb)

---
## next class

-   Orientation averaging
-   Variational calculus
