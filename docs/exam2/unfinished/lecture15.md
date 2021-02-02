<span>upcoming schedule</span>

-   Mar 15 - Finite Element Techniques

-   Mar 20-24 - Spring Break

-   Mar 27 - Fourier Analysis

### outline

\[sections numbered\]

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

-   First, we should ensure the mesh we use is periodic (if we are using periodic boundary conditions)

-   Second, we should ensure that our boundary conditions satisfy Hill-Mandel and that our mesh is converged

-   Periodic boundary conditions converge more quickly than homogeneous stress or displacement

-   Third, we should repeat our periodic structure (2x2, 3x3) to check that the effective stiffness remains constant

-   We find homogenized properties by taking the volume-averaged stress and strain

periodic boundary conditions
============================

<span>periodic boundary conditions</span>

-   We have used the phrase multiple times in this course

-   Periodic Boundary Conditions are used in many different fields, and can be implemented in slightly different ways

-   Here we will first discuss the equations for periodic boundary conditions in structural mechanics, then discuss how these can be applied

<span>periodic boundary conditions</span>

-   If we have a periodic structure, we denote corresponding faces with + and − superscripts

-   From equilibrium, we know that the tractions on opposing faces must be equal and opposite
    *t*<sub>*i*</sub><sup>+</sup> = −*t*<sub>*i*</sub><sup>−</sup>

-   The displacement on opposing surfaces will also be equal with
    *ξ*<sub>*i*</sub><sup>+</sup> = *ξ*<sub>*i*</sub><sup>−</sup>
     where
    $$\\xi\_i = u\_i - \\bar{\\epsilon\_{ij}}x\_j$$

<span>convergence</span>

-   In general, homogeneous displacement boundary conditions give an upper bound estimate to stiffness properties

-   Homogeneous traction boundary conditions give a lower estimate

-   They converge to periodic boundary conditions for increasing RVE size

<span>general application</span>

-   In finite element software, solutions are derived from displacement

-   Thus it is easiest to implement periodic displacement conditions

-   Tractions will be automatically satisfied

<span>general application</span>

-   We find the stiffness by applying some arbitrary strain in all directions (i.e. $\\bar{\\epsilon}\_{11}=1$, $\\bar{\\epsilon}\_{22}=1$, etc.)

-   The volume average of stress then corresponds to the appropriate column of the stiffness matrix

-   Some finite element software programs have a built-in method for periodic boundary conditions

-   When such a method is not built-in, there are various strategies to enforce the boundary condition

<span>ABAQUS implementation</span>

-   In ABAQUS PBC’s are implemented using equations for each boundary node

-   Boundary nodes on a given face are tied to some “dummy” node

-   Equations for each node ensure that *ξ*<sub>*i*</sub><sup>+</sup> = *ξ*<sub>*i*</sub><sup>−</sup>

<span>COMSOL implementation</span>

-   While COMSOL has periodic boundary conditions built-in, there are some quirks to how it is implemented

-   The default periodic boundary condition is *u*<sub>*i*</sub><sup>+</sup> = *u*<sub>*i*</sub><sup>−</sup>

-   This is appropriate for faces where $\\bar{\\epsilon\_{ij}}x\_j = 0$

-   On faces where $\\bar{\\epsilon\_{ij}}x\_j \\ne 0$, however, we need to modify the default condition

<span>COMSOL implementation</span>

-   To the software, $\\xi\_i = u\_i - \\bar{\\epsilon\_{ij}}x\_j$ is all considered *u*<sub>*i*</sub>

-   On boundaries where $\\bar{\\epsilon\_{ij}}x\_j \\ne 0$, there should be no other source of displacement

-   Thus to the software $u\_i = \\bar{\\epsilon\_{ij}}x\_j$

-   On opposing faces, *x*<sub>*j*</sub><sup>+</sup> = −*x*<sub>*j*</sub><sup>−</sup>

-   This can be implemented in COMSOL using the antiperiodicity requirement

-   Some prescribed displacement is then applied in addition to the antiperiodicity requirement, but only on one of the faces

<span>COMSOL implementation</span>

-   In some configurations, adjacent faces with continuity and antiperiodicity can create stress concentrations in COMSOL

-   This can be resolved by changing the faces to “user-defined”

-   Displacements not important to the problem can be ommitted from the condition, and continuity/antiperiodicity constraints enabled only for those faces which concern them

<span>shear</span>

-   In shear the COMSOL implementation becomes a little bit tricky
    $$\\xi = u\_i - \\bar{\\epsilon}\_{ij}x\_j$$

-   We need to define displacement on both surfaces under consideration (1 and 2 surface for 12 shear)

-   To avoid stress concentrations, the periodic boundaries are implemented as:

    -   antiperiodic in v only on the 1-surface

    -   antiperiodic in u only on the 2-surface

<span>shear</span>

-   Remember that in all cases the displacement is only applied on one of a pair of faces

-   i.e. to apply shear in 12, apply v to one 1-face, and u to one 2-face (the antiperiodicity accounts for the other face)

-   In tension/compression the sign does not matter (although tension is typically used)

-   In shear the signs must be consistent (check if your 1 and 2 faces chosen for displacement are positive or negative)

<span>rigid constraints</span>

-   In shear the problem is not constrained against rigid body translation

-   Since the displacements are periodic on the surfaces, it is most appropriate to create a point at the center and fix it

-   Points can be generated from the geometry menu

-   The constraint can be difficult to apply graphically (the point is not visible)

-   Instead choose your point from the drop-down

<span>stiffness results</span>

-   For any software package, we take the results using the volume-average stiffness and strain

-   Recall that in engineering notation we have
    *σ*<sub>*i*</sub> = *C*<sub>*i**j*</sub>*ϵ*<sub>*j*</sub>

-   Before calculating stiffness values, you may want to check that you have a mostly uniform strain

-   Stiffness values can be calculated as
    *C*<sub>*i**j*</sub> = *σ*<sub>*i*</sub>/*ϵ*<sub>*j*</sub>

-   Where *j* is fixed for each load configuration

<span>other comments</span>

-   With boundaries under displacement control, we do not need to worry about constraining any other nodes to restrict rigid body motion

-   The default (tetrahedral) mesh in COMSOL behaves adequately under these conditions (some small dimpling on the non-restricted surfaces)

-   In COMSOL, volume-average properties can be calculated by right-clicking derived values (under results) -&gt; average -&gt; volume average

-   Stress, strain, and stiffness can be found by typing in the “expressions”

-   solid.sl11 (Stress Local 11 direction), solid.el11(Strain Local 11 direction)


