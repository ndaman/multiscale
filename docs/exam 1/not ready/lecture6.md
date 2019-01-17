<span>upcoming schedule</span>

-   Feb 6 - Orientation Averaging

-   Feb 8 - Variational Calculus

-   Feb 13 - Variational Calculus (HW 2 Due)

-   Feb 15 - Recitation?

-   Feb 20 - Review (HW 3 Due)

-   Feb 22 - Exam 1

### outline

\[sections numbered\]

transformation
==============

<span>conventions</span>

-   There are two different conventions for defining general transformations

-   Two textbooks that I use have conflicting conventions, which led to some errors in my slides

-   For my equations to be consistent, *Q*<sub>*i**j*</sub> is defined as
    *Q*<sub>*i**j*</sub> = cos(*x*<sub>*i*</sub>, *x*<sub>*j*</sub><sup>′</sup>)

-   This is essentially the transpose of what we had defined previously

<span>conventions</span>

-   Once this *Q*<sub>*i**j*</sub> definition is corrected, the rest of the equations we developed are accurate

-   We can transform any-order tensor using *Q*<sub>*i**j*</sub>

-   Vectors (first-order tensors): *v*<sub>*i*</sub><sup>′</sup> = *Q*<sub>*i**j*</sub>*v*<sub>*j*</sub>

-   Matrices (second-order tensors): *σ*<sub>*i**j*</sub><sup>′</sup> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*σ*<sub>*m**n*</sub>

-   Or in matrix notation: \[*σ*\]<sup>′</sup> = \[*Q*\]\[*σ*\]\[*Q*\]<sup>*T*</sup>

-   Fourth-order tensors: *C*<sub>*i**j**k**l*</sub><sup>′</sup> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*Q*<sub>*k**o*</sub>*Q*<sub>*l**p*</sub>*C*<sub>*m**n**o**p*</sub>

<span>alternate convention</span>

-   I will use *β*<sub>*i**j*</sub> to describe the alternate convention

-   In this sytem we have
    *β*<sub>*i**j*</sub> = cos(*x*<sub>*i*</sub><sup>′</sup>, *x*<sub>*j*</sub>)

-   This is equivalent to *Q*<sup>*T*</sup>

<span>alternate convention</span>

-   In this convention, we have

-   Vectors (first-order tensors): *v*<sub>*i*</sub><sup>′</sup> = *β*<sub>*j**i*</sub>*v*<sub>*j*</sub>

-   Matrices (second-order tensors): *σ*<sub>*i**j*</sub><sup>′</sup> = *β*<sub>*m**i*</sub>*β*<sub>*n**j*</sub>*σ*<sub>*m**n*</sub>

-   Or in matrix notation: \[*σ*\]<sup>′</sup> = \[*β*\]<sup>*T*</sup>\[*σ*\]\[*β*\]

-   Fourth-order tensors: *C*<sub>*i**j**k**l*</sub><sup>′</sup> = *β*<sub>*m**i*</sub>*β*<sub>*n**j*</sub>*β*<sub>*o**k*</sub>*β*<sub>*p**l*</sub>*C*<sub>*m**n**o**p*</sub>

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

<span>stress transformation</span>

-   We can also find *σ*<sup>′</sup> = *R*<sub>*σ*</sub><sup>*β*</sup>*σ* for engineering notation
    $$\\hspace\*{-2cm}
                R\_\\sigma = \\begin{bmatrix}\\beta\_{11}^{2} & \\beta\_{21}^{2} & \\beta\_{31}^{2} & 2 \\beta\_{21} \\beta\_{31} & 2 \\beta\_{11} \\beta\_{31} & 2 \\beta\_{11} \\beta\_{21}\\\\
                \\beta\_{12}^{2} & \\beta\_{22}^{2} & \\beta\_{32}^{2} & 2 \\beta\_{22} \\beta\_{32} & 2 \\beta\_{12} \\beta\_{32} & 2 \\beta\_{12} \\beta\_{22}\\\\
                \\beta\_{13}^{2} & \\beta\_{23}^{2} & \\beta\_{33}^{2} & 2 \\beta\_{23} \\beta\_{33} & 2 \\beta\_{13} \\beta\_{33} & 2 \\beta\_{13} \\beta\_{23}\\\\
                \\beta\_{12} \\beta\_{13} & \\beta\_{22} \\beta\_{23} & \\beta\_{32} \\beta\_{33} & \\beta\_{22} \\beta\_{33} + \\beta\_{23} \\beta\_{32} & \\beta\_{12} \\beta\_{33} + \\beta\_{13} \\beta\_{32} & \\beta\_{12} \\beta\_{23} + \\beta\_{13} \\beta\_{22}\\\\
                \\beta\_{11} \\beta\_{13} & \\beta\_{21} \\beta\_{23} & \\beta\_{31} \\beta\_{33} & \\beta\_{21} \\beta\_{33} + \\beta\_{23} \\beta\_{31} & \\beta\_{11} \\beta\_{33} + \\beta\_{13} \\beta\_{31} & \\beta\_{11} \\beta\_{23} + \\beta\_{13} \\beta\_{21}\\\\
                \\beta\_{11} \\beta\_{12} & \\beta\_{21} \\beta\_{22} & \\beta\_{31} \\beta\_{32} & \\beta\_{21} \\beta\_{32} + \\beta\_{22} \\beta\_{31} & \\beta\_{11} \\beta\_{32} + \\beta\_{12} \\beta\_{31} & \\beta\_{11} \\beta\_{22} + \\beta\_{12} \\beta\_{21}
                \\end{bmatrix}$$

