<span>upcoming schedule</span>

-   Mar 1 - Variational Asymptotic Method, Project Description (HW 3 due)

-   Mar 6 - SwiftComp

-   Mar 8 - Hashin-Strickman Bounds (HW 4 due)

-   Mar 13 - Finite Element Techniques

### outline

\[sections numbered\]

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

final project
=============

<span>final project</span>

-   Choose some multi-scale problem that we can use techniques from this class in

-   This could be related to research you are doing (modeling composite properties in a 3D-print)

-   You can also choose (or modify slightly) cases 3-6 from the Micromechanics challenge

-   Remember this project is in place of the final exam, you should demonstrate what you have learned in this course

<span>final project</span>

-   There are three main parts to the analysis you will do on the final project

    1.  A simplified model which can be solved using an analytical method (Eshelby)

    2.  A parametric finite element model (validate to Eshelby, then scale to correct volume fraction)

    3.  Some micromechanics software analysis (SwiftComp, CRAFT, MAC/GMC, etc.)

<span>project report</span>

-   In your report you should assume that the reader is already familiar with Finite Elements and the Eshelby method

-   The reader may not, however, be familiar with the micromechanics tool you are using

-   You should describe the method that your chosen software is using (i.e. Variational Asymptotic Method for SwiftComp, Fourier Transforms for CRAFT, Method of Cells for MAC/GMC. etc.)

-   Make some conclusions about the software you are using

    -   Have you demonstrated that the results from this method are correct?

    -   What advantages does it have over analytic methods and finite elements?

    -   Are there cases where you would expect your software to have difficulty?

<span>project rubric</span> Projects will be graded on the following rubric

-   Analytic Model - 25%

-   Finite Element Analysis - 25%

-   Micromechanics Software - 25%

-   Conclusion - 15%

-   General Presentation - 10%

<span>project abstract</span>

-   Homework 5 will be your project abstract

-   Due 3/29 (after Spring Break)

-   Describe what problem you want to solve and what you will use to solve it

-   List a few challenges you expect to face, how they could be overcome

<span>analytical method</span>

-   I think homework 6 or 7 will be over the analytical model for your problem

-   Due date will be provided later

-   This is just to make sure things are on track for your final project


