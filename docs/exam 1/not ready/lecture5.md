<span>upcoming schedule</span>

-   Feb 1 - Mean-field (HW 1 Due)

-   Feb 6 - Orientation Distribution

-   Feb 8 - Variational Calculus (HW 2 Due)

-   Feb 13 - Variational Calculus

### outline

\[sections numbered\]

eshelby’s equivalent inclusion
==============================

<span>eshelby</span>

-   Eshelby formulated the exact elastic solution for an elliptical inclusion in an infinite matrix

-   While this is not often useful, it serves as an exact analytical model to compare numerical results with

-   It is also the base for more useful mean-field theories

<span>eshelby’s thought experiment</span>

-   Eshelby solution starts with a thought experiment

-   Suppose we have a homogeneous, elastic body in equilibrium

-   We now cut an ellipsoidal pieces out of that body and allow it to undergo a stress-free transformation, such as thermal expansion

-   This stress-free transformation is referred to as the transformation strain, *ϵ*<sup>*T*</sup>

<span>eshelby’s thought experiment</span>

\[fig:eshelby\]

<span>eshelby’s thought experiment</span>

-   Now, we weld that expanded ellipsoid back into the original body

-   Tractions need to be applied to force it to fit

-   Once the stresses equilibrate, the ellipsoid has a constrained strain, *ϵ*<sup>*C*</sup>

<span>eshelby</span>

-   After equilibrium is reached the inclusion is still under a state of uniform strain

-   The inclusion stress, *σ*<sub>*I*</sub> can be found as:
    *σ*<sub>*I*</sub> = *C*<sub>*m*</sub>(*ϵ*<sup>*C*</sup>−*ϵ*<sup>*T*</sup>)
     Where *C*<sub>*m*</sub> is the stiffness of the material.

-   One of Eshelby’s critical findings is that
    *ϵ*<sup>*C*</sup> = *S**ϵ*<sup>*T*</sup>

-   *S* is known as the Eshelby Tensor, and is a fourth-order tensor

-   Function of shape and poisson’s ratio

-   It has been calculated exactly for ellipsoids, and numerically for other shapes

<span>eshelby tensor</span>

-   *ν* represents the matrix Poisson’s ratio

-   *s* is the aspect ratio of the fibers

-   `$I_1 = \frac{2s}{\left(s^2-1\right)^{\frac{3}{2}}}(s{\left(s^2-1\right)}^{\frac{1}{2}}-\cosh^{-1} s)$`

-   $Q=\\frac{3}{8(1-\\nu)}$

-   $R=\\frac{1-2\\nu}{8(1-\\nu)}$

-   $T=\\frac{Q\\left(4-3I\_1\\right)}{3(s^2-1)}$

-   *I*<sub>3</sub> = 4 − 2*I*<sub>1</sub>

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
     \\end{aligned}$                                                                                      | $\\frac{1}{4}$                            | $2R-\\frac{I\_1R}{2}-\\frac{1-s^2}{2}T$  |
| all other *S*<sub>*i**j**k**l*</sub>                                                                    | 0                                         | 0                                        |

<span>inclusions</span>

-   Eshelby’s initial thought experiment was for a homogeneous material

-   To consider a different type of inclusion, we need to relate the transformation strain between some fictitious ellipsoid of matrix material which would be equivalent to our inclusion.

-   We will refer to the inclusion stiffness as *C*<sub>*f*</sub>, the transformation strain in the matrix as *ϵ*<sup>*T*</sup>, and the transformation strain in the inclusion *ϵ*<sup>*T*\*</sup>.

<span>inclusions</span>

-   We are trying to find a transformation equivalent to our inclusion, so we set
    *σ*<sub>*I*</sub> = *C*<sub>*m*</sub>(*ϵ*<sup>*C*</sup> − *ϵ*<sup>*T*</sup>)=*C*<sub>*f*</sub>(*ϵ*<sup>*C*</sup> − *ϵ*<sup>*T*\*</sup>)

