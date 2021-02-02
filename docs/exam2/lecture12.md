## AE 760AA: Micromechanics and multiscale modeling
Lecture 12 - Hashin-Shtrikman Bounds

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

March 25, 2019

----
## schedule

- Mar 25 - Hashin-Shtrickman bounds
- Mar 27 - Periodic Boundary Conditions
- Apr 1 - Fourier Analysis 
- Apr 3 - Method of Cells 


----
## outline

<!-- vim-markdown-toc GFM -->

* hashin-shtrikman
* boundary conditions

<!-- vim-markdown-toc -->

---
# hashin-shtrikman

----
## bounds

-   We consider the Voigt and Reuss micromechanics models as bounding cases, properties should need exceed the limits of these two cases
-   Hashin and Shtrikman used variational principles to define more rigorous bounds for composite properties
-   They did this by comparing a heterogeneous composite RVE with an equivalent homogeneous RVE

----
## heterogeneous
$$\\begin{aligned}
  \\sigma\_{ij,j} &= 0\\\\
  \\sigma\_{ij} &= C\_{ijkl} \\epsilon\_{kl}\\\\
  U = \\frac{1}{2} C\_{ijkl} \\epsilon\_{ij}\\epsilon\_{kl}
\\end{aligned}$$

----
## homogeneous
$$\\begin{aligned}
        \\sigma\_{ij,j}^{(0)} &= 0\\\\
        \\sigma\_{ij}^{(0)} &= C\_{ijkl}^{(0)} \\epsilon\_{kl}^{(0)}\\\\
        U = \\frac{1}{2} C\_{ijkl}^{(0)} \\epsilon\_{ij}^{(0)}\\epsilon\_{kl}^{(0)}
    \\end{aligned}$$

----
## relation

-   To relate the two boundary problems, we introduce the following
$$\\begin{aligned}
   u\_i &= u\_i^{(0)} + u\_i^d\\\\
   \\epsilon\_{ij} &= \\epsilon\_{ij}^{(0)} + \\epsilon\_{ij}^d\\\\
   \\sigma\_{ij} &= p\_{ij} + C\_{ijkl}^{(0)} \\epsilon\_{kl} = p\_{ij} + C\_{ijkl}^{(0)}(\\epsilon\_{ij}^{(0)} + \\epsilon\_{ij}^d)
\\end{aligned}$$
-   *u*<sub>*i*</sub><sup>*d*</sup> is the disturbance displacement field and *p*<sub>*ij*</sub> is called the polarization stress

----
## boundary conditions

-   One common RVE boundary condition is known as homogeneous displacement
-   Under homogeneous displacement boundary conditions we have

$$u\_i = \\bar{u}\_i = u\_i^{(0)}$$

along the boundary
-   Under this condition we have *u*<sub>*d*</sub> = 0 along the boundary

----
## hashin-shtrikman

-   Hashin-Shtrikman then considered the following functional
*Π* = ∫<sub>*V*</sub>(*C*<sub>*ijkl*</sub><sup>(0)</sup>*ϵ*<sub>*ij*</sub><sup>(0)</sup>*ϵ*<sub>*kl*</sub><sup>(0)</sup> − *ΔC*<sub>*ijkl*</sub><sup>−1</sup>*p*<sub>*ij*</sub>*p*<sub>*kl*</sub> + *p*<sub>*ij*</sub>*ϵ*<sub>*ij*</sub><sup>*d*</sup> + 2*p*<sub>*ij*</sub>*ϵ*<sub>*ij*</sub><sup>(0)</sup>)*dV*

-   Where

$$\\begin{aligned}
  \\Delta C\_{ijkl} &= C\_{ijkl} - C^{(0)}\_{ijkl}\\\\
  p\_{ij} &= \\Delta C\_{ijkl} \\epsilon\_{kl}\\\\
  \\epsilon\_{ij}^d &= \\epsilon\_{ij} - \\epsilon\_{ij}^{(0)}
\\end{aligned}$$

-   This functional corresponds to the strain energy in a composite when the strain field and polarization field are exact solutions

----
## hashin-shtrikman

-   We can choose the comparison solid such that *δ**P**i* will either be a local maximum or a local minimum
-   When *ΔC* is negative definite then the stationary value of the functional is a minimum
-   When *ΔC* is positive definite then the stationary value of the functional is a maximum
-   The functional will be stationary when
(*C*<sub>*ijkl*</sub><sup>(0)</sup>*ϵ*<sub>*kl*</sub><sup>*d*</sup>)<sub>,*j*</sub> + *p*<sub>*ij*, *j*</sub> = 0

