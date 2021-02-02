<span>upcoming schedule</span>

-   Mar 13 - Hashin-Strickman Bounds (HW 3 Resubmission and HW 4 due)

-   Mar 15 - Finite Element Techniques

-   Mar 20-24 - Spring Break

-   Mar 27 - Fourier Analysis

### outline

\[sections numbered\]

hashin-shtrikman
================

<span>bounds</span>

-   We consider the Voigt and Reuss micromechanics models as bounding cases, properties should need exceed the limits of these two cases

-   Hashin and Shtrikman used variational principles to define more rigorous bounds for composite properties

-   They did this by comparing a heterogeneous composite RVE with an equivalent homogeneous RVE

<span>heterogeneous</span>
$$\\begin{aligned}
        \\sigma\_{ij,j} &= 0\\\\
        \\sigma\_{ij} &= C\_{ijkl} \\epsilon\_{kl}\\\\
        U = \\frac{1}{2} C\_{ijkl} \\epsilon\_{ij}\\epsilon\_{kl}
    \\end{aligned}$$

<span>homogeneous</span>
$$\\begin{aligned}
        \\sigma\_{ij,j}^{(0)} &= 0\\\\
        \\sigma\_{ij}^{(0)} &= C\_{ijkl}^{(0)} \\epsilon\_{kl}^{(0)}\\\\
        U = \\frac{1}{2} C\_{ijkl}^{(0)} \\epsilon\_{ij}^{(0)}\\epsilon\_{kl}^{(0)}
    \\end{aligned}$$

<span>relation</span>

-   To relate the two boundary problems, we introduce the following
    $$\\begin{aligned}
                u\_i &= u\_i^{(0)} + u\_i^d\\\\
                \\epsilon\_{ij} &= \\epsilon\_{ij}^{(0)} + \\epsilon\_{ij}^d\\\\
                \\sigma\_{ij} &= p\_{ij} + C\_{ijkl}^{(0)} \\epsilon\_{kl} = p\_{ij} + C\_{ijkl}^{(0)}(\\epsilon\_{ij}^{(0)} + \\epsilon\_{ij}^d)
            \\end{aligned}$$

-   *u*<sub>*i*</sub><sup>*d*</sup> is the disturbance displacement field and *p*<sub>*i**j*</sub> is called the polarization stress

<span>boundary conditions</span>

-   One common RVE boundary condition is known as homogeneous displacement

-   Under homogeneous displacement boundary conditions we have
    $$u\_i = \\bar{u}\_i = u\_i^{(0)}$$
     along the boundary

-   Under this condition we have *u*<sub>*d*</sub> = 0 along the boundary

<span>hashin-shtrikman</span>

-   Hashin-Shtrikman then considered the following functional
    *Π* = ∫<sub>*V*</sub>(*C*<sub>*i**j**k**l*</sub><sup>(0)</sup>*ϵ*<sub>*i**j*</sub><sup>(0)</sup>*ϵ*<sub>*k**l*</sub><sup>(0)</sup> − *Δ**C*<sub>*i**j**k**l*</sub><sup>−1</sup>*p*<sub>*i**j*</sub>*p*<sub>*k**l*</sub> + *p*<sub>*i**j*</sub>*ϵ*<sub>*i**j*</sub><sup>*d*</sup> + 2*p*<sub>*i**j*</sub>*ϵ*<sub>*i**j*</sub><sup>(0)</sup>)*d**V*

-   Where
    $$\\begin{aligned}
                \\Delta C\_{ijkl} &= C\_{ijkl} - C^{(0)}\_{ijkl}\\\\
                p\_{ij} &= \\Delta C\_{ijkl} \\epsilon\_{kl}\\\\
                \\epsilon\_{ij}^d &= \\epsilon\_{ij} - \\epsilon\_{ij}^{(0)}
            \\end{aligned}$$

-   This functional corresponds to the strain energy in a composite when the strain field and polarization field are exact solutions

<span>hashin-shtrikman</span>

-   We can choose the comparison solid such that *δ**P**i* will either be a local maximum or a local minimum

-   When *Δ**C* is negative definite then the stationary value of the functional is a minimum

-   When *Δ**C* is positive definite then the stationary value of the functional is a maximum

-   The functional will be stationary when
    (*C*<sub>*i**j**k**l*</sub><sup>(0)</sup>*ϵ*<sub>*k**l*</sub><sup>*d*</sup>)<sub>,*j*</sub> + *p*<sub>*i**j*, *j*</sub> = 0

