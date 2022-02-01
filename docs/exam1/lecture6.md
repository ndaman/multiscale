## AE 760AA: Micromechanics and multiscale modeling
Lecture 6 - Orientation Averaging

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

3 February 2022

---
## schedule

-   3 Feb - Orientation Averaging (HW1 Due)
-   8 Feb - Physical measurements
-   10 Feb - Variational Calculus (HW2 Due)
-   15 Feb - Variational Calculus

----
## outline

- orientation averaging
- closure approximations

---
# orientation average

----
## orientation tensor

-   Within a given volume, a distribution of fibers can be defined by some orientation distribution function, `$\psi(\theta, \phi)$`.
-   Advani and Tucker introduced tensor representations of fiber orientation distribution functions
 
`$$a_{ij} = \oint p_i p_j \psi(p) dp$$`

----
## orientation tensor

-   And

`$$a_{ijkl} = \oint p_i p_j p_k p_l\psi(p) dp$$`

-   Note: any order tensor may be defined in this manner, the orientation distribution function must be even, due to fiber symmetry, and thus any odd-ordered tensor will be zero.

----
## orientation averaging

-   Consider *T*(*p*) to be some tensor property of a material, as a function of material orientation
-   The orientation average of *T*(*p*) is denoted by angle brackets and is given by

`$$\langle T \rangle = \oint T(p) \psi (p) dp$$`

----
## orientation averaging

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
## closures

-   While theoretically any-order orientation tensor is possible, in practice only the second-order tensor is used
-   Microscopic measurements do not give enough information for higher-order tensors to be useful
-   Software simulations have not implemented the fourth-order tensor
-   To predict stiffness, we need the fourth-order tensor
-   Closure Approximations are a way to approximate the fourth-order tensor from the second-order tensor

----
## linear closure 

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

----
## hybrid closure

-   Advani proposes

`$$ f = A a_{ij} a_{ji} - B$$`

-   Where *A* = 3/2 and *B* = 1/2 for 3D orientations and *A* = 2 and *B* = 1 for planar orientation

----
## orthotropic fitted closure

-   A more recent method that is commonly used is known as the orthotropic fitted closure
-   The fourth-order tensor is approximated in the principal direction, then rotated back out if necessary

----
## orthotropic fitted 

-   In the principal direction, the fourth-order tensor will be orthotropic (represented in 6x6 as)

`$$A_4 = \begin{bmatrix}
  A_{11} & A_{12} & A_{13} & 0 & 0 & 0 \\
  A_{12} & A_{22} & A_{23} & 0 & 0 & 0 \\
  A_{13} & A_{23} & A_{33} & 0 & 0 & 0 \\
  0 & 0 & 0 & A_{44} & 0 & 0\\
  0 & 0 & 0 & 0 & A_{55} & 0\\
  0 & 0 & 0 & 0 & 0 & A_{66}\\
\end{bmatrix}$$`
<!-- .element font-size="large" -->

----
## orthotropic fitted 

-   The symmetry of the orientation tensor requires that `$A_{66}$` (which is `$a_{1212}$`) be equal to `$A_{12}$` (which is `$a_{1122}$`)
-   By the same symmetry, we have `$A_{55} = A_{13}$` and `$A_{44} = A_{23}$`.
-   We also know that `$a_{ijkk} = a_{ij}$`, which imposes the following equations:


----
## orthotropic fitted 

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

