<span>upcoming schedule</span>

-   Feb 27 - Variational Asymptotic Method (HW 2 resubmission due)

-   Mar 1 - Project Description, Swiftcomp (HW 3 due)

-   Mar 6 - Hasin-Strickman Bounds

-   Mar 8 - Finite Element Tecniques (HW 4 due)

<span>comsol training</span>

-   Hands-on COMSOL web-workshop

-   March 1 at 9:30 - 11:00 am

-   <https://www.comsol.com/events/web-meeting/Introduction-to-COMSOL-Multiphysics-Handson-Web-Workshop-25181#>

-   With registration you will be sent a two-week trial version of COMSOL

-   e-mail me if you are interested in scheduling a seminar room where we could all participate in the webinar together

### outline

\[sections numbered\]

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


