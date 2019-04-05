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

----
## what affects failure method

-   While some materials are generally ductile or brittle, there are factors that can cause brittle failure in a ductile material
-   Strain rate (materials are often more brittle at high strain rates)
-   Temperature also affects ductility of many materials

----
## temperature effects

![](..\images\temperature.PNG)

---
# spherical void growth

----
## void growth

-   From what we have observed on fracture surfaces, it appears that ductile materials fail due to void growth
-   Some of the earliest and simplest micromechanical damage models are for spherical void growth
-   Spherical voids are typical of uniaxial tension

----
## spherical voids in viscous materials

-   If we consider a spherical void in a linear, viscous RVE under some uniform remote stress, *σ*<sup>∞</sup> the constitutive behavior is

$$\\sigma\_{ij} = L\_{ijkl}\\dot{\\epsilon}\_{kl}$$

-   *L* is analogous to the stiffness tensor, but relates stress to strain-rate
-   For an isotropic material, we can define *L* in terms of *η* and *ν* to give the familiar relationshiop

$$\\sigma\_{ij} = 2\\eta \\left(\\dot{\\epsilon}\_{ij}+\\frac{\\nu}{1-2\\nu} \\dot{\\epsilon}\_{kk}\\delta\_{ij}\\right)$$

----
## spherical voids in viscous materials

-   Eshelby’s model holds true for a viscous material as well as a solid, so we can find the stress inside the void as

$$\\sigma\_{ij} = L\_{ijkl}\\left(\\dot{\\epsilon}\_{kl}^\\infty + \\dot{\\epsilon}\_{kl}^d - \\dot{\\epsilon}\_{kl}^\*\\right)$$

-   But we know that there is no stress inside the void, thus we can say

$$dot{\\epsilon}\_{kl}^\\infty + \\dot{\\epsilon}\_{kl}^d - \\dot{\\epsilon}\_{kl}^\* = 0$$

-   Where, in this case, $\\dot{\\epsilon}\_{kl}^\*$ is the strain-rate of the void

----
## spherical voids in viscous materials

-   pp. 266-267 in the text show the details for calculating the Eshelby tensor with a spherical void
-   However, when a non-uniform load is applied (uni-axial or biaxial tension) the void will no longer be spherical
-   Also, there are not many solids that can be adequately described with a linearly viscous constitutive law

---
# cylindrical void growth

----
## mcclintock solution

-   McClintock developed the first widely-accepted void growth model
-   He assumed a cylindrical void shape (for tension along the cylinder axis)
-   He assumed the material surrounding the void was incompressible, rigid-plastic
-   In spite of the simplifications made, this model has served as a benchmark for many homogeneous schemes.

----
## mcclintock solution

-   To date, the mcClintock solution is the only exact analytic solution for void growth in non-linear solids
-   A full derivation, for some assumptions in yield criterion and plastic flow rule is in text pp. 268-271

----
## mcclintock solution

-   For the Von Mises (J2) yield criterion and the flow rule defined on p. 268, we find

$$\\frac{\\dot{a}}{a} = \\frac{\\sqrt{3}}{2}|\\dot{\\epsilon}\_z| \\sinh \\left(\\frac{\\sqrt{3}\\sigma^\\infty}{\\sigma\_{YS}}\\right) - \\frac{1}{2} \\dot{\\epsilon}\_z$$

-   McClintock predicts that void growth increases exponentially with applied stress, while the linear viscous solution predicts a linear relationship between void growth and stress

----
## mcclintock solution

-   Many damage models use the volume fraction of voids
-   In the McClintock solution, the matrix is considered incompressible
-   This means we can write the rate of change of volume fraction as

$$\\dot{f} = \\sqrt{3} f (1-f) |\\dot{\\epsilon}\_z|\\sinh\\left(\\frac{\\sqrt{3}\\sigma\_{11}}{|\\sigma\_{33}-\\sigma\_{11}|}\\right)$$

----
## gurson model

-   Gurson’s model builds on McClintock’s solution
-   He homegenizes the micro-stress to define a yield function entirely in terms of the macro-stresses
-   A full derivation (for the same assumptions as McClintock) is on pp. 273-277

----
## gurson model

-   Gurson defines several intermediate stress calculations

$$\\begin{aligned}
  \\sigma\_{eq} &= \\sqrt{\\frac{3}{2}\\sigma\_{ij}^\\prime\\sigma\_{ij}^\\prime}\\\\
  \\sigma\_{ij}^\\prime &= \\sigma\_{ij} - \\sigma\_m\\\\
  \\sigma\_m &= \\frac{1}{3} \\sigma\_{ii}
\\end{aligned}$$

----
## gurson model

-   He then finds the yield function as

$$\\left(\\frac{\\sigma\_{eq}}{\\sigma\_{YS}}\\right)^2 + 2f\\cosh\\left( \\frac{\\sqrt{3}\\sigma\_{11}}{\\sigma\_{YS}}\\right) - (1+f^2) = 0$$

-   Note: in Gurson’s assumptions, the cyldiner is along the 3 direction and an axi-symmetric state of stress with *σ*<sub>11</sub> = *σ*<sub>22</sub> was assumed.
-   Also, these stress quantities are volume averaged over the RVE
-   Gurson has essentially used micromechanics to define a new constitutive relation

----
## gurson tvergaard needleman

-   Some moderate improvements were made to the Gurson model and are known as the Gurson-Tvergaard-Needleman model
-   An elastic-plastic model with power-law hardening is used (instead of rigid plastic)

$$\\bar{\\sigma}\_0 = \\sigma\_{YS} \\left( 1-\\frac{E}{\\sigma\_{YS}}\\bar{\\epsilon}\_p\\right)^N$$

-   Tvergaard modified McClintock’s void growth solution with a numerical analysis for a periodic array of voids
-   Needleman introduced an equivalent damage parameter, *f*<sup>\*</sup> instead of volume fraction of voids.
-   Equivalent damage includes void growth and nucleation of new voids

----
## needleman

-   Needleman’s contribution is to account for the rapid reduction in stiffness at some critical void volume fraction

$$f^\*(f) = \\begin{cases}
  f & \\text{if } f \\le f\_c\\\\
  f\_c + \\frac{1/q\_1-f\_c}{f\_f-f\_c}(f-f\_c) & \\text{if } f\_c &lt; f \\le f\_f \\\\
  1/q-1 & \\text{if } f &gt; f\_f
\\end{cases}$$

-   Where *f*<sub>*c*</sub> is the void volume fraction at the incidence of coalescence
-   *f*<sub>*f*</sub> is the void volume fraction at failure


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