orientation average
===================

<span>orientation tensor</span>

-   Within a given volume, a distribution of fibers can be defined by some orientation distribution function, *ψ*(*θ*, *ϕ*).

-   Advani and Tucker introduced tensor representations of fiber orientation distribution functions
    *a*<sub>*i**j*</sub> = ∮*p*<sub>*i*</sub>*p*<sub>*j*</sub>*ψ*(*p*)*d**p*

-   And
    *a*<sub>*i**j**k**l*</sub> = ∮*p*<sub>*i*</sub>*p*<sub>*j*</sub>*p*<sub>*k*</sub>*p*<sub>*l*</sub>*ψ*(*p*)*d**p*

-   Note: any order tensor may be defined in this manner, the orientation distribution function must be even, due to fiber symmetry, and thus any odd-ordered tensor will be zero.

<span>orientation averaging</span>

-   Consider *T*(*p*) to be some tensor property of a material, as a function of material orientation

-   The orientation average of *T*(*p*) is denoted by angle brackets and is given by
    ⟨*T*⟩=∮*T*(*p*)*ψ*(*p*)*d**p*

-   For a uni-directional fiber, we would expect &lt;*T*&gt; to be transversely isotropic, which for a second-order tensor requires
    ⟨*T*<sub>*i**j*</sub>⟩=*A*<sub>1</sub>⟨*p*<sub>*i*</sub>*p*<sub>*j*</sub>⟩+*A*<sub>2</sub>*δ*<sub>*i**j*</sub>

-   but ⟨*p*<sub>*i*</sub>*p*<sub>*j*</sub>⟩ is the second-order orientation tensor

-   The unknown constants, *A*<sub>1</sub> and *A*<sub>2</sub>, can be easily solved for in terms of the uni-directional properties

<span>orientation averaging</span>

-   Similarly, if *T* is a fourth-order tensor property then transverse isotropy requires that
    $$\\begin{gathered}
            \\label{eq:ornavg}
                \\langle T\_{ijkl} \\rangle = B\_1 a\_{ijkl} + B\_2 (a\_{ij} \\delta\_{kl} + a\_{kl} \\delta\_{ij}) + \\\\
                B\_3(a\_{ik} \\delta\_{jl} + a\_{il} \\delta\_{jk} + a\_{jl} \\delta\_{ik} + a\_{jk} \\delta\_{il}) + \\\\
                B\_4(\\delta\_{ij}\\delta\_{kl}) + B\_5 (\\delta\_{ik}\\delta\_{jl} + \\delta\_{il}\\delta\_{jk})
            \\end{gathered}$$

-   We can solve for *B*<sub>*α*</sub> by considering fibers aligned in the three-direction, we have *a*<sub>3333</sub> = 1 and all other *a*<sub>*i**j**k**l*</sub> = 0.

-   We can choose any values of *i*, *j*, *k*, *l* that would give 5 unique equations to solve equations for *B*<sub>*α*</sub>

<span>orientation averaging</span>

-   Here we will consider *T*<sub>1111</sub>, *T*<sub>3333</sub>, *T*<sub>1122</sub>, *T*<sub>2233</sub>, *T*<sub>1313</sub>. item\[\]
    $$\\begin{aligned}
            T\_{1111} &= B\_4 + 2B\_5\\\\
            T\_{3333} &= B\_1 + 2B\_2 + 4B\_3 + B\_4 +2B\_5\\\\
            T\_{1122} &= B\_4\\\\
            T\_{2233} &= B\_2 + B\_4\\\\
            T\_{1313} &= B\_3 + B\_5
            \\end{aligned}$$

<span>orientation averaging</span>

-   After some manipulation, we find
    $$\\begin{aligned}
            B\_1 &= T\_{1111} + T\_{3333} -2T\_{2233} - 4T\_{1313}\\\\
            B\_2 &= T\_{2233} - T\_{1122}\\\\
            B\_3 &= T\_{1313} - \\frac{1}{2}(T\_{1111}-T\_{1122})\\\\
            B\_4 &= T\_{1122}\\\\
            B\_5 &= \\frac{1}{2}(T\_{1111}-T\_{1122})
            \\end{aligned}$$

closure approximations
======================

<span>closure approximations</span>

-   While theoretically any-order orientation tensor is possible, in practice only the second-order tensor is used

-   Microscopic measurements do not give enough information for higher-order tensors to be useful

