<span>upcoming schedule</span>

-   Feb 20 - Variational Calculus (HW 1 resubmission due)

-   Feb 22 - Variational Calculus

-   Feb 27 - Project Description (HW 2 resubmission due)

-   Mar 1 - Bounds and Boundary Conditions (HW 3 due)

### outline

\[sections numbered\]

<span>homework</span>

-   My Python functions are not a substitute for understanding the math

-   You can program in any language, but it is also possible to do Mori-Tanaka in Excel

-   In my code I switched between tensor and matrix notation to avoid re-writing equations

-   Alternatively, we could re-write tensor equations entirely

<span>tensor equations</span>

-   
    *a*<sub>*i**j**k**l*</sub><sup>*q*</sup> = *a*<sub>*i**j*</sub>*a*<sub>*k**l*</sub>

-   
    $$\\begin{gathered}
                a\_4^l = -\\frac{1}{35}(\\delta\_{ij} \\delta\_{kl} + \\delta\_{ik} \\delta\_{jl} + \\delta\_{il}\\delta\_{jk}) + \\\\
                \\frac{1}{7} (a\_{ij} \\delta\_{kl} + a\_{ik}\\delta\_{jl} + a\_{il}\\delta\_{jk} + a\_{kl} \\delta\_{ij} + a\_{jl}\\delta\_{ik} + a\_{jk}\\delta\_{il})
            \\end{gathered}$$

-   NOTE: Many of you copied my linear closure approximation, which used constants for 2D orientation

-   In 2D replace $-\\frac{1}{35}$ and $\\frac{1}{7}$ with $-\\frac{1}{24}$ and $\\frac{1}{6}$, respectively

calculus of variations
======================

<span>functional</span>

-   A functional of some unknown function *y*(*x*) is defined as
    *I* = *I*\[*y*(*x*)\]

-   A functional depends on all values of *y*(*x*) over some interval

-   We will often use the form
    $$I\[y\] = \\int\_a^b F(x,y(x),\\dot{y}(x))dx$$

<span>variational statement</span>

-   From the conservation of energy we can also say that
    $$\\frac{1}{2} m v^2 = m g y$$

-   Such that
    $$v = \\sqrt{2 g y}$$

-   We now need to find some function *y*(*x*) which minimizes the integral
    $$t = \\int\_0^a \\frac{\\sqrt{1 + \\dot{y}^2}}{\\sqrt{2 g y}}dx$$

<span>euler lagrange</span>

-   Now we develop a method for finding *y*(*x*)

-   Consider the functional
    $$            I\[y\] = \\int\_{x\_0}^{x\_1} F(x,y,\\dot{y})dx$$

-   Where *y*(*x*) is subject to boundary conditions
    *y*(*x*<sub>0</sub>)=*y*<sub>0</sub>  *y*(*x*<sub>1</sub>)=*y*<sub>1</sub>

<span>euler lagrange</span>

-   We assume that there is some solution, *y*(*x*) for which *I* is stationary

-   We also assume that *y*(*x*) is continuous and differentiable in the problem domain

-   Let us now choose some trial function
    $$\\bar{y}(x) = y(x) + \\alpha \\eta(x)$$

-   Where *η*(*x*) is some arbitrary continuous function which vanishes at the boundaries

<span>euler lagrange</span>

<img src="../Figures/variation" alt="image" style="width:80.0%" />

<span>euler lagrange</span>

-   We can take the derivative of $\\bar{y}$ to find
    $$\\dot{\\bar{y}} = \\dot{y}(x) + \\alpha \\dot{\\eta}(x)$$

-   This now gives
    $$I\[\\alpha\] = \\int\_{x\_0}^{x\_1} F(x,\\bar{y},\\dot{\\bar{y}})dx = \\int\_{x\_0}^{x\_1} F(x,y(x) + \\alpha \\eta(x),\\dot{y}(x) + \\alpha \\dot{\\eta}(x))dx$$

-   Once *y*(*x*) and *η*(*x*) are chosen, *I* is a function of *α*

<span>euler lagrange</span>

-   We find the stationary function by letting $\\frac{dI}{d \\alpha} = 0$
    $$\\frac{dI}{d \\alpha} = \\int\_{x\_0}^{x\_1} \\frac{\\partial F}{\\partial \\alpha} dx =
                \\int\_{x\_0}^{x\_1} \\left ( \\frac{\\partial F}{\\partial \\bar{y}}\\frac{\\partial \\bar{y}}{\\partial \\alpha}  +
                \\frac{\\partial F}{\\partial \\dot{\\bar{y}}}\\frac{\\partial \\dot{\\bar{y}}}{\\partial \\alpha}\\right )dx$$