-   Now we sutbstitute the relation *ϵ*<sup>*C*</sup> = *S**ϵ*<sup>*T*</sup>
    *C*<sub>*m*</sub>(*S* − *I*)*ϵ*<sup>*T*</sup> = *C*<sub>*f*</sub>(*S**ϵ*<sup>*T*</sup> − *ϵ*<sup>*T*\*</sup>)

-   We can solve this to find the transformation strain
    *ϵ*<sup>*T*</sup> = \[(*C*<sub>*f*</sub>−*C*<sub>*m*</sub>)*S*+*C*<sub>*m*</sub>\]<sup>−1</sup>*C*<sub>*f*</sub>*ϵ*<sup>*T*\*</sup>

<span>stiffness</span>

-   Since the transformation strain is arbitrary, we can choose *ϵ*<sup>*T*</sup> such that *ϵ*<sup>*T*\*</sup> is 0

-   Now suppose we impose some strain, *ϵ*<sup>0</sup> on the composite

-   The stress in the inclusion will be
    *σ*<sub>*I*</sub> = *C*<sub>*m*</sub>(*ϵ*<sup>0</sup> + *ϵ*<sup>*C*</sup> − *ϵ*<sup>*T*</sup>)=*C*<sub>*f*</sub>(*ϵ*<sup>0</sup> + *ϵ*<sup>*C*</sup>)

-   Simplifying terms gives
    (*C*<sub>*f*</sub>−*C*<sub>*m*</sub>)(*ϵ*<sup>0</sup>+*ϵ*<sup>*C*</sup>) = −*C*<sub>*m*</sub>*ϵ*<sup>*T*</sup>

<span>stiffness</span>

-   We now assume $\\epsilon^0 + \\epsilon^C = \\bar{\\epsilon}^f$ and multiply both sides by *S**C*<sub>*m*</sub><sup>−1</sup>
    $$S \\left( C\_m \\right ) ^{-1} \\left ( C\_f - C\_m \\right ) \\bar{\\epsilon}^f = -\\epsilon^C$$

-   Recall *S**ϵ*<sup>*T*</sup> = *ϵ*<sup>*C*</sup>

-   We can also write *ϵ*<sup>*C*</sup> in terms of $\\bar{\\epsilon}^f$
    $$S \\left( C\_m \\right ) ^{-1} \\left ( C\_f - C\_m \\right ) \\bar{\\epsilon}^f = \\epsilon^0- \\bar{\\epsilon}^f$$

<span>strain concentration tensor</span>

-   Finally, we can add $I\\bar{\\epsilon}^f$ to both sides to find
    $$\[I+S \\left( C\_m \\right ) ^{-1} \\left ( C\_f - C\_m \\right )\] \\bar{\\epsilon}^f = \\epsilon^0$$

-   We define the inverse of the left-hand side the Eshelby strain-concentration tensor
    *A*<sup>*E*</sup> = \[*I* + *S*(*C*<sub>*m*</sub>)<sup>−1</sup>(*C*<sub>*f*</sub>−*C*<sub>*m*</sub>)\]<sup>−1</sup>

-   The stiffness can be calculated as
    *C* = *C*<sub>*m*</sub> + *v*<sub>*i*</sub>(*C*<sub>*f*</sub> − *C*<sub>*m*</sub>)*A*<sup>*E*</sup>

<span>stiffness</span>

-   This stiffness calculation is valid for any number of inclusions

-   However, it is only appropriate for very dilute concentrations (&lt;1% volume fraction)

-   This ensures that the assumption $\\epsilon^0 + \\epsilon^C = \\bar{\\epsilon}^f$

<span>aspect ratio</span>

-   Some studies have been done to evaluate Eshelby tensors for short fibers

-   Long fibers are approximated by an ellipsoid with infinitely long major axis

-   This is not appropriate for short fibers

-   We could logically consider three different ellipsoids to represent a short fiber

