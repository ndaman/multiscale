<span>upcoming schedule</span>

-   Feb 22 - Variational Calculus

-   Feb 27 - Project Description (HW 2 resubmission due)

-   Mar 1 - Bounds and Boundary Conditions (HW 3 due)

<span>comsol training</span>

-   Hands-on COMSOL web-workshop

-   March 1 at 9:30 - 11:00 am

-   <https://www.comsol.com/events/web-meeting/Introduction-to-COMSOL-Multiphysics-Handson-Web-Workshop-25181#>

-   With registration you will be sent a two-week trial version of COMSOL

-   e-mail me if you are interested in scheduling a seminar room where we could all participate in the webinar together

<span>research colloquium</span>

-   This Friday, Feb 24 at 12:00

-   WH 123

-   Dr. Michael Papadakis

-   Aircraft Icing Research

-   Pizza will be served

<span>scaled composites</span>

-   Monday Feb 27 at 1:30 pm

-   Jabara 127

-   Tim Kelley will talk about Scaled Composites

### outline

\[sections numbered\]

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

converting to variational statements
====================================

<span>differential to variational</span>

-   In general, a differential statement can be expressed as
    $$\\begin{aligned}
                L(u) + f &= 0 \\qquad \\text{in} \\qquad \\Omega\\\\
                B(u) + g &= 0 \\qquad \\text{on} \\qquad \\Gamma\\\\
            \\end{aligned}$$

-   Where *L* is a differential operator, *B* can be either differential or algebraic

-   *Ω* is the domain and *Γ* is the boundary

<span>differential to variational</span>

-   The equivalent variational statement is
    *Π*(*u*)=∫<sub>*Ω*</sub>*δ**u*\[*L*(*u*)+*f*\]*d**Ω* − ∫<sub>*Γ*</sub>*δ**u*\[*B*(*u*)+*g*\]*d**Γ* = 0

-   We can then perform integration by parts on *L*(*u*) to form the variational statement with
    *δ**Π* = 0

<span>example</span>

-   2D steady-state heat transfer

ritz method
===========

<span>ritz method</span>

-   Only a small set of Euler-Lagrange equations have exact solutions

-   The Ritz method is one way to find approximate (and exact) solutions

-   In the Ritz method we approximate some continuously differentiable function with a linear combination of functions

-   We can choose the form of these functions based on our problem, polynomials and trig functions are common
    *y*<sub>*n*</sub> = ∑*a*<sub>*k*</sub>*w*<sub>*k*</sub>

<span>ritz method</span>

-   The general method for using the Ritz method with variational statements can be summarized as

    1.  Select a set of trial functions

    2.  Form a linear combination of trial functions to approximate *y* ≈ *y*<sub>*n*</sub>

    3.  Substitute *y*<sub>*n*</sub> into the functional, *I*\[*y*\]=*I*\[*a*<sub>1</sub>, *a*<sub>2</sub>, ..., *a*<sub>*n*</sub>\]

    4.  Obtain a system of equations by carrying out the partial derivatives $\\frac{\\partial I}{\\partial a\_n}$

    5.  Solve this system for the unknown coefficients to find *y*

<span>ritz method</span>

-   We can increase the accuracy by including more terms

-   If our set contains the exact solution, the solution will be exact

-   The Ritz method is a direct method solving stationary problems of functionals and an indirect method for solving Euler-Lagrange equations

<span>kantarovich method</span>

-   A slightly different approach to the Ritz method is used by Kantarovich
    *I*\[*y*\]=∫<sub>*t*</sub>∫<sub>*x*</sub>*F*(*x*, *t*, *y*)*d**x**d**t*

-   Where boundary conditions are *y*(*x*<sub>1</sub>, *t*)=*y*<sub>1</sub>(*t*), *y*(*x*<sub>2</sub>, *t*)=*y*<sub>2</sub>(*t*) and *y*(*x*, *t*<sub>1</sub>)=*y*<sub>3</sub>(*x*)

-   The trial function will then have the form
    *y*(*x*, *t*)=*g*<sup>*P*</sup>(*x*)+∑*f*<sub>*j*</sub>(*t*)*g*<sub>*j*</sub><sup>*H*</sup>(*x*)

-   This gives a functional which can be solved for *f*<sub>*j*</sub>(*t*)
    *I*\[*f*\]=∫<sub>*t*</sub>*F*(*f*<sub>*j*</sub>(*t*))*d**t*

<span>examples</span>

-   Solve the differential equation
    $$\\frac{d^2 u}{dx^2} +u + x = 0$$
     for 0 ≤ *x* ≤ 1 with *u*(0)=*u*(1)=0

<span>examples</span>

-   A 2D domain defined by *x* ∈ \[0, *π*\] and *y* ∈ \[0, 1\] solve the following PDE
    $$\\frac{\\partial^2 u}{\\partial x^2} + \\frac{\\partial^2 u}{\\partial y^2} = 0$$

-   Where *u*(0, *y*)=*u*(*π*, *y*)=*u*(0, *x*)=0 and *u*(*x*, 1)=sin*x*

variational asymptotic method
=============================

<span>asymptotic analysis</span>

-   Asymptotic analysis is a mathematical method to describe limiting behavior

-   It is used to numerically approximate solutions

-   Also used in probability theory (large-sample behavior of random variables)

-   Computer science (algorithm performance)

<span>example</span>

-   Compute sin39<sup>∘</sup> without using trig functions on calculator