-   This simplifies to
    $$\\int\_{x\_0}^{x\_1} \\left ( \\frac{\\partial F}{\\partial \\bar{y}}\\eta  +
                \\frac{\\partial F}{\\partial \\dot{\\bar{y}}}\\dot{\\eta}\\right )dx$$

<span>euler lagrange</span>

-   Now we know that *I* will be stationary when *α* = 0, in which case $\\bar{y}=y$, therefore we can write
    $$\\int\_{x\_0}^{x\_1} \\left ( \\frac{\\partial F}{\\partial y}\\eta  +
                    \\frac{\\partial F}{\\partial \\dot{y}}\\dot{\\eta}\\right )dx = 0$$

-   And now we perform integration by parts on the second term

<span>integration by parts</span>

-   Recall that
    ∫*u**d**v* = *u**v* − ∫*v**d**u*

-   We choose
    $$\\begin{aligned}
                u &= \\frac{\\partial F}{\\partial \\dot{y}}\\\\
                du &= \\frac{d}{dx} \\left( \\frac{\\partial F}{\\partial y} \\right)\\\\
                v &= \\eta(x)\\\\
                dv &= \\dot{\\eta} dx
            \\end{aligned}$$

<span>integration by parts</span>

-   This gives (for the second term)
    $$\\int\_{x\_0}^{x\_1} \\frac{\\partial F}{\\partial \\dot{y}}\\dot{\\eta} dx = \\frac{\\partial F}{\\partial \\dot{y}}\\eta |\_{x\_0}^{x\_1} - \\int\_{x\_0}^{x\_1} \\frac{d}{dx} \\left( \\frac{\\partial F}{\\partial y} \\right) \\eta(x)$$

-   Combining with the original equation and simplifying gives
    $$\\int\_{x\_0}^{x\_1} \\left \[ \\frac{\\partial F}{\\partial y} - \\frac{d}{dx} \\left( \\frac{\\partial F}{\\partial y} \\right) \\right \]\\eta dx
                    + \\frac{\\partial F}{\\partial \\dot{y}}\\eta |\_{x\_0}^{x\_1} = 0$$

<span>euler lagrange</span>

-   We already know that *η*|<sub>*x*<sub>0</sub></sub><sup>*x*<sub>1</sub></sup> = 0, so we only need concern ourselves with the terms inside the integral

-   Since this must be true for any arbitrary function, *η*, we can say that
    $$\\frac{\\partial F}{\\partial y} - \\frac{d}{dx} \\left( \\frac{\\partial F}{\\partial y} \\right) = 0$$

-   This is known as the Euler-Lagrange equation

-   A solution to the Euler-Lagrange equation is called an extremal, and an extremal which satisfies the boundary conditions is called a stationary function

<span>variations</span>

-   In variational calculus, we define the first variation as
    $$\\delta y = \\bar{y} - y$$

-   Note: while the variation follows many of the same rules as differentiation, it does not correspond to any slope, since *η* is completely arbitrary

<span>variations</span>

<img src="../Figures/variations" alt="image" style="width:60.0%" />

<span>variations</span>

-   Variational laws are analogous to differentiation
    $$\\begin{aligned}
                \\delta (F\_1 F\_2) &= F\_1 \\delta F\_2 + \\delta F\_1 F\_2\\\\
                \\delta \\left(\\frac{F\_1}{F\_2} \\right) = \\frac{F\_2 \\delta F\_1 - F\_1 \\delta F\_2}{F\_2^2}
            \\end{aligned}$$

-   The variation and derivative are commutative
    $$\\frac{d}{dx} (\\delta u) = \\delta \\left(\\frac{du}{dx}\\right)$$

-   Similarly, the variation is commutative with the integral
    *δ*∫*F**d**x* = ∫*δ**F**d**x*

<span>variations</span>

-   We can also take the variation of a functional
    $$\\Delta F = F(x,y + \\alpha \\eta, \\dot{y} + \\alpha \\dot{\\eta}) - F(x,y,\\dot{y})$$

-   Expanding this function via a Taylor series gives
    $$\\Delta F = \\left \[ F(x,y,\\dot{y}) + \\left( \\delta y \\frac{\\partial F}{\\partial y} + \\delta \\dot{y} \\frac{\\partial F}{\\partial \\dot{y}} + ... \\right) \\right\]- F(x,y,\\dot{y})$$

-   And thus we call the variation of *F*
    $$\\delta F = \\frac{\\partial F}{\\partial y} \\delta y + \\frac{\\partial F}{\\partial \\dot{y}} \\delta \\dot{y} + \\epsilon\_1$$

