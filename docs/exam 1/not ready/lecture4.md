<span>upcoming schedule</span>

-   Jan 30 - Eshelby

-   Feb 1 - Mean-field (HW 1 Due)

-   Feb 6 - Orientation Distribution

-   Feb 8 - Variational Calculus

### outline

\[sections numbered\]

shear lag
=========

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

-   Where
    $$n = \\left\[\\frac{2E\_m}{E\_f(1+\\nu\_m)\\ln(1/f)} \\right\]$$

<span>shear lag</span>

-   To solve we substitute the fiber stress at both ends (0)
    *σ*<sub>*f*</sub> = *E*<sub>*f*</sub>*ϵ*<sub>1</sub>\[1−cosh(*n**x*/*r*)sech(*n**s*)\]
     Where *s* is fiber aspect ratio.

-   Take average fiber stress over the length of the fiber
    $$\\bar{\\sigma}\_f = \\frac{1}{2L}\\int\_{-L}^L\\sigma\_f dx = \\frac{1}{2L}\\int\_{-L}^L E\_f \\epsilon\_1 \\left\[1 - \\cosh(nx/r) \\operatorname{sech}(ns) \\right\] dx$$

-   Which gives the average fiber stress as
    $$\\bar{\\sigma}\_f = E\_f \\epsilon\_1 \\left\[ 1- \\frac{\\tanh(ns)}{2sn}\\right\]$$

<span>stiffness</span>

-   With an average stress in the fibers known, the stiffness can be estimated using the rule of mixtures
    $$E\_c = f E\_f \\left\[ 1- \\frac{\\tanh(ns)}{2sn}\\right\] + (1-f) E\_m$$

-   The shear lag model is not often used to predict stiffness

-   It is used often as a simple model to find local stresses in the fiber and surrounding matrix

<span>stress in fibers</span>

<img src="../Figures/shearlag.png" alt="Stress near the edge of fibers in shear lag model" style="width:80.0%" />

<span>normalizing</span>

-   An interesting finding was that when we normalized distance (x) by fiber diameter

-   The shear stress was the same for any fiber length

-   This means that most/all shear stress transfer occurs near the ends

-   If fibers are not long enough, full stress profile does not develop, fibers contribute very little to stiffness

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

-   `$I\_1=\\frac{2s}{{\\left(s^2-1\\right)}^{\\frac{3}{2}}}(s{\\left(s^2-1\\right)}^{\\frac{1}{2}}-{{\\cosh }^{{\\rm -}{\\rm 1}} s\\ })$`

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

-   Self-consistent and Mori-Tanaka methods

-   Textbook pages 131-150
