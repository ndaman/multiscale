<span>upcoming schedule</span>

-   Feb 15 - Variational Calculus (HW 2 Due)

-   Feb 20 - Project Description (HW1 resubmission due)

-   Feb 22 - Bounds and Boundary Conditions (HW 3 Due)

### outline

\[sections numbered\]

lagrange multipliers
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

calculus of variations
======================

<span>functional</span>

-   A functional of some unknown function *y*(*x*) is defined as
    *I* = *I*\[*y*(*x*)\]

-   A functional depends on all values of *y*(*x*) over some interval

-   We will often use the form
    $$I\[y\] = \\int\_a^b F(x,y(x),\\dot{y}(x))dx$$

<span>bernoulli</span>

-   The original problem that motivated study of variational calculus

-   Bernoulli 1696

-   Design a chute between two points, A and B

-   such that a particle sliding without friction under its own weight

-   travels from A to B in the shortest time

<span>variational statement</span>

-   To solve Bernoulli’s problem we denote the arc length as *s*, speed as
    $$v = \\frac{ds}{dt}$$

-   And we can find the total time as
    $$t = \\int\_A^B \\frac{ds}{v}$$

<span>variational statement</span>

-   The arc length *s* can be found from
    $$ds = \\sqrt{dx^2 + dy^2}$$

-   Since *y* = *y*(*x*) we can write $dy = \\dot{y} dx$

-   We can now re-write *d**s* as
    $$ds = \\sqrt{1 + \\dot{y}^2}dx$$

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
    $$frac{d}{dx} (\\delta u) = \\delta \\left(\\frac{du}{dx}\\right)$$

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

<span>next class</span>

-   Boundary conditions

-   Multi-variate variational calculus

-   Approximate solutions

-   Variational Asymptotic Method


