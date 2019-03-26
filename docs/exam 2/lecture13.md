## AE 760AA: Micromechanics and multiscale modeling
Lecture 13 - Periodic Boundary Conditions

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

March 27, 2019

----
## schedule

- Mar 27 - Periodic Boundary Conditions
- Apr 1 - Fourier Analysis
- Apr 3 - Method of Cells
- Apr 8 - Damage Theory


----
## outline

<!-- vim-markdown-toc GFM -->

* periodic boundary conditions

<!-- vim-markdown-toc -->

---
# periodic boundary conditions

----
## periodic boundary conditions

-   We have used the phrase multiple times in this course
-   Periodic Boundary Conditions are used in many different fields, and can be implemented in slightly different ways
-   Here we will first discuss the equations for periodic boundary conditions in structural mechanics, then discuss how these can be applied

----
## periodic boundary conditions

-   If we have a periodic structure, we denote corresponding faces with + and − superscripts
-   From equilibrium, we know that the tractions on opposing faces must be equal and opposite
    *t*<sub>*i*</sub><sup>+</sup> = −*t*<sub>*i*</sub><sup>−</sup>
-   The displacement on opposing surfaces will also be equal with
    *ξ*<sub>*i*</sub><sup>+</sup> = *ξ*<sub>*i*</sub><sup>−</sup>
     where

$$\\xi\_i = u\_i - \\bar{\\epsilon\_{ij}}x\_j$$

----
## convergence

-   In general, homogeneous displacement boundary conditions give an upper bound estimate to stiffness properties
-   Homogeneous traction boundary conditions give a lower estimate
-   They converge to periodic boundary conditions for increasing RVE size

----
## general application

-   In finite element software, solutions are derived from displacement
-   Thus it is easiest to implement periodic displacement conditions
-   Tractions will be automatically satisfied

----
## general application

-   We find the stiffness by applying some arbitrary strain in all directions (i.e. $\\bar{\\epsilon}\_{11}=1$, $\\bar{\\epsilon}\_{22}=1$, etc.)
-   The volume average of stress then corresponds to the appropriate column of the stiffness matrix
-   Some finite element software programs have a built-in method for periodic boundary conditions
-   When such a method is not built-in, there are various strategies to enforce the boundary condition

----
## ABAQUS implementation

-   In ABAQUS PBC’s are implemented using equations for each boundary node
-   Boundary nodes on a given face are tied to some “dummy” node
-   Equations for each node ensure that *ξ*<sub>*i*</sub><sup>+</sup> = *ξ*<sub>*i*</sub><sup>−</sup>

----
## COMSOL implementation

-   While COMSOL has periodic boundary conditions built-in, there are some quirks to how it is implemented
-   The default periodic boundary condition is *u*<sub>*i*</sub><sup>+</sup> = *u*<sub>*i*</sub><sup>−</sup>
-   This is appropriate for faces where $\\bar{\\epsilon\_{ij}}x\_j = 0$
-   On faces where $\\bar{\\epsilon\_{ij}}x\_j \\ne 0$, however, we need to modify the default condition

----
## COMSOL implementation

-   To the software, $\\xi\_i = u\_i - \\bar{\\epsilon\_{ij}}x\_j$ is all considered *u*<sub>*i*</sub>
-   On boundaries where $\\bar{\\epsilon\_{ij}}x\_j \\ne 0$, there should be no other source of displacement
-   Thus to the software $u\_i = \\bar{\\epsilon\_{ij}}x\_j$
-   On opposing faces, *x*<sub>*j*</sub><sup>+</sup> = −*x*<sub>*j*</sub><sup>−</sup>
-   This can be implemented in COMSOL using the antiperiodicity requirement
-   Some prescribed displacement is then applied in addition to the antiperiodicity requirement, but only on one of the faces

----
## COMSOL implementation

-   In some configurations, adjacent faces with continuity and antiperiodicity can create stress concentrations in COMSOL
-   This can be resolved by changing the faces to “user-defined”
-   Displacements not important to the problem can be ommitted from the condition, and continuity/antiperiodicity constraints enabled only for those faces which concern them

----
## shear

-   In shear the COMSOL implementation becomes a little bit tricky

$$\\xi = u\_i - \\bar{\\epsilon}\_{ij}x\_j$$

-   We need to define displacement on both surfaces under consideration (1 and 2 surface for 12 shear)
-   To avoid stress concentrations, the periodic boundaries are implemented as:
    -   antiperiodic in v only on the 1-surface
    -   antiperiodic in u only on the 2-surface

----
## shear

-   Remember that in all cases the displacement is only applied on one of a pair of faces
-   i.e. to apply shear in 12, apply v to one 1-face, and u to one 2-face (the antiperiodicity accounts for the other face)
-   In tension/compression the sign does not matter (although tension is typically used)
-   In shear the signs must be consistent (check if your 1 and 2 faces chosen for displacement are positive or negative)

----
## rigid constraints

-   In shear the problem is not constrained against rigid body translation
-   Since the displacements are periodic on the surfaces, it is most appropriate to create a point at the center and fix it
-   Points can be generated from the geometry menu
-   The constraint can be difficult to apply graphically (the point is not visible)
-   Instead choose your point from the drop-down

----
## stiffness results

-   For any software package, we take the results using the volume-average stiffness and strain
-   Recall that in engineering notation we have
    *σ*<sub>*i*</sub> = *C*<sub>*i**j*</sub>*ϵ*<sub>*j*</sub>
-   Before calculating stiffness values, you may want to check that you have a mostly uniform strain
-   Stiffness values can be calculated as
    *C*<sub>*ij*</sub> = *σ*<sub>*i*</sub>/*ϵ*<sub>*j*</sub>
-   Where *j* is fixed for each load configuration

----
## other comments

-   With boundaries under displacement control, we do not need to worry about constraining any other nodes to restrict rigid body motion
-   The default (tetrahedral) mesh in COMSOL behaves adequately under these conditions (some small dimpling on the non-restricted surfaces)
-   In COMSOL, volume-average properties can be calculated by right-clicking derived values (under results) -&gt; average -&gt; volume average
-   Stress, strain, and stiffness can be found by typing in the “expressions”
-   solid.sl11 (Stress Local 11 direction), solid.el11(Strain Local 11 direction)