-   Where *ϵ*<sub>1</sub> are terms of higher order than $\\sqrt{(\\delta y)^2 + (\\delta \\dot{y})^2}$ and are neglected in the first variation

<span>variations</span>

-   We can use variational notation to find the Euler-Lagrange equation
    $$I\[y\] = \\int\_{x\_0}^{x\_1} F(x,y,\\dot{y})dx$$

-   and taking the variation
    $$\\delta I = \\int\_{x\_0}^{x\_1} \\left\[  \\frac{\\partial F}{\\partial y} \\delta y + \\frac{\\partial F}{\\partial \\dot{y}} \\delta \\dot{y}\\right\]dx = 0$$

<span>variations</span>

-   Using integration by parts on the second term, as before, we find
    $$\\delta I = \\int\_{x\_0}^{x\_1} \\left\[  \\frac{\\partial F}{\\partial y} - \\frac{d}{dx}\\left(\\frac{\\partial F}{\\partial \\dot{y}}\\right) \\right\]\\delta y dx = 0$$

-   Since *δ**y*(*x*<sub>0</sub>)=*δ**y*(*x*<sub>1</sub>)=0

-   Since this must be true for any arbitrary variation, we have
    $$\\frac{\\partial F}{\\partial y} - \\frac{d}{dx}\\left(\\frac{\\partial F}{\\partial \\dot{y}}\\right)$$

<span>variations</span>

-   If the functional, *F*, does not depend on *x* explicitly (i.e. the only *x* dependence comes from *y*(*x*)) then we can say
    $$\\frac{d}{dx}\\left( F - \\dot{y} \\frac{\\partial F}{\\partial \\dot{y}}\\right) = 0$$

-   or, similarly
    $$F - \\dot{y} \\frac{\\partial F}{\\partial \\dot{y}} = C$$

<span>brachistochrone problem</span>

-   If we return now to Bernoulli’s problem, we had found
    $$t = \\int\_0^a \\frac{\\sqrt{1 + \\dot{y}^2}}{\\sqrt{2 g y}}dx$$

-   Since this does not depend on *x* explicitly, we can use the simpler form of the Euler-Lagrange equation.
    $$F = \\frac{\\sqrt{1 + \\dot{y}^2}}{\\sqrt{2 g y}}$$

-   with
    $$F - \\dot{y} \\frac{\\partial F}{\\partial \\dot{y}} = C$$

<span>brachistochrone problem</span>

-   Computing the partial derivative we find
    $$\\frac{\\partial F}{\\partial \\dot{y}} = \\frac{\\dot{y}}{\\sqrt{2 g y}\\sqrt{1 + \\dot{y}^2}}$$

-   Which gives in the Euler-Lagrange equation
    $$\\frac{\\sqrt{1 + \\dot{y}^2}}{\\sqrt{2 g y}} - \\frac{\\dot{y}^2}{\\sqrt{2 g y}\\sqrt{1 + \\dot{y}^2}} = C$$

<span>brachistrochrone problem</span>

-   Simplifying gives
    $$\\frac{1}{\\sqrt{2 g y}\\sqrt{1 + \\dot{y}^2}} = C$$

-   We can square both sides and lump constants together
    $$y(1+\\dot{y}^2) = \\frac{1}{2gc^2} = c\_1$$

-   And solving for $\\dot{y}$, taking only the positive solution
    $$\\dot{y} = \\frac{\\sqrt{c\_1-y}}{\\sqrt{y}}$$

<span>brachistochrone problem</span>

-   The Brachistochrone problem can be solved using parametric equations
    $$\\begin{aligned}
                x &= k^2 (\\theta - \\sin\\theta)\\\\
                y &= k^2 (1-\\cos\\theta)
            \\end{aligned}$$

<span>example</span>

-   We can also use variational calculus to prove that the shortest distance between to points is a straight line

-   The distance along a curve is given by
    *L* = ∫<sub>*a*</sub><sup>*b*</sup>*d**s*

-   Where $ds = \\sqrt{dx^2 + dy^2} = \\sqrt{1+ \\dot{y}^2}dx$

-   So we can find the minimum of the functional
    $$I\[y\] = \\int\_a^b \\sqrt{1+ \\dot{y}^2}dx$$

<span>group problems</span>

-   Find the Euler-Lagrange equation for
    $$I\[y\] = \\int y\\sqrt{1+\\dot{y}^2} dx$$

-   Find the Euler-Lagrange equation for
    $$I\[y\] = \\int \[\\dot{y}^2 + y^2 + 2xy\] dx$$

boundary conditions
===================

