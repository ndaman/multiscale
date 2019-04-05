## AE 760AA: Micromechanics and multiscale modeling
Lecture 16 - Damage Theory

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

April 8, 2019

----
## schedule

- Apr 8 - Damage Theory
- Apr 10 - Damage Theory
- Apr 15 - Dislocation Theory
- Apr 17 - Work Days

----
## outline

---
# failure

----
## failure

-   Ductile fracture
    -   plastic deformation prior to failure
    -   dimpled, cup and cone fracture surface
-   Brittle fracture
    -   rapid crack propagation
    -   generally flat fracture surface
    -   common in glasses, thermoset polymers, brittle metals (BCC and HCP crystals)

----
## fracture surface

![](..\images\Fracture-Surfaces-.jpg)

----
## ductile fracture surface

![](..\images\ductile1.jpg)

----
## ductile fracture surface

![](..\images\ductile2.jpg)

----
## brittle fracture surface

![](..\images\brittle1.jpg)

----
## brittle fracture surface

![](..\images\brittle2.jpg)

----
## transition

![](..\images\transition.jpg)

---
# micro cracks

----
## micro cracks

-   There are many micro-crack damage models
-   Some factors differentiating the models are whether they include plasticity
-   Also whether they can handle anisotropy or heterogeneity
-   Fracture mechanics becomes much more complicated in anisotropic or heterogeneous materials

----
## micro cracks

-   The Barenblatt-Dugdale model assumes micro-crack density is a measure of the damage state
-   A key assumption is that the overall damage (due to permanent crack growth) is only associated with the hydrostatic stress
-   Deviatoric stress has no effect
-   This is essentially assuming cracks only grow in Mode I

----
## fracture mechanics

-   In fracture mechanics we consider three different modes
-   Mode I is known as the “opening mode”
-   Mode II is known as the “sliding mode”
-   Mode III is known as the “tearing mode”

----
## fracture mechanics

----
## mixed-mode

-   In fracture mechanics, we can consider the effect of the deviatoric stress on a crack
-   Mixed-mode fracture analysis shows that cracks will always tend to open due to Mode I
-   Shear stresses (i.e. deviatoric stress) can effect the principal stresses near a crack tip
-   For many micro-cracks in a representative volume, we assume this effect is negligible

----
## cohesive zone

-   The Barenblatt-Dugdale model also assumes that there is a cohesive zone around the crack
-   Cohesive zones are an alternate approach to modeling cracks

----
## cohesive elements

-   Cohesive elements are one way to model crack propagation
-   We need to know the crack path in advance, we model the the crack growth using a traction-separation law
-   The cohesive zone theory assumes stress can never reach infinity, the maximum allowable stress in a material is the stress required to separate atoms
-   The stress required to separate the atoms changes as a function based on their Traction-Separation law, until the atomic bond is broken

----
## cohesive zone

![](..\images\cohesive_zone.PNG)

----
## traction separation

![](..\images\traction_separation.PNG)

----
## cohesive zone uses

-   In practice, the cohesive zone can be used to model crack growth
-   It is most often used to model de-bonding of adhesives
-   Also commonly used to model delamination in composites

----
## dcb

![](..\images\dcb1.png)

----
## dcb

![](..\images\dcb2.png)

----
## dcb

![](..\images\dcb3.png)

----
## dcb

![](..\images\dcb4.png)

----
## dcb

![](..\images\dcb5.png)

----
## dcb

![](..\images\dcb6.png)

----
## dcb

![](..\images\dcb7.png)

----
## dcb

![](..\images\dcb8.png)

----
## dcb

![](..\images\dcb9.png)

----
## single crack

-   To solve the problem of many cohesive cracks in an RVE, we first consider the case of a single crack
-   For a crack under a uniform tri-axial stress, we consider the superposition
![](..\images\superposition.jpg)

----
## cohesive stress

-   The cohesive stress, *σ*<sub>0</sub> can be found as

$$\\frac{\\sigma\_0}{\\Sigma\_m} = \\frac{1+\\sqrt{\\left(\\frac{4}{1-2\\nu^\*}\\frac{\\sigma\_YS}{\\Sigma\_m}\\right)^2-3}}{4}$$

----
## macro strain

-   The macro strain tensor is not necessarily the volume average
-   This is due to the discontinuities (cracks)
-   The macro stress is the volume average (crack surfaces are traction free)

----
## macro strain

-   One technique for finding the macro strain involves finding some additional strain term
    ℰ<sub>*ij*</sub> = *ϵ*<sub>*ij*</sub><sup>0</sup> + *ϵ*<sub>*ij*</sub><sup>(*add*)</sup>

-   Where *ϵ*<sub>*ij*</sub><sup>0</sup> = *D*<sub>*ijkl*</sub>*σ*<sub>*kl*</sub> and *ϵ*<sub>*ij*</sub><sup>(*add*)</sup> = *H*<sub>*ijkl*</sub>*σ*<sub>*kl*</sub>

----
## additional strain

-   The additional strain is given by

$$\\epsilon\_{ij}^{(add)} = \\frac{4f(1-\\nu^\*)\\Sigma\_m\\delta\_{ij}}{3\\beta \\pi \\mu^\* \\sqrt{1-\\left(\\frac{\\Sigma\_m}{\\sigma\_0}\\right)^2}}$$

-   Where *β* is the ratio between the volume of the physical crack and the volume of the cohesive crack and *f* is the effective volume fraction of cracks
-   While cracks are assumed to be “penny-shaped” disks, their volume is treated as spherical for these purposes

----
## interaction effect

-   In the above calculations, properties with a * superscript an be calculated as either matrix or average properties
-   We can capture the interaction effect by using average properties
-   This is similar to the self-consistent model, and would need to be found iteratively
-   Note: this does not model damage growth, which is still a field of active research, particularly in micromechanics


