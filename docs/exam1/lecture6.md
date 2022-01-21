## AE 760AA: Micromechanics and multiscale modeling
Lecture 6 - Orientation Averaging

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

3 February 2022

---
## schedule

-   3 Feb - Orientation Averaging (HW2 Due)
-   8 Feb - Variational Calculus
-   10 Feb - Variational Calculus
-   15 Feb - Physical measurements


----
## outline

- orientation averaging
- closure approximations
- variational calculus

---
# orientation average

----
## orientation tensor

-   Within a given volume, a distribution of fibers can be defined by some orientation distribution function, `$\psi(\theta, \phi)$`.
-   Advani and Tucker introduced tensor representations of fiber orientation distribution functions
 
`$$a_{ij} = \oint p_i p_j \psi(p) dp$$`

-   And

`$$a_{ijkl} = \oint p_i p_j p_k p_l\psi(p) dp$$`

-   Note: any order tensor may be defined in this manner, the orientation distribution function must be even, due to fiber symmetry, and thus any odd-ordered tensor will be zero.

----
## orientation averaging

-   Consider *T*(*p*) to be some tensor property of a material, as a function of material orientation
-   The orientation average of *T*(*p*) is denoted by angle brackets and is given by

`$$\langle T \rangle = \oint T(p) \psi (p) dp$$`

-   For a uni-directional fiber, we would expect `$\langle T \rangle$` to be transversely isotropic, which for a second-order tensor requires
 
`$$\langle T_{ij} \rangle = A_1 \langle p_i p_j \rangle + A_2 \delta_{ij}$$`

-   but `$\langle p_i p_j \rangle$` is the second-order orientation tensor
-   The unknown constants, `$A_1$` and `$A_2$`, can be easily solved for in terms of the uni-directional properties

----
## orientation averaging

-   Similarly, if *T* is a fourth-order tensor property then transverse isotropy requires that

`$$\begin{gathered}
  \langle T_{ijkl} \rangle = B_1 a_{ijkl} + B_2 (a_{ij} \delta_{kl} + a_{kl} \delta_{ij}) + \\
  B_3(a_{ik} \delta_{jl} + a_{il} \delta_{jk} + a_{jl} \delta_{ik} + a_{jk} \delta_{il}) + \\
  B_4(\delta_{ij}\delta_{kl}) + B_5 (\delta_{ik}\delta_{jl} + \delta_{il}\delta_{jk})
\end{gathered}$$`

-   We can solve for `$B_\alpha$` by considering fibers aligned in the three-direction, we have `$a_{3333} = 1$` and all other `$a_{ijkl} = 0$`.
-   We can choose any values of *i*, *j*, *k*, *l* that would give 5 unique equations to solve equations for `$B_\alpha$`

----
## orientation averaging

-   Here we will consider `$T_{1111}$`, `$T_{3333}$`, `$T_{1122}$`, `$T_{2233}$`, `$T_{1313}$`.

`$$\begin{aligned}
  T_{1111} &= B_4 + 2B_5\\
  T_{3333} &= B_1 + 2B_2 + 4B_3 + B_4 +2B_5\\
  T_{1122} &= B_4\\
  T_{2233} &= B_2 + B_4\\
  T_{1313} &= B_3 + B_5
\end{aligned}$$`

----
## orientation averaging

-   After some manipulation, we find

`$$\begin{aligned}
  B_1 &= T_{1111} + T_{3333} -2T_{2233} - 4T_{1313}\\
  B_2 &= T_{2233} - T_{1122}\\
  B_3 &= T_{1313} - \frac{1}{2}(T_{1111}-T_{1122})\\
  B_4 &= T_{1122}\\
  B_5 &= \frac{1}{2}(T_{1111}-T_{1122})
\end{aligned}$$`

---
# closure approximations

----
## closure approximations

-   While theoretically any-order orientation tensor is possible, in practice only the second-order tensor is used
-   Microscopic measurements do not give enough information for higher-order tensors to be useful
-   Software simulations have not implemented the fourth-order tensor
-   To predict stiffness, we need the fourth-order tensor
-   Closure Approximations are a way to approximate the fourth-order tensor from the second-order tensor