<span>aspect ratio</span>

\[fig:ellipsoids\]

<span>aspect ratio</span>

-   Steif and Hoysan investigated the effect of aspect ratio numerically

-   Found that (a) and (c) were good for short fibers

-   As fibers get longer, and as stiffness ratio of fiber to matrix increases, (a) gives best results

-   (a) is also the easiest to use (same aspect ratio), so that is what is done in Eshelby-based models

<span>fiber orientation</span>

-   With Eshelby (and derivative models), fibers at different orientations are modeled as a different inclusion

-   Since the Eshelby tensor, *S* is a fourth-order tensor, we can treat it the same way as *C*

-   Write it as 6x6 matrix, transform using *R*<sup>*σ*</sup>

<span>example</span>

-   As an example, let us consider a “laminate” of short fiber composites

-   This is a good approximate for many 3D printed composites

-   We have a ±45<sup>∘</sup> laminate, with very short carbon fibers, *s* = 15

<span>example</span>

-   First we find the Eshelby tensor for *s* = 15

-   We also need the matrix Poisson’s ratio, *ν* = 0.40

-   We find the parameters on slide 19

-   Then we use slide 20 to find *S*<sub>*i**j**k**l*</sub>

-   Notice that this assumes fibers are pointed in the 3-direction

<span>example</span>

-   Next, we rotate *S*<sub>*i**j**k**l*</sub> to find *S*<sup>45</sup> and *S*<sup>−45</sup>

-   Notice: the eshelby tensor, *S* accounts for rotation, we do not rotate *C*<sub>*f*</sub>

-   So we find *A*<sup>45</sup> and *A*−45
    *A*<sup>45</sup> = \[*I*+*S*<sup>45</sup>(*C*<sub>*m*</sub>)<sup>−1</sup>(*C*<sub>*f*</sub>−*C*<sub>*m*</sub>)\]<sup>−1</sup>
    *A*<sup>−45</sup> = \[*I*+*S*<sup>−45</sup>(*C*<sub>*m*</sub>)<sup>−1</sup>(*C*<sub>*f*</sub>−*C*<sub>*m*</sub>)\]<sup>−1</sup>

<span>example</span>

-   This gives our total stiffness calculation as
    *C* = *C*<sub>*m*</sub> + *v*<sup>45</sup>(*C*<sub>*f*</sub> − *C*<sub>*m*</sub>)*A*<sup>45</sup> + *v*<sup>−45</sup>(*C*<sub>*f*</sub> − *C*<sub>*m*</sub>)*A*<sup>−45</sup>

-   If we assume the volume fraction of fibers in our part is 20%

-   And that there are equally many in 45 and -45 directions

-   Then *v*<sup>45</sup> = *v*<sup>−45</sup> = 0.1

-   Note: Since this is not a dilute concentration, we would not expect this to be very accurate

<span>example</span>

-   Python code for this example (with some typical values for *C*<sub>*m*</sub> and *C*<sub>*f*</sub>) is posted here

-   <http://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/Eshelby.ipynb>

mean field methods
==================

<span>self consistent method</span>

-   The so-called self-consistent method attempts to solve the low-volume fraction by treating the matrix as “composite”

-   For spherical inclusions and continuous fibers, a closed-form can be found

-   For short fibers, the composite properties are found using iteration

-   The “matrix” properties are no longer isotropic, generally a transversely isotropic Eshelby tensor is used

<span>mori-tanaka model</span>

-   While the model is known as the Mori-Tanaka model, and is based on assumptions from work by Mori and Tanaka, they did not calculate fiber stiffness

-   Benveniste(1987) first proposed a method for using Mori-Tanaka’s (1973) methods for calculated composite stiffness

-   Some others followed a different development, but reached the same result (Chow, Taya)

<span>mori-tanaka model</span>

-   Using the strain concentration tensor we know that the average fiber strain is related to the global strain by
    $$\\bar{\\epsilon}\_f = A \\epsilon^0$$

