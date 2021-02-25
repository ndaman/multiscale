## AE 760AA: Micromechanics and multiscale modeling
Lecture 10 - Variational Asymptotic Method

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

4 March, 2021

----
## schedule

-   Mar 4 - Boundary Conditions (HW3 Due)
-   Mar 9 - Project Descriptions
-   Mar 11 - SwiftComp
-   Mar 16 - Work Day

----
## outline
<!-- TOC START min:1 max:1 link:false update:true -->
- converting to variational statements
- ritz method
- variational asymptotic method

<!-- TOC END -->


---
# converting to variational statements

----
## differential to variational

-   In general, a differential statement can be expressed as

`$$\begin{aligned}
  L(u) + f &= 0 \qquad \text{in} \qquad \Omega\\
  B(u) + g &= 0 \qquad \text{on} \qquad \Gamma\\
\end{aligned}$$`

-   Where *L* is a differential operator, *B* can be either differential or algebraic
-   `$\Omega$` is the domain and `$\Gamma$` is the boundary

----
## differential to variational

-   The equivalent variational statement is

`$$\Pi (u) = \int_\Omega \delta u [L(u) + f] d\Omega - \int_\Gamma \delta u [B(u) + g] d\Gamma = 0$$`

-   We can then perform integration by parts on *L*(*u*) to form the variational statement with

`$$\delta \Pi = 0$$`

----
## example

-   2D steady-state heat transfer

---
# ritz method

----
## ritz method

-   Only a small set of Euler-Lagrange equations have exact solutions
-   The Ritz method is one way to find approximate (and exact) solutions
-   In the Ritz method we approximate some continuously differentiable function with a linear combination of functions
-   We can choose the form of these functions based on our problem, polynomials and trig functions are common

`$$y_n = \sum a_k w_k$$`

----
## ritz method

-   The general method for using the Ritz method with variational statements can be summarized as
    1.  Select a set of trial functions
    2.  Form a linear combination of trial functions to approximate `$y \approx y_n$`
    3.  Substitute `$y_n$` into the functional, `$I[y]=I[a_1,a_2,...,a_n]$`
    4.  Obtain a system of equations by carrying out the partial derivatives `$\frac{\partial I}{\partial a_n}$`
    5.  Solve this system for the unknown coefficients to find *y*

----
## ritz method

-   We can increase the accuracy by including more terms
-   If our set contains the exact solution, the solution will be exact
-   The Ritz method is a direct method solving stationary problems of functionals and an indirect method for solving Euler-Lagrange equations

----
## kantarovich method

-   A slightly different approach to the Ritz method is used by Kantarovich

`$$ I[y] = \int_t \int_x F(x,t,y) dx dt $$`

-   Where boundary conditions are *y*(*x*<sub>1</sub>, *t*)=*y*<sub>1</sub>(*t*), *y*(*x*<sub>2</sub>, *t*)=*y*<sub>2</sub>(*t*) and *y*(*x*, *t*<sub>1</sub>)=*y*<sub>3</sub>(*x*)
-   Where boundary conditions are `$y(x_1, t) = y_1(t), y(x_2,t) = y_2(t)$` and `$y(x,t_1)=y_3(x)$`
-   The trial function will then have the form

`$$y(x,t) = g^P (x) + \sum f_j (t) g(j) H(x) $$`

-   This gives a functional which can be solved for *f*<sub>*j*</sub>(*t*)

`$$I[f] = \int_t F(f_j(t)) dt$$`

----
## examples

-   Solve the differential equation

`$$\frac{d^2 u}{dx^2} +u + x = 0$$`

for `$0 \le x \le 1$` with *u*(0)=*u*(1)=0

----
## examples

-   A 2D domain defined by `$x\in [0,\pi]$` and `$y\in [0,1]$` solve the following PDE

`$$\frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0$$`

-   Where `$u(0,y) = u(\pi, y) = u(0,x) = 0$` and `$u(x,1)=\sin x$` 

----
## examples

