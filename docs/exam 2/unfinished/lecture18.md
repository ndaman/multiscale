<span>upcoming schedule</span>

-   Apr 5 - Damage Theory

-   Apr 10 - Damage Theory

-   Apr 12 - SPTE, Damage Theory (HW5 Due)

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

<span>what affects failure method</span>

-   While some materials are generally ductile or brittle, there are factors that can cause brittle failure in a ductile material

-   Strain rate (materials are often more brittle at high strain rates)

-   Temperature also affects ductility of many materials

<span>temperature effects</span>

<img src="../Figures/temperature" alt="image" style="width:70.0%" />

spherical void growth
=====================

<span>void growth</span>

-   From what we have observed on fracture surfaces, it appears that ductile materials fail due to void growth

-   Some of the earliest and simplest micromechanical damage models are for spherical void growth

-   Spherical voids are typical of uniaxial tension

<span>spherical voids in viscous materials</span>

-   If we consider a spherical void in a linear, viscous RVE under some uniform remote stress, *σ*<sup>∞</sup> the constitutive behavior is
    $$\\sigma\_{ij} = L\_{ijkl}\\dot{\\epsilon}\_{kl}$$

-   *L* is analogous to the stiffness tensor, but relates stress to strain-rate

-   For an isotropic material, we can define *L* in terms of *η* and *ν* to give the familiar relationshiop
    $$\\sigma\_{ij} = 2\\eta \\left(\\dot{\\epsilon}\_{ij}+\\frac{\\nu}{1-2\\nu} \\dot{\\epsilon}\_{kk}\\delta\_{ij}\\right)$$

<span>spherical voids in viscous materials</span>

-   Eshelby’s model holds true for a viscous material as well as a solid, so we can find the stress inside the void as
    $$\\sigma\_{ij} = L\_{ijkl}\\left(\\dot{\\epsilon}\_{kl}^\\infty + \\dot{\\epsilon}\_{kl}^d - \\dot{\\epsilon}\_{kl}^\*\\right)$$

-   But we know that there is no stress inside the void, thus we can say
    $$dot{\\epsilon}\_{kl}^\\infty + \\dot{\\epsilon}\_{kl}^d - \\dot{\\epsilon}\_{kl}^\* = 0$$

-   Where, in this case, $\\dot{\\epsilon}\_{kl}^\*$ is the strain-rate of the void

<span>spherical voids in viscous materials</span>

-   pp. 266-267 in the text show the details for calculating the Eshelby tensor with a spherical void

-   However, when a non-uniform load is applied (uni-axial or biaxial tension) the void will no longer be spherical

-   Also, there are not many solids that can be adequately described with a linearly viscous constitutive law

cylindrical void growth
=======================

<span>mcclintock solution</span>

-   McClintock developed the first widely-accepted void growth model

-   He assumed a cylindrical void shape (for tension along the cylinder axis)

-   He assumed the material surrounding the void was incompressible, rigid-plastic

-   In spite of the simplifications made, this model has served as a benchmark for many homogeneous schemes.

<span>mcclintock solution</span>

-   To date, the mcClintock solution is the only exact analytic solution for void growth in non-linear solids

-   A full derivation, for some assumptions in yield criterion and plastic flow rule is in text pp. 268-271

<span>mcclintock solution</span>

-   For the Von Mises (J2) yield criterion and the flow rule defined on p. 268, we find
    $$\\frac{\\dot{a}}{a} = \\frac{\\sqrt{3}}{2}|\\dot{\\epsilon}\_z| \\sinh \\left(\\frac{\\sqrt{3}\\sigma^\\infty}{\\sigma\_{YS}}\\right) - \\frac{1}{2} \\dot{\\epsilon}\_z$$

-   McClintock predicts that void growth increases exponentially with applied stress, while the linear viscous solution predicts a linear relationship between void growth and stress

<span>mcclintock solution</span>

-   Many damage models use the volume fraction of voids

-   In the McClintock solution, the matrix is considered incompressible

-   This means we can write the rate of change of volume fraction as
    $$\\dot{f} = \\sqrt{3} f (1-f) |\\dot{\\epsilon}\_z|\\sinh\\left(\\frac{\\sqrt{3}\\sigma\_{11}}{|\\sigma\_{33}-\\sigma\_{11}|}\\right)$$

<span>gurson model</span>

-   Gurson’s model builds on McClintock’s solution

-   He homegenizes the micro-stress to define a yield function entirely in terms of the macro-stresses

-   A full derivation (for the same assumptions as McClintock) is on pp. 273-277

<span>gurson model</span>

-   Gurson defines several intermediate stress calculations
    $$\\begin{aligned}
                \\sigma\_{eq} &= \\sqrt{\\frac{3}{2}\\sigma\_{ij}^\\prime\\sigma\_{ij}^\\prime}\\\\
                \\sigma\_{ij}^\\prime &= \\sigma\_{ij} - \\sigma\_m\\\\
                \\sigma\_m &= \\frac{1}{3} \\sigma\_{ii}
            \\end{aligned}$$

<span>gurson model</span>

-   He then finds the yield function as
    $$\\left(\\frac{\\sigma\_{eq}}{\\sigma\_{YS}}\\right)^2 + 2f\\cosh\\left( \\frac{\\sqrt{3}\\sigma\_{11}}{\\sigma\_{YS}}\\right) - (1+f^2) = 0$$

-   Note: in Gurson’s assumptions, the cyldiner is along the 3 direction and an axi-symmetric state of stress with *σ*<sub>11</sub> = *σ*<sub>22</sub> was assumed.

-   Also, these stress quantities are volume averaged over the RVE

-   Gurson has essentially used micromechanics to define a new constitutive relation

<span>gurson tvergaard needleman</span>

-   Some moderate improvements were made to the Gurson model and are known as the Gurson-Tvergaard-Needleman model

-   An elastic-plastic model with power-law hardening is used (instead of rigid plastic)
    $$\\bar{\\sigma}\_0 = \\sigma\_{YS} \\left( 1-\\frac{E}{\\sigma\_{YS}}\\bar{\\epsilon}\_p\\right)^N$$

-   Tvergaard modified McClintock’s void growth solution with a numerical analysis for a periodic array of voids

-   Needleman introduced an equivalent damage parameter, *f*<sup>\*</sup> instead of volume fraction of voids.

-   Equivalent damage includes void growth and nucleation of new voids

<span>needleman</span>

-   Needleman’s contribution is to account for the rapid reduction in stiffness at some critical void volume fraction
    $$f^\*(f) = \\begin{cases}
                    f & \\text{if } f \\le f\_c\\\\
                    f\_c + \\frac{1/q\_1-f\_c}{f\_f-f\_c}(f-f\_c) & \\text{if } f\_c &lt; f \\le f\_f \\\\
                    1/q-1 & \\text{if } f &gt; f\_f
            \\end{cases}$$

-   Where *f*<sub>*c*</sub> is the void volume fraction at the incidence of coalescence

-   *f*<sub>*f*</sub> is the void volume fraction at failure

<span>next class</span>

-   micro-cracks

-   finite element damage models