----
## linear closure approximate

-   For 3D orientations, the linear approximation is given by

`$$\begin{gathered}
  a_4^l = -\frac{1}{35}(\delta_{ij} \delta_{kl} + \delta_{ik} \delta_{jl} + \delta_{il}\delta_{jk}) + \\
  \frac{1}{7} (a_{ij} \delta_{kl} + a_{ik}\delta_{jl} + a_{il}\delta_{jk} + a_{kl} \delta_{ij} + a_{jl}\delta_{ik} + a_{jk}\delta_{il})
\end{gathered}$$`

-   For planar orientations we simply replace the two coefficients with `$-\frac{1}{24}$` and `$\frac{1}{6}$`

----
## quadratic closure

-   We can also use a quadratic closure method

`$$ a_4^q = a_{ijkl}$$`

-   If the fibers are randomly aligned, the linear closure will give the exact result
-   If the fibers are perfectly oriented, the quadratic closure will give the exact result

----
## hybrid closure

-   Advani proposed a hybrid closure to take advantage of both the linear and quadratic methods
-   We will introduce a parameter *f* and use it to combine both linear and quadratic closures

`$$a_4^h = (1-f)a_4^l + fa_4^q $$`

-   Ideally, we would like *f* to be 1 for perfectly oriented fibers and 0 for random fibers
-   Advani proposes

`$$ f = A a_{ij} a_{ji} - B$$`

-   Where *A* = 3/2 and *B* = 1/2 for 3D orientations and *A* = 2 and *B* = 1 for planar orientation

----
## orthotropic fitted closure

-   A more recent method that is commonly used is known as the orthotropic fitted closure
-   The fourth-order tensor is approximated in the principal direction, then rotated back out if necessary
-   In the principal direction, the fourth-order tensor will be orthotropic (represented in 6x6 as)

`$$A_4 = \begin{bmatrix}
  A_{11} & A_{12} & A_{13} & 0 & 0 & 0 \\
  A_{12} & A_{22} & A_{23} & 0 & 0 & 0 \\
  A_{13} & A_{23} & A_{33} & 0 & 0 & 0 \\
  0 & 0 & 0 & A_{44} & 0 & 0\\
  0 & 0 & 0 & 0 & A_{55} & 0\\
  0 & 0 & 0 & 0 & 0 & A_{66}\\
\end{bmatrix}$$`

----
## orthotropic fitted closure

-   The symmetry of the orientation tensor requires that `$A_{66}$` (which is `$a_{1212}$`) be equal to `$A_{12}$` (which is `$a_{1122}$`)
-   By the same symmetry, we have `$A_{55} = A_{13}$` and `$A_{44} = A_{23}$`.
-   We also know that `$a_{ijkk} = a_{ij}$`, which imposes the following equations:

`$$\begin{aligned}
  A_{11} + A_{66} + A_{55} &= a_{11}\\
  A_{66} + A_{22} + A_{44} &= a_{22}\\
  A_{55} + A_{44} + A_{33} &= a_{33}
\end{aligned}$$`

----
## orthotropic fitted closure

-   This leaves only three independent variables in the fourth-order tensor that need to be found.
-   Different authors have proposed different functions to fit these three independent variables
-   They are fit to give the best mold simulation predictions, but do not necessarily have any physical application

----
## discrete calculations

-   To compare with our laminate analogy we can calculate the orientation tensor for discrete orientation states

`$$a_{ij} = \frac{1}{N}\sum p_i p_j$$`

for second-order tensors and

`$$a_{ijkl} = \frac{1}{N}\sum p_i p_j p_k p_l$$`

----
## example