- worked solutions [here](https://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/examples/Ritz.ipynb)

---
# variational asymptotic method

----
## asymptotic analysis

-   Asymptotic analysis is a mathematical method to describe limiting behavior
-   It is used to numerically approximate solutions
-   Also used in probability theory (large-sample behavior of random variables)
-   Computer science (algorithm performance)

----
## example

-   Compute `$\sin 39^\circ$` without using trig functions on calculator
-   We know `$\sin 30^\circ = 0$` and `$\cos 30^\circ = \sqrt{3}/2$`
-   Expand `$\sin \theta$` about some known `$\theta_0$` using Taylor Series

`$$\sin \theta = \sin \theta_0 + (\theta-\theta_0) \cos \theta_0 - \frac{1}{2} (\theta-\theta_0)^2 \sin \theta_0 + ...$$`

-   With only three terms of a Taylor series, we have a very close approximation
-   This only works when `$\theta - \theta_0$` is less than 1 in radians

----
## o notation

- Suppose `$f(x)$` and `$g(x)$` are continuous functions with defined limits as `$x \to x_0$`
- `$f(x) = O(g(x))$` as `$x \to x_0$` if `$|f(x)| \le K|g(x)|$` in the neighborhood of `$x_0$` where `$K$` is a constant.
We say that `$f(x)$` is asymptotically bounded by `$g(x)$` or that `$f(x)$` is of the order of `$g(x)$`
- `$f(x) = o(g(x))$` as `$x \to x_0$` if `$|f(x)| \le \epsilon|g(x)|$` in the neighborhood of `$x_0$` for all positive values of `$\epsilon$`.
We say that `$f(x)$` is asymptotically smaller than `$g(x)$`
- `$f(x) ~ g(x)$` as `$x \to x_0$` if `$f(x) = g(x) + o(g(x))$` in the neighborhood of `$x_0$`.
We say that `$f(x)$` is asymptotically equal to `$g(x)$`

----
## characteristic length

-   If we define the maximum difference of a function between too points as

`$$\bar{f}  = \text{max} |f(x_1) - f(x_2)|$$`

-   Then for some *l* the following will be true

`$$|\frac{df}{dx}| \le \frac{\bar{f}}{l}$$`

-   The largest *l* which satisifes this equation is termed the characteristic length
-   For estimating higher order derivatives we us

`$$|\frac{d^k f}{dx^k}| \le \frac{\bar{f}}{k}$$`

----
## variational asymptotic method

-   Let us consider a functional `$I[u, \epsilon]$` which depends on some elements, *u*, as well as some small parameter, `$\epsilon$`
-   For a beam, we could say that *u* represents the 3D displacement field, while `$\epsilon$` is the aspect ratio of the cross section with respect to the length
-   Let us call the stationary value of this functional `$\bar{u}$`
-   `$\bar{u}$` will be a function of `$\epsilon$`, and will approach its asymptotic limit as `$\epsilon \to 0$`
-   This is often referred to as the zeroth order approximation

----
## varational asymptotic method

-   We start with a zeroth-order approximation and let `$I_0[u]=I[u,0]$` and find the stationary values
-   The following cases could be encountered
    1.  `$I_0[u]$` has isolated stationary points
    2.  `$I_0[u]$` has non-isolated stationary points
    3.  `$I_0[u]$` does not have stationary points
    4.  `$I_0[u]$` is meaningless (undefined)

----
## case one

-   If `$I_0$` has isolated stationary points, we can use them as a first approximate for stationary points of *I*
-   We now write `$u = \bar{u} + u^\prime$` and we can arrange terms to find `$I_1[u^\prime,\epsilon]$`
-   The stationary points of `$I_1$` can then be found, this process is repeated to the desired order

----
## example

-   Approximate the stationary values of

`$$f(u,\epsilon) = u^2 + u^3 + 2\epsilon u + \epsilon u^2 + \epsilon^2 u$$`

----
## case two

-   Consider the following

`$$f(x,y,\epsilon) = f_0(x) + \epsilon g(x,y)$$`

-   If we drop the small term, `$\epsilon g(x, y)$`, we find stationary lines in the *y*-direction

----
## example

-   Approximate the stationary values of

`$$f(x,y,\epsilon) = \cos(x-y) + \epsilon\left(\frac{1}{x} + y\right)$$`

----
## example

-   Approximate the stationary values of

`$$f(x,y,\epsilon) = x^2 - 2x + 4\epsilon (x-1)y + \epsilon^2 y^2 + 2\epsilon^2 y$$`

----
## cases three and four

- It is not uncommon to have a problem where `$I_0$` has no stationary points

`$$f(u,\epsilon) = u + \epsilon u^2 + \sin \epsilon u$$`

- The only way to approach such problems is to make a substitution
- For the above problem, if we let `$v=\epsilon u$` and `$g=\epsilon f$` we find

`$$g(v,\epsilon) = v + v^2 + \epsilon \sin v$$`

----
## next class

-   Project description
-   SwiftComp