-   Benveniste starts by defining an alternate strain concentration tensor to relate average fiber strain to average matrix strain
    $$\\bar{\\epsilon}\_f = \\hat{A} \\bar{\\epsilon}\_m$$

-   For a dilute composite, $\\bar{\\epsilon}\_m = \\epsilon^0$, but this is not true in general

<span>strain concentration</span>

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

<span>mori-tanaka</span>

-   Mori and Tanaka’s critical assumption is that $\\hat{A} = A^E$

-   This means that the stress in each fiber is related to the average matrix strain in the same way that a dilute fiber would be related to remote strain

-   While this may not generally be true at the local level, when averaged about the entire composite, it gives very good results

-   Substituting *A*<sup>*E*</sup> gives the following expression for *A*<sup>*M**T*</sup>
    *A*<sup>*M**T*</sup> = *A*<sup>*E*</sup>\[*V*<sub>*f*</sub>*A*<sup>*E*</sup>+*V*<sub>*m*</sub>*I*\]<sup>−1</sup>
     where
    *A*<sup>*E*</sup> = \[*I* + *S*(*C*<sub>*m*</sub>)<sup>−1</sup>(*C*<sub>*f*</sub>−*C*<sub>*m*</sub>)\]<sup>−1</sup>

<span>multiple inclusions</span>

-   When we have multiple inclusions (or orientations), we follow a slightly different scheme in Mori-Tanaka

-   We first add all Eshelby concentration tensors (multiplied by volume fraction)
    *A*<sup>*T**o**t*</sup> = ∑*V*<sub>*i*</sub>*A*<sub>*i*</sub><sup>*E*</sup>

-   And then calculate the Mori-Tanaka strain concentration tensor at each orientation as
    *A*<sub>*i*</sub><sup>*M**T*</sup> = *A*<sub>*i*</sub><sup>*E*</sup>\[(1−*V*<sub>*f*</sub>)*I*+*A*<sup>*T**o**t*</sup>\]<sup>−1</sup>

halpin-tsai
===========

<span>halpin-tsai</span>

-   The Halpin-Tsai equations are some of the most commonly used short-fiber property models

-   Although they are not based on the Eshelby elasticity solution as many other models, and thus lack some theoretical rigor, they have been shown to have very good agreement with experiments.

-   They stem from a common form they identified in the generalized self-consistent model
    $$\\frac{P}{P\_m} = \\frac{1+\\zeta \\eta V\_f}{1-\\eta V\_f}$$
     where
    $$\\eta = \\frac{P\_f/P\_m - 1}{P\_f/P\_m + \\zeta}$$

<span>halpin-tsai</span>

-   the coefficient, *ζ*, is a parameter based on the matrix Poisson’s ratio used to differentiate between properties

-   Halpin and Tsai also made the ad-hoc assumption that while this form had been derived for a specific set of material properties, it could also be used to find *E*<sub>11</sub> or *E*<sub>22</sub>.

-   They use constant values for *ζ* since in most cases the dependence on the matrix Poisson’s ratio is minimal.

<span>halpin-tsai</span>

-   It is worth mentioning that when *ζ* = 0 the Halpin-Tsai equations reduce to the inverse rule of mixtures
    $$\\frac{1}{P} = \\frac{V\_f}{P\_f} + \\frac{V\_m}{P\_m}$$

-   and when *ζ* = ∞ they reduce to the rule of mixtures
    *P* = *V*<sub>*f*</sub>*P*<sub>*f*</sub> + *V*<sub>*m*</sub>*P*<sub>*m*</sub>

<span>halpin-tsai</span>