-   We know sin30<sup>∘</sup> = 1/2 and $\\cos 30^\\circ = \\sqrt{3}/2$

-   Expand sin*θ* about some known *θ*<sub>0</sub> using Taylor Series
    $$\\sin \\theta = \\sin \\theta\_0 + (\\theta-\\theta\_0) \\cos \\theta\_0 - \\frac{1}{2} (\\theta-\\theta\_0)^2 \\sin \\theta\_0 + ...$$

-   With only three terms of a Taylor series, we have a very close approximation

-   This only works when *θ* − *θ*<sub>0</sub> is less than 1 in radians

<span>o notation</span>

-   Suppose *f*(*x*) and *g*(*x*) are continuous functions with defined limits as *x* → *x*<sub>0</sub>

-   *f*(*x*)=*O*(*g*(*x*)) as *x* → *x*<sub>0</sub> if |*f*(*x*)| ≤ *K*|*g*(*x*)| in the neighborhood of *x*<sub>0</sub> where *K* is a constant. We say that *f*(*x*) is asymptotically bounded by *g*(*x*) or that *f*(*x*) is of the order of *g*(*x*)

-   *f*(*x*)=*o*(*g*(*x*)) as *x* → *x*<sub>0</sub> if |*f*(*x*)| ≤ *ϵ*|*g*(*x*)| in the neighborhood of *x*<sub>0</sub> for all positive values of *ϵ*. We say that *f*(*x*) is asymptotically smaller than *g*(*x*)

-   *f*(*x*) *g*(*x*) as *x* → *x*<sub>0</sub> if *f*(*x*)=*g*(*x*)+*o*(*g*(*x*)) in the neighborhood of *x*<sub>0</sub>. We say that *f*(*x*) is asymptotically equal to *g*(*x*)

<span>characteristic length</span>

-   If we define the maximum difference of a function between too points as
    $$\\bar{f}  = \\text{max} |f(x\_1) - f(x\_2)|$$

-   Then for some *l* the following will be true
    $$|\\frac{df}{dx}| \\le \\frac{\\bar{f}}{l}$$

-   The largest *l* which satisifes this equation is termed the characteristic length

-   For estimating higher order derivatives we us
    $$|\\frac{d^k f}{dx^k}| \\le \\frac{\\bar{f}}{k}$$

<span>variational asymptotic method</span>

-   Let us consider a functional *I*\[*u*, *ϵ*\] which depends on some elements, *u*, as well as some small parameter, *ϵ*

-   For a beam, we could say that *u* represents the 3D displacement field, while *ϵ* is the aspect ratio of the cross section with respect to the length

-   Let us call the stationary value of this functional $\\bar{u}$

-   $\\bar{u}$ will be a function of *ϵ*, and will approach its asymptotic limit as *ϵ* → 0

-   This is often referred to as the zeroth order approximation

<span>varational asymptotic method</span>

-   We start with a zeroth-order approximation and let *I*<sub>0</sub>\[*u*\]=*I*\[*u*, 0\] and find the stationary values

-   The following cases could be encountered

    1.  Case 1: *I*<sub>0</sub>\[*u*\] has isolated stationary points

    2.  Case 2: *I*<sub>0</sub>\[*u*\] has non-isolated stationary points

    3.  Case 1: *I*<sub>0</sub>\[*u*\] does not have stationary points

    4.  Case 1: *I*<sub>0</sub>\[*u*\] is meaningless (undefined)

<span>case one</span>

-   If *I*<sub>0</sub> has isolated stationary points, we can use them as a first approximate for stationary points of *I*

-   We now write $u = \\bar{u} + u^\\prime$ and we can arrange terms to find *I*<sub>1</sub>\[*u*<sup>′</sup>, *ϵ*\]

-   The stationary points of *I*<sub>1</sub> can then be found, this process is repeated to the desired order

<span>example</span>

-   Approximate the stationary values of
    *f*(*u*, *ϵ*)=*u*<sup>2</sup> + *u*<sup>3</sup> + 2*ϵ**u* + *ϵ**u*<sup>2</sup> + *ϵ*<sup>2</sup>*u*

<span>case two</span>

-   Consider the following
    *f*(*x*, *y*, *ϵ*)=*f*<sub>0</sub>(*x*)+*ϵ**g*(*x*, *y*)

-   If we drop the small term, *ϵ**g*(*x*, *y*), we find stationary lines in the *y*-direction

<span>example</span>

-   Approximate the stationary values of
    $$f(x,y,\\epsilon) = \\cos(x-y) + \\epsilon\\left(\\frac{1}{x} + y\\right)$$

<span>example</span>

-   Approximate the stationary values of
    *f*(*x*, *y*, *ϵ*)=*x*<sup>2</sup> − 2*x* + 4*ϵ*(*x* − 1)*y* + *ϵ*<sup>2</sup>*y*<sup>2</sup> + 2*ϵ*<sup>2</sup>*y*

<span>cases three and four</span>

-   It is not uncommon to have a problem where *I*<sub>0</sub> has no stationary points
    *f*(*u*, *ϵ*)=*u* + *ϵ**u*<sup>2</sup> + sin*ϵ**u*

-   The only way to approach such problems is to make a substitution

-   For the above problem, if we let *v* = *ϵ**u* and *g* = *ϵ**f* we find
    *g*(*v*, *ϵ*)=*v* + *v*<sup>2</sup> + *ϵ*sin*v*

<span>next class</span>

-   Project description

-   SwiftComp