----
## hashin-shtrikman

-   In general, I don’t know how often you will need to use the Hashin-Shtrikman bounds
-   For a more complete derivation, see textbook pp. 170-186

---
# boundary conditions

----
## macro and micro fields

-   In micromechanics, one of our primary goals is to relate a heterogeneous material to some equivalent homogeneous material
-   We call *ϵ*<sub>*ij*</sub> and *σ*<sub>*ij*</sub> the point-wise or microscopic strain and stress
-   $\\bar{\\epsilon}\_{ij}$ and $\\bar{\\sigma}\_{ij}$ are the macroscopic strain and stress, and are related by some unknown homogenized stiffness

$$\\bar{\\sigma}\_{ij} = C\_{ijkl}^\* \\bar{\\epsilon}\_{kl}$$

-   In a homogeneous body (or equivalent homogeneous body), $\\bar{sigma}\_{ij}$ and $\\bar{\\epsilon}\_{ij}$ will be constant throughout

----
## average stress theorem

-   In general the stress field *σ*<sub>*ij*</sub> will not be constant in a heterogeneous body
-   If a heterogeneous body is subjected to homogeneous tractions with no body forces such that

$$t\_i^0 = \\bar{\\sigma}\_{ij}n\_j$$

-   And we find that

$$\\langle \\sigma\_{ij} \\rangle = \\bar{\\sigma}\_{ij}$$

----
## average strain theorem

-   Similarly, in general the strain field, *ϵ*<sub>*ij*</sub> will not be constant in a heterogeneous body
-   If a heterogeneous body is subjected to a homogeneous displacement such that

$$u\_i^0 = \\bar{\\epsilon\_{ij}}x\_j$$

-   And we find that

$$\\langle \\epsilon\_{ij} \\rangle = \\bar{\\epsilon}\_{ij}$$

----
## hill mandel macrohomogeneity condition

-   Hill and Mandel posed the question: Under what conditions will the average strain energy density of a heterogeneous body be equivalent equivalent to a homogeneous body?
-   In other words, they wanted show under what conditons

$$\\langle \\sigma\_{ij} \\epsilon\_{ij} \\rangle = \\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij}$$

----
## hill mandel macrohomogeneity

-   First we note that

$$\\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij} = \\frac{1}{V} \\int\_V \\sigma\_{ij} \\bar{\\epsilon}\_{ij} dV = \\frac{1}{V} \\int\_V \\bar{\\sigma}\_{ij} \\epsilon\_{ij} dV = \\frac{1}{V} \\int\_V \\bar{\\sigma}\_{ij} u\_{i,j} dV$$

-   Thus we can say that when $\\langle \\sigma\_{ij} \\epsilon\_{ij} \\rangle = \\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij}$

$$\\langle \\sigma\_{ij} \\epsilon\_{ij} \\rangle - \\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij} = \\frac{1}{V} \\int\_V (\\sigma\_{ij}u\_{i,j} - \\bar{\\sigma}\_{ij} u\_{i,j} - \\sigma\_{ij}\\bar{\\epsilon}\_{ij}+\\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij})dV$$

----
## hill mandel macrohomogeneity

-   After some algebra and applying the divergence theorem, we can write this as

$$\\langle \\sigma\_{ij} \\epsilon\_{ij} \\rangle - \\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij} = \\frac{1}{V} \\oint\_V n\_k(\\sigma\_{ik} - \\bar{\\sigma\_{ik}})(u\_{i} - x\_j\\bar{\\epsilon}\_{ij})dS$$

-   The right-hand side can be made to vanish in various ways, but the most common are homogeneous traction, homogeneous displacement, and periodic boundary conditions

----
## finite elements

-   There are a few things we need to do when using finite elements
-   First, we should ensure the mesh we use is periodic
-   Second, we should ensure that our boundary conditions satisfy Hill-Mandel and that our mesh is converged
-   Periodic boundary conditions converge more quickly than homogeneous stress or displacement
-   Third, we should repeat our periodic structure (2x2, 3x3) to check that the effective stiffness remains constant
-   We find homogenized properties by taking the volume-averaged stress and strain


