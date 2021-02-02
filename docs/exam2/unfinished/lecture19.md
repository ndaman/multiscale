<span>upcoming schedule</span>

-   Apr 10 - Damage Theory

-   Apr 12 - SPTE, SwiftComp Work Day (HW5 Due)

-   Apr 17 - Dislocation Theory

-   Apr 19 - Dislocation Theory (HW6 Due)

### outline

\[sections numbered\]

failure
=======

<span>failure</span>

-   Ductile fracture

    -   plastic deformation prior to failure

    -   dimpled, cup and cone fracture surface

-   Brittle fracture

    -   rapid crack propagation

    -   generally flat fracture surface

    -   common in glasses, thermoset polymers, brittle metals (BCC and HCP crystals)

<span>fracture surface</span>

<img src="../Figures/Fracture-Surfaces-" alt="image" style="width:90.0%" />

<span>ductile fracture surface</span>

<img src="../Figures/ductile1" alt="image" style="width:70.0%" />

<span>ductile fracture surface</span>

<img src="../Figures/ductile2" alt="image" style="width:70.0%" />

<span>brittle fracture surface</span>

<img src="../Figures/brittle1" alt="image" style="width:70.0%" />

<span>brittle fracture surface</span>

<img src="../Figures/brittle2" alt="image" style="width:70.0%" />

<span>transition</span>

<img src="../Figures/transition" alt="image" style="width:70.0%" />

micro cracks
============

<span>micro cracks</span>

-   There are many micro-crack damage models

-   Some factors differentiating the models are whether they include plasticity

-   Also whether they can handle anisotropy or heterogeneity

-   Fracture mechanics becomes much more complicated in anisotropic or heterogeneous materials

<span>micro cracks</span>

-   The Barenblatt-Dugdale model assumes micro-crack density is a measure of the damage state

-   A key assumption is that the overall damage (due to permanent crack growth) is only associated with the hydrostatic stress

-   Deviatoric stress has no effect

-   This is essentially assuming cracks only grow in Mode I

<span>fracture mechanics</span>

-   In fracture mechanics we consider three different modes

-   Mode I is known as the “opening mode”

-   Mode II is known as the “sliding mode”

-   Mode III is known as the “tearing mode”

<span>fracture mechanics</span>

<span>mixed-mode</span>

-   In fracture mechanics, we can consider the effect of the deviatoric stress on a crack

-   Mixed-mode fracture analysis shows that cracks will always tend to open due to Mode I

-   Shear stresses (i.e. deviatoric stress) can effect the principal stresses near a crack tip

-   For many micro-cracks in a representative volume, we assume this effect is negligible

<span>cohesive zone</span>

-   The Barenblatt-Dugdale model also assumes that there is a cohesive zone around the crack

-   Cohesive zones are an alternate approach to modeling cracks

<span>cohesive elements</span>

-   Cohesive elements are one way to model crack propagation

-   We need to know the crack path in advance, we model the the crack growth using a traction-separation law

-   The cohesive zone theory assumes stress can never reach infinity, the maximum allowable stress in a material is the stress required to separate atoms

-   The stress required to separate the atoms changes as a function based on their Traction-Separation law, until the atomic bond is broken

<span>cohesive zone</span>

<img src="../Figures/cohesive_zone" alt="image" /> \[fig:cohesive\_zone\]

<span>traction separation</span>

<img src="../Figures/traction_separation" alt="image" /> \[fig:traction\_separation\]

<span>cohesive zone uses</span>

-   In practice, the cohesive zone can be used to model crack growth

-   It is most often used to model de-bonding of adhesives

-   Also commonly used to model delamination in composites

<span>dcb</span>

<img src="../Figures/dcb1" alt="image" />

<span>dcb</span>

<img src="../Figures/dcb2" alt="image" />

<span>dcb</span>

<img src="../Figures/dcb3" alt="image" />

<span>dcb</span>

<img src="../Figures/dcb4" alt="image" />

<span>dcb</span>

<img src="../Figures/dcb5" alt="image" />

<span>dcb</span>

<img src="../Figures/dcb6" alt="image" />

<span>dcb</span>

<img src="../Figures/dcb7" alt="image" />

<span>dcb</span>

<img src="../Figures/dcb8" alt="image" />

<span>dcb</span>

<img src="../Figures/dcb9" alt="image" />

<span>single crack</span>

-   To solve the problem of many cohesive cracks in an RVE, we first consider the case of a single crack

-   For a crack under a uniform tri-axial stress, we consider the superposition

    <img src="../Figures/superposition" alt="image" style="width:70.0%" />

<span>cohesive stress</span>

-   The cohesive stress, *σ*<sub>0</sub> can be found as
    $$\\frac{\\sigma\_0}{\\Sigma\_m} = \\frac{1+\\sqrt{\\left(\\frac{4}{1-2\\nu^\*}\\frac{\\sigma\_YS}{\\Sigma\_m}\\right)^2-3}}{4}$$

<span>macro strain</span>

-   The macro strain tensor is not necessarily the volume average

-   This is due to the discontinuities (cracks)

-   The macro stress is the volume average (crack surfaces are traction free)

<span>macro strain</span>

-   One technique for finding the macro strain involves finding some additional strain term
    ℰ<sub>*i**j*</sub> = *ϵ*<sub>*i**j*</sub><sup>0</sup> + *ϵ*<sub>*i**j*</sub><sup>(*a**d**d*)</sup>

-   Where *ϵ*<sub>*i**j*</sub><sup>0</sup> = *D*<sub>*i**j**k**l*</sub>*σ*<sub>*k**l*</sub> and *ϵ*<sub>*i**j*</sub><sup>(*a**d**d*)</sup> = *H*<sub>*i**j**k**l*</sub>*σ*<sub>*k**l*</sub>

<span>additional strain</span>

-   The additional strain is given by
    $$\\epsilon\_{ij}^{(add)} = \\frac{4f(1-\\nu^\*)\\Sigma\_m\\delta\_{ij}}{3\\beta \\pi \\mu^\* \\sqrt{1-\\left(\\frac{\\Sigma\_m}{\\sigma\_0}\\right)^2}}$$

-   Where *β* is the ratio between the volume of the physical crack and the volume of the cohesive crack and *f* is the effective volume fraction of cracks

-   While cracks are assumed to be “penny-shaped” disks, their volume is treated as spherical for these purposes

<span>interaction effect</span>

-   In the above calculations, properties with a \* superscript an be calculated as either matrix or average properties

-   We can capture the interaction effect by using average properties

-   This is similar to the self-consistent model, and would need to be found iteratively

-   Note: this does not model damage growth, which is still a field of active research, particularly in micromechanics