-   Software simulations have not implemented the fourth-order tensor

-   To predict stiffness, we need the fourth-order tensor

-   Closure Approximations are a way to approximate the fourth-order tensor from the second-order tensor

<span>linear closure approximate</span>

-   For 3D orientations, the linear approximation is given by
    $$\\begin{gathered}
                a\_4^l = -\\frac{1}{35}(\\delta\_{ij} \\delta\_{kl} + \\delta\_{ik} \\delta\_{jl} + \\delta\_{il}\\delta\_{jk}) + \\\\
                \\frac{1}{7} (a\_{ij} \\delta\_{kl} + a\_{ik}\\delta\_{jl} + a\_{il}\\delta\_{jk} + a\_{kl} \\delta\_{ij} + a\_{jl}\\delta\_{ik} + a\_{jk}\\delta\_{il})
            \\end{gathered}$$

-   For planar orientations we simply replace the two coefficients with $-\\frac{1}{24}$ and $\\frac{1}{6}$

<span>quadratic closure</span>

-   We can also use a quadratic closure method
    *a*<sub>4</sub><sup>*q*</sup> = *a*<sub>*i**j*</sub>*a*<sub>*k**l*</sub>

-   If the fibers are randomly aligned, the linear closure will give the exact result

-   If the fibers are perfectly oriented, the quadratic closure will give the exact result

<span>hybrid closure</span>

-   Advani proposed a hybrid closure to take advantage of both the linear and quadratic methods

-   We will introduce a parameter *f* and use it to combine both linear and quadratic closures
    *a*<sub>4</sub><sup>*h*</sup> = (1 − *f*)*a*<sub>4</sub><sup>*l*</sup> + *f**a*<sub>4</sub><sup>*q*</sup>

-   Ideally, we would like *f* to be 1 for perfectly oriented fibers and 0 for random fibers

-   Advani proposes
    *f* = *A**a*<sub>*i**j*</sub>*a*<sub>*j**i*</sub> − *B*

-   Where *A* = 3/2 and *B* = 1/2 for 3D orientations and *A* = 2 and *B* = 1 for planar orientation

<span>orthotropic fitted closure</span>

-   A more recent method that is commonly used is known as the orthotropic fitted closure

-   The fourth-order tensor is approximated in the principal direction, then rotated back out if necessary

-   In the principal direction, the fourth-order tensor will be orthotropic (represented in 6x6 as)
    $$\\label{eq:ortho1}
                A\_4 = \\begin{bmatrix}
            A\_{11} & A\_{12} & A\_{13} & 0 & 0 & 0 \\\\
            A\_{12} & A\_{22} & A\_{23} & 0 & 0 & 0 \\\\
            A\_{13} & A\_{23} & A\_{33} & 0 & 0 & 0 \\\\
            0 & 0 & 0 & A\_{44} & 0 & 0\\\\
            0 & 0 & 0 & 0 & A\_{55} & 0\\\\
            0 & 0 & 0 & 0 & 0 & A\_{66}\\\\
            \\end{bmatrix}$$

<span>orthotropic fitted closure</span>

-   The symmetry of the orientation tensor requires that *A*<sub>66</sub> (which is *a*<sub>1212</sub>) be equal to *A*<sub>12</sub> (which is *a*<sub>1122</sub>).

-   By the same symmetry, we have *A*<sub>55</sub> = *A*<sub>13</sub> and *A*<sub>44</sub> = *A*<sub>23</sub>.

-   We also know that *a*<sub>*i**j**k**k*</sub> = *a*<sub>*i**j*</sub>, which imposes the following equations:
    $$\\begin{aligned}
                \\label{eq:ortho2}
                A\_{11} + A\_{66} + A\_{55} &= a\_{11}\\\\
                A\_{66} + A\_{22} + A\_{44} &= a\_{22}\\\\
                A\_{55} + A\_{44} + A\_{33} &= a\_{33}
            \\end{aligned}$$

<span>orthotropic fitted closure</span>

-   This leaves only three independent variables in the fourth-order tensor that need to be found.

-   Different authors have proposed different functions to fit these three independent variables

-   They are fit to give the best mold simulation predictions, but do not necessarily have any physical application

<span>discrete calculations</span>

-   To compare with our laminate analogy we can calculate the orientation tensor for discrete orientation states
    $$a\_{ij} = \\frac{1}{N}\\sum p\_i p\_j$$
     for second-order tensors and
    $$a\_{ijkl} = \\frac{1}{N}\\sum p\_i p\_j p\_k p\_l
                \\label{eq:fourth-order}$$

<span>example</span>

-   Compare Mori-Tanaka stiffness predictions for direct calculation and orientation averaging

-   Compare \[0/90\]<sub>*S*</sub>, \[ ± 45\]<sub>*S*</sub>, and \[0/±45/90\]<sub>*S*</sub>

-   <http://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/Orientation%20Averaging.ipynb>

-   Also compare the results with a closure approximation of the fourth-order tensor

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


