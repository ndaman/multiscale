## AE 760AA: Micromechanics and multiscale modeling
Lecture 9 - Variational Calculus

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

February 20, 2019

----
## schedule

-   Feb 20 - Variational Calculus
-   Feb 25 - Bounds and Boundary Conditions (HW 3 Due)
-   Feb 27 - Project Description
-   Mar 4 - SwiftComp

----
## outline
<!-- TOC START min:1 max:1 link:false update:true -->
- boundary conditions
- multiple variables

<!-- TOC END -->


----
## homework

-   My Python functions are not a substitute for understanding the math
-   You can program in any language, but it is also possible to do Mori-Tanaka in Excel
-   In my code I switched between tensor and matrix notation to avoid re-writing equations
-   Alternatively, we could re-write tensor equations entirely

----
## tensor equations

*a*<sub>*ijkl*</sub><sup>*q*</sup>=*a*<sub>*ij*</sub>*a*<sub>*kl*</sub>
$$\\begin{gathered}
  a\_4^l = -\\frac{1}{35}(\\delta\_{ij} \\delta\_{kl} + \\delta\_{ik} \\delta\_{jl} + \\delta\_{il}\\delta\_{jk}) + \\\\
  \\frac{1}{7} (a\_{ij} \\delta\_{kl} + a\_{ik}\\delta\_{jl} + a\_{il}\\delta\_{jk} + a\_{kl} \\delta\_{ij} + a\_{jl}\\delta\_{ik} + a\_{jk}\\delta\_{il})
\\end{gathered}$$
-   NOTE: Many of you copied my linear closure approximation, which used constants for 2D orientation
-   In 2D replace $-\\frac{1}{35}$ and $\\frac{1}{7}$ with $-\\frac{1}{24}$ and $\\frac{1}{6}$, respectively

---
# boundary conditions

----
## boundaries

-   Not all problems of functionals have well-defined boundary conditions
-   The Euler-Lagrange equation will be the same
-   Consider the example
$$I\[y\] = \\int\_{x\_0}^{x\_1} \[p(x)(\\dot{y})^2 + q(x) y^2 + f(x)y\]dx + h\_1y^2(x\_1) + h\_0y^2(x\_0)$$

----
## boundaries

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

----
## natural and geometric boundaries

-   In general, if a functional contains the derivative of an unknown function to the *m*<sup>th</sup> order:
-   Boundary conditions expressed in terms of the unknown function to the (*m*-1)<sup>th</sup> order are geometric boundary conditions
-   Boundary conditions expressed in terms of the unknown function higher than the (*m* - 1)<sup>th</sup> order are natural boundary conditions
-   When there are geometric boundaries, the variation will be zero at the boundaries
-   Otherwise the coefficients must equal zero

----
## example

-   Find the governing differential equation and boundary conditions for a bar of stiffness *EA*, length *L*
-   Subjected to a tensile load, *p*(*x*)
-   There is a spring of stiffness *k* attached to *x*=*L*
-   The bar is fixed at *x*=0

----
## subsidiary conditions

-   We have discussed problems with or without prescribed boundary conditions
-   We may also have additional constraints (also known as subsidiary conditions)
-   The can be formulated using the same method as the Lagrange Multiplier

----
## subsidiary conditions

-   Consider a functional
$$I = \\int\_{x\_0}^{x\_1} F(y, \\dot{y}, x) dx$$
-   With boundary conditions, *y*(*x*<sub>0</sub>)=*y*<sub>0</sub> and *y*(*x*<sub>1</sub>)=*y*<sub>1</sub>
-   And the subsidiary condition
$$\\int\_{x\_0}^{x\_1} G(y, \\dot{y}, x)dx = C$$

----
## subsidiary conditions

-   The stationary conditions for this functional can be obtained using
$$\delta I^* = 0$$
-   Where
$$I^\* = \\int\_{x\_0}^{x\_1} F(y, \\dot{y}, x) dx + \\lambda\\left(\\int\_{x\_0}^{x\_1} G(y, \\dot{y}, x)dx - C\\right)$$

----
## subsidiary conditions

-   Carrying out the variation we find
$$\\begin{gathered}
  \\delta I^\* = \\int\_{x\_0}^{x\_1} \\left \\{ \\frac{\\partial F}{\\partial y} - \\frac{d}{dx} \\frac{\\partial F}{\\partial \\dot{y}} + \\lambda \\left \[ \\frac{\\partial G}{\\partial y} - \\frac{d}{dx} \\frac{\\partial G}{\\partial \\dot{y}} \\right \] \\right \\} \\delta y dx + \\\\
  \\delta \\lambda \\left( \\int\_{x\_0}^{x\_1} G(y, \\dot{y}, x)dx - C \\right) = 0
