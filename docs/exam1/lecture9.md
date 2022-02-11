## AE 760AA: Micromechanics and multiscale modeling
Lecture 9 - Variational Calculus

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

10 February 2022

----
## schedule

-   8 Feb - Variational Calculus
-   10 Feb - Variational asymptotic method (HW3 Due)
-   15 Feb - Boundary Conditions
-   17 Feb - Project Descriptions (HW4 Due)

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

`$a_{ijkl}^q = a_{ij}a_{kl}$`

`$$\begin{gathered}
  a_4^l = -\frac{1}{35}(\delta_{ij} \delta_{kl} + \delta_{ik} \delta_{jl} + \delta_{il}\delta_{jk}) + \\
  \frac{1}{7} (a_{ij} \delta_{kl} + a_{ik}\delta_{jl} + a_{il}\delta_{jk} + a_{kl} \delta_{ij} + a_{jl}\delta_{ik} + a_{jk}\delta_{il})
\end{gathered}$$`

-   NOTE: Many of you copied my linear closure approximation, which used constants for 2D orientation
-   In 2D replace `$-\frac{1}{35}$` and `$\frac{1}{7}$` with `$-\frac{1}{24}$` and `$\frac{1}{6}$`, respectively

---
# boundary conditions

----
## boundaries

-   Not all problems of functionals have well-defined boundary conditions
-   The Euler-Lagrange equation will be the same
-   Consider the example

`$$I[y] = \int_{x_0}^{x_1} [p(x)(\dot{y})^2 + q(x) y^2 + f(x)y]dx + h_1y^2(x_1) + h_0y^2(x_0)$$`

----
## boundaries

-   For the functional to be stationary we have

`$$\begin{gathered}
  I[y] = 2\int_{x_0}^{x_1} [-\dot{(p\dot{y})} + qy + f]\delta y dx + \\
  2p\dot{y} \delta y|_{x_0}^{x_1} + 2h_1y(x_1)\delta y(x_1) + 2h_0y(x_0)\delta y(x_0) = 0
\end{gathered}$$`

----
## boundaries 

-   Satisfying the Euler-Lagrange equation will ensure the first line is equal to zero
-   The second line forms the natural boundary conditions

`$$\begin{aligned}
  p(x_1) \dot{y}(x_1) + h_1 y(x_1) &= 0\\
  -p(x_0) \dot{y}(x_0) + h_0 y(x_0) &= 0
\end{aligned}$$`

----
## natural and geometric boundaries

-   In general, if a functional contains the derivative of an unknown function to the `$m^\text{th}$` order:
-   Boundary conditions expressed in terms of the unknown function to the `$(m-1)^\text{th}$` order are geometric boundary conditions
-   Boundary conditions expressed in terms of the unknown function higher than the `$(m-1)^\text{th}$` order are natural boundary conditions
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

`$$I = \int_{x_0}^{x_1} F(y, \dot{y}, x) dx$$`

-   With boundary conditions, `$y(x_0)=y_0$` and `$y(x_1)=y_1$`
-   And the subsidiary condition

`$$\int_{x_0}^{x_1} G(y, \dot{y}, x)dx = C$$`

----
## subsidiary conditions

-   The stationary conditions for this functional can be obtained using

`$$\delta I^* = 0$$`

-   Where

`$$I^* = \int_{x_0}^{x_1} F(y, \dot{y}, x) dx + \lambda\left(\int_{x_0}^{x_1} G(y, \dot{y}, x)dx - C\right)$$`

----
## subsidiary conditions

-   Carrying out the variation we find

`$$\begin{gathered}
  \delta I^* = \int_{x_0}^{x_1} \left \{ \frac{\partial F}{\partial y} - \frac{d}{dx} \frac{\partial F}{\partial \dot{y}} + \lambda \left [ \frac{\partial G}{\partial y} - \frac{d}{dx} \frac{\partial G}{\partial \dot{y}} \right ] \right \} \delta y dx + \\
  \delta \lambda \left( \int_{x_0}^{x_1} G(y, \dot{y}, x)dx - C \right) = 0
\end{gathered}$$`

-   Which gives the Euler-Lagrange equation

`$$\frac{\partial F}{\partial y} - \frac{d}{dx} \frac{\partial F}{\partial \dot{y}} + \lambda \left[ \frac{\partial G}{\partial y} - \frac{d}{dx} \frac{\partial G}{\partial \dot{y}} \right]$$`