<span>hashin-shtrikman</span>

-   In general, I don’t know how often you will need to use the Hashin-Shtrikman bounds

-   For a more complete derivation, see textbook pp. 170-186

boundary conditions
===================

<span>macro and micro fields</span>

-   In micromechanics, one of our primary goals is to relate a heterogeneous material to some equivalent homogeneous material

-   We call *ϵ*<sub>*i**j*</sub> and *σ*<sub>*i**j*</sub> the point-wise or microscopic strain and stress

-   $\\bar{\\epsilon}\_{ij}$ and $\\bar{\\sigma}\_{ij}$ are the macroscopic strain and stress, and are related by some unknown homogenized stiffness
    $$\\bar{\\sigma}\_{ij} = C\_{ijkl}^\* \\bar{\\epsilon}\_{kl}$$

-   In a homogeneous body (or equivalent homogeneous body), $\\bar{sigma}\_{ij}$ and $\\bar{\\epsilon}\_{ij}$ will be constant throughout

<span>average stress theorem</span>

-   In general the stress field *σ*<sub>*i**j*</sub> will not be constant in a heterogeneous body

-   If a heterogeneous body is subjected to homogeneous tractions with no body forces such that
    $$t\_i^0 = \\bar{\\sigma}\_{ij}n\_j$$

-   And we find that
    $$\\langle \\sigma\_{ij} \\rangle = \\bar{\\sigma}\_{ij}$$

<span>average strain theorem</span>

-   Similarly, in general the strain field, *ϵ*<sub>*i**j*</sub> will not be constant in a heterogeneous body

-   If a heterogeneous body is subjected to a homogeneous displacement such that
    $$u\_i^0 = \\bar{\\epsilon\_{ij}}x\_j$$

-   And we find that
    $$\\langle \\epsilon\_{ij} \\rangle = \\bar{\\epsilon}\_{ij}$$

<span>hill mandel macrohomogeneity condition</span>

-   Hill and Mandel posed the question: Under what conditions will the average strain energy density of a heterogeneous body be equivalent equivalent to a homogeneous body?

-   In other words, they wanted show under what conditons
    $$\\langle \\sigma\_{ij} \\epsilon\_{ij} \\rangle = \\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij}$$

<span>hill mandel macrohomogeneity</span>

-   First we note that
    $$\\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij} = \\frac{1}{V} \\int\_V \\sigma\_{ij} \\bar{\\epsilon}\_{ij} dV = \\frac{1}{V} \\int\_V \\bar{\\sigma}\_{ij} \\epsilon\_{ij} dV = \\frac{1}{V} \\int\_V \\bar{\\sigma}\_{ij} u\_{i,j} dV$$

-   Thus we can say that when $\\langle \\sigma\_{ij} \\epsilon\_{ij} \\rangle = \\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij}$
    $$\\langle \\sigma\_{ij} \\epsilon\_{ij} \\rangle - \\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij} = \\frac{1}{V} \\int\_V (\\sigma\_{ij}u\_{i,j} - \\bar{\\sigma}\_{ij} u\_{i,j} - \\sigma\_{ij}\\bar{\\epsilon}\_{ij}+\\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij})dV$$

<span>hill mandel macrohomogeneity</span>

-   After some algebra and applying the divergence theorem, we can write this as
    $$\\langle \\sigma\_{ij} \\epsilon\_{ij} \\rangle - \\bar{\\sigma}\_{ij} \\bar{\\epsilon}\_{ij} = \\frac{1}{V} \\oint\_V n\_k(\\sigma\_{ik} - \\bar{\\sigma\_{ik}})(u\_{i} - x\_j\\bar{\\epsilon}\_{ij})dS$$

-   The right-hand side can be made to vanish in various ways, but the most common are homogeneous traction, homogeneous displacement, and periodic boundary conditions

<span>finite elements</span>

-   There are a few things we need to do when using finite elements

-   First, we should ensure the mesh we use is periodic

-   Second, we should ensure that our boundary conditions satisfy Hill-Mandel and that our mesh is converged

-   Periodic boundary conditions converge more quickly than homogeneous stress or displacement

-   Third, we should repeat our periodic structure (2x2, 3x3) to check that the effective stiffness remains constant

-   We find homogenized properties by taking the volume-averaged stress and strain