-   Compare Mori-Tanaka stiffness predictions for direct calculation and orientation averaging
-   Compare `$[0/90]_S$`, `$[\pm 45]_S$`, and `$[0/\pm 45/90]_S$`
-   [link](https://colab.research.google.com/drive/1PpahfEvGbXo6P22jI_o0FCFUYOjmpQ3n?usp=sharing)
-   Also compare the results with a closure approximation of the fourth-order tensor

---
# variational calculus

----
## differential and variational statements

-   A differential statement includes a set of governing differential equations established inside a domain and a set of boundary conditions to be satisfied along the boundaries
-   A variational statement is to find stationary conditions for an integral with unknown functions in the integrand
-   Variational statements are advantageous in the following aspects
    -   Clear physical meaning, invariant to coordinate system
    -   Can provide more realistic descriptions than differential statements (concentrated loads)
    -   More easily suited to solving problems numerically or approximately
    -   Can be more systematic and consistent than building a set of differential equations

----
## stationary problems

-   If the function `$F(u_1)$` is defined on a domain, then at `$\frac{dF}{du_1}=1$` it is considered to be stationary
-   This stationary point could be a minimum, maximum, or saddle point
-   We use the second derivative to determine which of these it is: >0 for a minimum, <0 for a maximum and =0 for a saddle point
-   For a function of *n* variables, `$F(u_n)$` the stationary points are

`$$\frac{\partial F}{\partial u_i} = 0$$`

for all values of *i*
-   and to determine the type of stationary point we use
 
`$$\sum_{i,j=1,n} \frac {\partial^2 F}{\partial u_i \partial u_j}$$`

----
## lagrange multipliers

-   Let us now consider a function of several variables, but the variables are subject to a constraint

`$$ f(u_1, u_2, ... ) = 0$$`

-   Algebraically, we could use each provided constraint equation to reduce the number of variables
-   For large problems, it can be cumbersome or impossible to eliminate some variables
-   The Lagrange Multiplier method is an alternative, systematic approach

----
## lagrange multiplier

-   For a constrained problem at a stationary point we will have

`$$dF = \frac{\partial F}{\partial u_1} du_1 + ... + \frac{\partial F}{\partial u_n} du_n = 0$$`

-   The relationship between `$du_i$` can be found by differentiating the constraint

`$$df = \frac{\partial f}{\partial u_1} du_1 + ... + \frac{\partial f}{\partial u_n} du_n = 0$$`

-   We can combine these two equations using a Lagrange Multiplier

`$$\frac{\partial F}{\partial u_1} du_1 + ... + \frac{\partial F}{\partial u_n} du_n + \lambda \left\[\frac{\partial f}{\partial u_1} du_1 + ... + \frac{\partial f}{\partial u_n} du_n \right\]$$`

-   We can re-group terms as
 
`$$\sum_{i=1}^n \left\[\frac{\partial F}{\partial u_i} + \lambda \frac{\partial f}{\partial u_i} \right\]du_i = 0$$`

----
## lagrange multiplier

-   The Lagrange Multiplier, `$\lambda$` is an arbitrary function of `$u_i$`
-   We can choose the Lagrange Multiplier such that

`$$\frac{\partial F}{\partial u_n} + \lambda \frac{\partial f}{\partial u_n}  = 0$$`

-   Which now leaves

`$$\frac{\partial F}{\partial u_i} + \lambda \frac{\partial f}{\partial u_i} = 0 \qquad i=1,2,...,n-1$$`

-   We now define a new function `$F^* = F + \lambda f$`

----
## lagrange multiplier

-   This converts a constrained problem in *n* variables to an unconstrained problem in *n* + 1 variables
-   Notice that while the stationary values of `$F^*$` will be the same as the stationary values to *F*, they will not necessarily correspond
-   For example, a minimum in `$F^*$` might be a maximum in *F*
-   This provides a systematic method for solving problems with any number of variables and constraints, and is also well-posed for numeric solutions

----
## example

-   Design a box with given surface area such that the volume is maximized
-   The box has no cover along one of the surfaces (open-face box)
-   This gives the surface area as `$A = xy + 2 yz + 2 xz = C$`
-   [worked example](https://colab.research.google.com/drive/1z570qNAVFE-I6zcn0A0x7pHn6x84T4vE?usp=sharing)