----
## subsidiary conditions

-   If the subsidiary condition is given in terms of differential equations instead of an integral

`$$G(x,y,\dot{y}) = 0$$`

-   Then we must write the functional as

`$$J[y,\lambda] = \int_{x_0}^{x_1} F(y, \dot{y}, x) dx + \int_{x_0}^{x_1} \lambda G(y, \dot{y}, x)dx$$`

-   Since `$\lambda$` will be a function of *x*

----
## subsidiary conditions

-   The only difference in the Euler-Lagrange solution is that `$\lambda$` will be inside the derivative

`$$\frac{\partial F}{\partial y} - \frac{d}{dx} \frac{\partial F}{\partial \dot{y}} + \lambda \frac{\partial G}{\partial y} - \frac{d}{dx} \left(\lambda \frac{\partial G}{\partial \dot{y}}\right)$$`

----
## example

-   A uniform power line with length *C* and density `$\rho$` is hanging between two points, `$(x_0,y_0)$` and `$(x_1,y_2)$`
-   With gravity acting in the *y* direction, find the shape of the power line in equilibrium

---
# multiple variables

----
## higher derivatives

-   While our development has only used one derivative of *y*, it can easily be extended

`$$I[y] = \int_{x_0}^x{1} F(x,y,\dot{y},\ddot{y},\dddot{y},...,y^{(n)}) dx$$`

-   The first variation is

`$$\delta I[y] = \int_{x_0}^x{1} \left[ \frac{\partial F}{\partial y} \delta y + \frac{\partial F}{\partial \dot{y}}\delta \dot{y} + ... + \frac{\partial F}{\partial y^{(n)}} \delta y^{(n)}\right]dx$$`

-   Carrying out successive integration by parts we find

`$$\delta I[y] = \int_{x_0}^x{1} \left[ \frac{\partial F}{\partial y} - \frac{d}{dx}\left( \frac{\partial F}{\partial \dot{y}}\right) + ... + (-1)^n \frac{d^{n}}{dx^{n}}\left(\frac{\partial F}{\partial y^{(n)}}\right)\right] \delta ydx$$`

----
## higher derivatives

-   The Euler-Lagrange equation is merely in the terms inside the integral
-   Boundary terms from integration vanish when `$y, \dot{y}, ... , y^{(n)}$` are prescribed at the boundaries

----
## multiple functions

-   A functional could also consist of several functions, for example

`$$I[y,z] = \int_{x_0}^x{1} F(x,y,z,\dot{y},\dot{z})dx$$`

-   Where both *y* and *z* are functions of *x*
-   In this case the Euler-Lagrange equation is two equations

`$$\frac{\partial F}{\partial y} - \frac{d}{dx}\left(\frac{\partial F}{\partial \dot{y}}\right) = 0 \qquad \frac{\partial F}{\partial z} - \frac{d}{dx}\left(\frac{\partial F}{\partial \dot{z}}\right) = 0$$`

----
## multiple variables

-   We could also have multiple fundamental variables in the functional, for example

`$$I [u] = \int \int_G F(x, y, u, u_{,x}, u_{,y}) dx dy$$`

-   The Euler-Lagrange equation is

`$$\frac{\partial F}{\partial u} - \frac{\partial}{\partial x} \left( \frac{\partial F}{\partial u_{,x}} \right) - \frac{\partial}{\partial y} \left( \frac{\partial F}{\partial u_{,y}}\right) = 0$$`

----
## multiple variables 

-   If *u* is prescribed along the boundary, then `$\delta u = 0$` along the boundary, otherwise

`$$\frac{\partial F}{\partial u_{,x}} n_x + \frac{\partial F}{\partial u_{,y}} n_y = 0$$`

along the boundary

----
## example

-   Minimize the mechanical potential energy of a beam with deflection *y* under applied force, *f*(*x*)

`$$I[y] = \int_0^L \left[ \frac{1}{2} EI (\ddot{y})^2 - fy\right] dx$$`

----
## example

-   Minimize the functional

`$$I[y,z] = \int_{x_0}^{x_1} (y^2 - z^2) dx $$`

-   Under the constraint

`$$\dot{y} - y + z = 0$$`

----
## next class

-   Converting between differential and variational statements
-   Approximate solutions
-   Variational asymptotic method