\\end{gathered}$$
-   Which gives the Euler-Lagrange equation
$$\\frac{\\partial F}{\\partial y} - \\frac{d}{dx} \\frac{\\partial F}{\\partial \\dot{y}} + \\lambda \\left\[ \\frac{\\partial G}{\\partial y} - \\frac{d}{dx} \\frac{\\partial G}{\\partial \\dot{y}} \\right\]$$

----
## subsidiary conditions

-   If the subsidiary condition is given in terms of differential equations instead of an integral
$$G(x,y,\\dot{y}) = 0$$
-   Then we must write the functional as
$$J\[y,\\lambda\] = \\int\_{x\_0}^{x\_1} F(y, \\dot{y}, x) dx + \\int\_{x\_0}^{x\_1} \\lambda G(y, \\dot{y}, x)dx$$
-   Since $\lambda$ will be a function of *x*

----
## subsidiary conditions

-   The only difference in the Euler-Lagrange solution is that $\lambda$ will be inside the derivative
$$\\frac{\\partial F}{\\partial y} - \\frac{d}{dx} \\frac{\\partial F}{\\partial \\dot{y}} + \\lambda \\frac{\\partial G}{\\partial y} - \\frac{d}{dx} \\left(\\lambda \\frac{\\partial G}{\\partial \\dot{y}}\\right)$$

----
## example

-   A uniform power line with length *C* and density $\rho$ is hanging between two points, (*x*<sub>0</sub>, *y*<sub>0</sub>) and (*x*<sub>1</sub>, *y*<sub>1</sub>)
-   With gravity acting in the *y* direction, find the shape of the power line in equilibrium

---
# multiple variables

----
## higher derivatives

-   While our development has only used one derivative of *y*, it can easily be extended
$$I\[y\] = \\int\_{x\_0}^x{1} F(x,y,\\dot{y},\\ddot{y},\\dddot{y},...,y^{(n)}) dx$$
-   The first variation is
$$\\delta I\[y\] = \\int\_{x\_0}^x{1} \\left\[ \\frac{\\partial F}{\\partial y} \\delta y + \\frac{\\partial F}{\\partial \\dot{y}}\\delta \\dot{y} + ... + \\frac{\\partial F}{\\partial y^{(n)}} \\delta y^{(n)}\\right\]dx$$
-   Carrying out successive integration by parts we find
$$\\delta I\[y\] = \\int\_{x\_0}^x{1} \\left\[ \\frac{\\partial F}{\\partial y} - \\frac{d}{dx}\\left( \\frac{\\partial F}{\\partial \\dot{y}}\\right) + ... + (-1)^n \\frac{d^{n}}{dx^{n}}\\left(\\frac{\\partial F}{\\partial y^{(n)}}\\right)\\right\] \\delta ydx$$

----
## higher derivatives

-   The Euler-Lagrange equation is merely in the terms inside the integral
-   Boundary terms from integration vanish when $y, \\dot{y}, ... , y^{(n)}$ are prescribed at the boundaries

----
## multiple functions

-   A functional could also consist of several functions, for example
$$I\[y,z\] = \\int\_{x\_0}^x{1} F(x,y,z,\\dot{y},\\dot{z})dx$$
-   Where both *y* and *z* are functions of *x*
-   In this case the Euler-Lagrange equation is two equations
$$\\frac{\\partial F}{\\partial y} - \\frac{d}{dx}\\left(\\frac{\\partial F}{\\partial \\dot{y}}\\right) = 0 \\qquad \\frac{\\partial F}{\\partial z} - \\frac{d}{dx}\\left(\\frac{\\partial F}{\\partial \\dot{z}}\\right) = 0$$

----
## multiple variables

-   We could also have multiple fundamental variables in the functional, for example
`$$I [u] = \int \int_G F(x, y, u, u_{,x}, u_{,y}) dx dy$$`
-   The Euler-Lagrange equation is
$$\\frac{\\partial F}{\\partial u} - \\frac{\\partial}{\\partial x} \\left( \\frac{\\partial F}{\\partial u\_{,x}} \\right) - \\frac{\\partial}{\\partial y} \\left( \\frac{\\partial F}{\\partial u\_{,y}}\\right) = 0$$
-   If *u* is prescribed along the boundary, then `$\delta u = 0$` along the boundary, otherwise
$$\\frac{\\partial F}{\\partial u\_{,x}} n\_x + \\frac{\\partial F}{\\partial u\_{,y}} n\_y = 0$$
     along the boundary

----
## example

-   Minimize the mechanical potential energy of a beam with deflection *y* under applied force, *f*(*x*)
$$I\[y\] = \\int\_0^L \\left\[ \\frac{1}{2} EI (\\ddot{y})^2 - fy\\right\] dx$$

----
## example

-   Minimize the functional
$$I[y,z] = \int_{x_0}^{x_1} (y^2 - z^2) dx $$

-   Under the constraint
$$\\dot{y} - y + z = 0$$

----
## next class

-   Converting between differential and variational statements
-   Approximate solutions
-   Variational asymptotic method