|               *P*|  *P*<sub>*f*</sub>|  *P*<sub>*m*</sub>|              *ζ*|
|-----------------:|------------------:|------------------:|----------------:|
|  *E*<sub>11</sub>|  *E*<sub>*f*</sub>|  *E*<sub>*m*</sub>|  $2\\frac{L}{d}$|
|  *E*<sub>22</sub>|  *E*<sub>*f*</sub>|  *E*<sub>*m*</sub>|                2|
|  *G*<sub>12</sub>|  *G*<sub>*f*</sub>|  *G*<sub>*m*</sub>|                1|
|  *ν*<sub>12</sub>|  *ν*<sub>*f*</sub>|  *ν*<sub>*m*</sub>|                ∞|

\[tab:halpin\]

<span>example</span>

-   We can continue our previous example and compare Eshelby, Mori-Tanaka, and Halpin-Tsai

-   <http://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/Short%20Fiber%20Comparison.ipynb>

fiber orientation
=================

<span>fiber orientation</span>

-   While a laminate analogy works well for some cases, in general short fibers are not aligned in laminates

-   It is not practical to model each possible fiber orientation as a separate inclusion

-   Advani-Tucker introduced a tensorial representation of fiber orientation

<span>fiber in spherical coordinates</span>

\[fig:single\_fiber\]

<span>fiber direction components</span>

<span>c c</span> Component & Definition
*p*<sub>1</sub> & sin*θ*cos*ϕ*
*p*<sub>2</sub> & sin*θ*sin*ϕ*
*p*<sub>3</sub> & cos*θ*

<span>orientation tensor</span>

-   Within a given volume, a distribution of fibers can be defined by some orientation distribution function, *ψ*(*θ*, *ϕ*).

-   Advani and Tucker introduced tensor representations of fiber orientation distribution functions
    *a*<sub>*i**j*</sub> = ∮*p*<sub>*i*</sub>*p*<sub>*j*</sub>*ψ*(*p*)*d**p*

-   And
    *a*<sub>*i**j**k**l*</sub> = ∮*p*<sub>*i*</sub>*p*<sub>*j*</sub>*p*<sub>*k*</sub>*p*<sub>*l*</sub>*ψ*(*p*)*d**p*

-   Note: any order tensor may be defined in this manner, the orientation distribution function must be even, due to fiber symmetry, and thus any odd-ordered tensor will be zero.

<span>orientation tensor</span>

-   It can be noted that some symmetries must exist due to the way the tensors are defined.

-   In the second order tensor we have
    *a*<sub>*i**j*</sub> = *a*<sub>*j**i*</sub>

-   and in the fourth order tensor
    *a*<sub>*i**j**k**l*</sub> = *a*<sub>*j**i**k**l*</sub> = *a*<sub>*k**i**j**l*</sub>
     and so on for any permutation of *i*, *j*, *k* and *l*.

<span>orientation tensor</span>

-   The orientation tensor is also normalized such that:
    *a*<sub>*i**i*</sub> = 1

-   And any lower-order tensor can be expressed in terms of the next higher-order tensor, for example
    *a*<sub>*i**j**k**k*</sub> = *a*<sub>*i**j*</sub>
    *a*<sub>*i**j**k**l**m**m*</sub> = *a*<sub>*i**j**k**l*</sub>

<span>example - 2D random</span>

<img src="../Figures/random2D" alt="A visualization of a 2D random orientation distribution. This is expressed with the second-order tensor a_{11} = a_{22} = \frac{1}{2}, with all other a_{ij} = 0." style="width:60.0%" />

<span>example - 3D random</span>

<img src="../Figures/random3D" alt="A visualization of a 3D random orientation distribution. This is expressed with the second-order tensor a_{11} = a_{22} = a_{33} = \frac{1}{3}, with all other a_{ij} = 0." style="width:60.0%" />

<span>example - aligned 45</span>

<img src="../Figures/aligned45" alt="A visualization of a perfectly aligned, off-axis orientation distribution. This is expressed by rotating the tensor with a_{11} = 1 and all other a_{ij} = 0." style="width:60.0%" />

<span>next class</span>

-   Orientation averaging

-   Variational calculus