<span>boundaries</span>

-   Not all problems of functionals have well-defined boundary conditions

-   The Euler-Lagrange equation will be the same

-   Consider the example
    $$I\[y\] = \\int\_{x\_0}^{x\_1} \[p(x)(\\dot{y})^2 + q(x) y^2 + f(x)y\]dx + h\_1y^2(x\_1) + h\_0y^2(x\_0)$$

<span>boundaries</span>

-   For the functional to be stationary we have
    $$\\begin{gathered}
                I\[y\] = 2\\int\_{x\_0}^{x\_1} \[-\\dot{(p\\dot{y})} + qy + f\]\\delta y dx + \\\\
                2p\\dot{y} \\delta y|\_{x\_0}^{x\_1} + 2h\_1y(x\_1)\\delta y(x\_1) + 2h\_0y(x\_0)\\delta y(x\_0) = 0
            \\end{gathered}$$

-   Satisfying the Euler-Lagrange equation will ensure the first line is equal to zero

-   The second line forms the natural boundary conditions
    $$\\begin{aligned}
                p(x\_1) \\dot{y}(x\_1) + h\_1 y(x\_1) &= 0\\\\
                -p(x\_0) \\dot{y}(x\_0) + h\_0 y(x\_0) &= 0
            \\end{aligned}$$

<span>natural and geometric boundaries</span>

-   In general, if a functional contains the derivative of an unknown function to the *m*th order:

-   Boundary conditions expressed in terms of the unknown function to the (*m* − 1)th order are geometric boundary conditions

-   Boundary conditions expressed in terms of the unknown function higher than the (*m* − 1)th order are natural boundary conditions

-   When there are geometric boundaries, the variation will be zero at the boundaries

-   Otherwise the coefficients must equal zero

<span>example</span>

-   Find the governing differential equation and boundary conditions for a bar of stiffness *E**A*, length *L*

-   Subjected to a tensile load, *p*(*x*)

-   There is a spring of stiffness *k* attached to *x* = *L*

-   The bar is fixed at *x* = 0

<span>subsidiary conditions</span>

-   We have discussed problems with or without prescribed boundary conditions

-   We may also have additional constraints (also known as subsidiary conditions)

-   The can be formulated using the same method as the Lagrange Multiplier

<span>subsidiary conditions</span>

-   Consider a functional
    $$I = \\int\_{x\_0}^{x\_1} F(y, \\dot{y}, x) dx$$

-   With boundary conditions, *y*(*x*<sub>0</sub>)=*y*<sub>0</sub> and *y*(*x*<sub>1</sub>)=*y*<sub>1</sub>

-   And the subsidiary condition
    $$\\int\_{x\_0}^{x\_1} G(y, \\dot{y}, x)dx = C$$

<span>subsidiary conditions</span>

-   The stationary conditions for this functional can be obtained using
    *δ**I*<sup>\*</sup> = 0

-   Where
    $$I^\* = \\int\_{x\_0}^{x\_1} F(y, \\dot{y}, x) dx + \\lambda\\left(\\int\_{x\_0}^{x\_1} G(y, \\dot{y}, x)dx - C\\right)$$

<span>subsidiary conditions</span>

-   Carrying out the variation we find
    $$\\begin{gathered}
                \\delta I^\* = \\int\_{x\_0}^{x\_1} \\left \\{ \\frac{\\partial F}{\\partial y} - \\frac{d}{dx} \\frac{\\partial F}{\\partial \\dot{y}} + \\lambda \\left \[ \\frac{\\partial G}{\\partial y} - \\frac{d}{dx} \\frac{\\partial G}{\\partial \\dot{y}} \\right \] \\right \\} \\delta y dx + \\\\
                \\delta \\lambda \\left( \\int\_{x\_0}^{x\_1} G(y, \\dot{y}, x)dx - C \\right) = 0
            \\end{gathered}$$

-   Which gives the Euler-Lagrange equation
    $$\\frac{\\partial F}{\\partial y} - \\frac{d}{dx} \\frac{\\partial F}{\\partial \\dot{y}} + \\lambda \\left\[ \\frac{\\partial G}{\\partial y} - \\frac{d}{dx} \\frac{\\partial G}{\\partial \\dot{y}} \\right\]$$

<span>subsidiary conditions</span>

-   If the subsidiary condition is given in terms of differential equations instead of an integral
    $$G(x,y,\\dot{y}) = 0$$

-   Then we must write the functional as
    $$J\[y,\\lambda\] = \\int\_{x\_0}^{x\_1} F(y, \\dot{y}, x) dx + \\int\_{x\_0}^{x\_1} \\lambda G(y, \\dot{y}, x)dx$$

-   Since *λ* will be a function of *x*

<span>subsidiary conditions</span>

-   The only difference in the Euler-Lagrange solution is that *λ* will be inside the derivative
    $$\\frac{\\partial F}{\\partial y} - \\frac{d}{dx} \\frac{\\partial F}{\\partial \\dot{y}} + \\lambda \\frac{\\partial G}{\\partial y} - \\frac{d}{dx} \\left(\\lambda \\frac{\\partial G}{\\partial \\dot{y}}\\right)$$

<span>example</span>

-   A uniform power line with length *C* and density *ρ* is hanging between two points, (*x*<sub>0</sub>, *y*<sub>0</sub>) and (*x*<sub>1</sub>, *y*<sub>1</sub>)

-   With gravity acting in the *y* direction, find the shape of the power line in equilibrium

multiple variables
==================

<span>higher derivatives</span>

-   While our development has only used one derivative of *y*, it can easily be extended
    $$I\[y\] = \\int\_{x\_0}^x{1} F(x,y,\\dot{y},\\ddot{y},\\dddot{y},...,y^{(n)}) dx$$

-   The first variation is
    $$\\delta I\[y\] = \\int\_{x\_0}^x{1} \\left\[ \\frac{\\partial F}{\\partial y} \\delta y + \\frac{\\partial F}{\\partial \\dot{y}}\\delta \\dot{y} + ... + \\frac{\\partial F}{\\partial y^{(n)}} \\delta y^{(n)}\\right\]dx$$

-   Carrying out successive integration by parts we find
    $$\\delta I\[y\] = \\int\_{x\_0}^x{1} \\left\[ \\frac{\\partial F}{\\partial y} - \\frac{d}{dx}\\left( \\frac{\\partial F}{\\partial \\dot{y}}\\right) + ... + (-1)^n \\frac{d^{n}}{dx^{n}}\\left(\\frac{\\partial F}{\\partial y^{(n)}}\\right)\\right\] \\delta ydx$$

<span>higher derivatives</span>

-   The Euler-Lagrange equation is merely in the terms inside the integral

-   Boundary terms from integration vanish when $y, \\dot{y}, ... , y^{(n)}$ are prescribed at the boundaries

<span>multiple functions</span>

-   A functional could also consist of several functions, for example
    $$I\[y,z\] = \\int\_{x\_0}^x{1} F(x,y,z,\\dot{y},\\dot{z})dx$$

-   Where both *y* and *z* are functions of *x*

-   In this case the Euler-Lagrange equation is two equations
    $$\\frac{\\partial F}{\\partial y} - \\frac{d}{dx}\\left(\\frac{\\partial F}{\\partial \\dot{y}}\\right) = 0 \\qquad \\frac{\\partial F}{\\partial z} - \\frac{d}{dx}\\left(\\frac{\\partial F}{\\partial \\dot{z}}\\right) = 0$$

<span>multiple variables</span>

-   We could also have multiple fundamental variables in the functional, for example
    *I*\[*u*\]=∫∫<sub>*G*</sub>*F*(*x*, *y*, *u*, *u*<sub>,*x*</sub>, *u*<sub>,*y*</sub>)*d**x**d**y*

-   The Euler-Lagrange equation is
    $$\\frac{\\partial F}{\\partial u} - \\frac{\\partial}{\\partial x} \\left( \\frac{\\partial F}{\\partial u\_{,x}} \\right) - \\frac{\\partial}{\\partial y} \\left( \\frac{\\partial F}{\\partial u\_{,y}}\\right) = 0$$

-   If *u* is prescribed along the boundary, then *δ**u* = 0 along the boundary, otherwise
    $$\\frac{\\partial F}{\\partial u\_{,x}} n\_x + \\frac{\\partial F}{\\partial u\_{,y}} n\_y = 0$$
     along the boundary

<span>example</span>

-   Minimize the mechanical potential energy of a beam with deflection *y* under applied force, *f*(*x*)
    $$I\[y\] = \\int\_0^L \\left\[ \\frac{1}{2} EI (\\ddot{y})^2 - fy\\right\] dx$$

<span>example</span>

-   Minimize the functional
    *I*\[*y*, *z*\]=∫<sub>*x*<sub>0</sub></sub><sup>*x*<sub>1</sub></sup>(*y*<sup>2</sup> − *z*<sup>2</sup>)*d**x*

-   Under the constraint
    $$\\dot{y} - y + z = 0$$

<span>next class</span>

-   Converting between differential and variational statements

-   Approximate solutions

-   Variational asymptotic method


