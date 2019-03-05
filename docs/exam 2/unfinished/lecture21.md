<span>upcoming schedule</span>

-   Apr 19 - Dislocation Theory (HW6 Due)

-   Apr 24 - Work Day/Special Topics

-   Apr 26 - Work Day/Special Topics (HW7 Due)

-   May 1 - Work Day

-   May 3 - Project Due

### outline

\[sections numbered\]

dislocation theory
==================

<span>damage vs. dislocation</span>

-   We previously discussed a couple of damage models for materials

-   Void growth for ductile materials and micro-crack coalescence for brittle materials

-   Sometimes initial defects are neither voids nor micro-cracks

-   Dislocation theory attempts to model the effects of materal discontinuities that are not cracks

<span>material defects</span>

-   There are many different types of material defects

-   0-dimensional defects

    -   Point defects (vacancies, interstitials)

    -   Impurity atoms

-   1-dimensional defects

    -   Dislocations

-   2-dimensional defects

    -   Stacking faults

    -   Grain boundaries

-   3-dimensional defects

    -   Voids

    -   Precipitates

    -   More complicated stacking faults

<span>material defects</span>

<img src="../Figures/dislocations" alt="image" style="width:70.0%" />

<span>edge dislocations</span>

<img src="../Figures/dislocation-with_stress" alt="image" style="width:70.0%" />

<span>screw disolcation</span>

<img src="../Figures/dislocationdiagram" alt="image" style="width:70.0%" />

<span>dislocation animations</span>

-   <https://www.doitpoms.ac.uk/tlplib/dislocations/dislocation_motion.php>

<span>dislocation modeling</span>

-   There are multiple ways of modeling discontinuities

-   Elasticity Theory - strong discontinuity in the displacement field

-   Peach-Koehler force

-   Discrete Dislocation Dynamics

dislocations in linear elasticity
=================================

<span>screw dislocation</span>

-   A Volterra dislocation is defined as a discontinuity of the displacement field over a line segment or surface

-   For screw dislocations, we consider the anti-plane problem with
    *u*<sub>1</sub> = 0  *u*<sub>2</sub> = 0  *u*<sub>3</sub> = *w*(*x*, *y*)

-   For an isotropic material, the only non-zero stress and strain components are
    $$\\epsilon\_{13} = \\frac{1}{2}\\frac{\\partial w}{\\partial x} \\qquad \\epsilon\_{23} = \\frac{1}{2}\\frac{\\partial w}{\\partial y}$$
     and
    $$\\sigma\_{13} = \\mu\\frac{\\partial w}{\\partial x} \\qquad \\sigma\_{23} = \\mu\\frac{\\partial w}{\\partial y}$$

<span>screw dislocation</span>

-   There is only one non-trivial equilibrium equation in this case
    $$\\frac{\\partial \\sigma\_{13}}{\\partial x\_1} + \\frac{\\partial \\sigma\_{23}}{\\partial x\_2} + \\frac{\\partial \\sigma\_{33}}{\\partial x\_3} = 0$$

-   Which gives the governing equation
    $$\\frac{\\partial^2 w}{\\partial x\_1^2} + \\frac{\\partial^2 w}{\\partial x\_2^2} = \\nabla^2 w =  0$$

<span>screw dislocation</span>

-   We can now convert the governing equation to polar coordinates
    $$\\nabla^2 w = \\left( \\frac{\\partial^2}{\\partial^2 r} + \\frac{1}{r}\\frac{\\partial}{\\partial r} + \\frac{1}{r^2}\\frac{\\partial^2}{\\partial\\theta^2}\\right)w = 0$$

-   Solving by the separation of variables with *w*(*r*, *θ*)=*f*(*r*)*g*(*θ*) we find to ODE’s
    $$\\begin{aligned}
                \\frac{d^2 f}{dr^2} + \\frac{1}{r}\\frac{df}{dr} - \\frac{n^2 f}{r^2} &=0\\\\
                \\frac{d^2g}{d\\theta^2} + n^2g(\\theta) &= 0
            \\end{aligned}$$

<span>screw dislocation</span>

-   The only admissible solution (with finite displacement at *r* = 0) to this is
    $$\\begin{aligned}
                g(\\theta) &= A + B\\theta\\\\
                f(r) &= C \\ln r + D
            \\end{aligned}$$

-   We require *C* = 0 since our solution must be valid at *r* = 0, and the jump condition means *A* = 0

-   Further, since *θ* is a “constant” in *r*, we can combine the remaining constants, *B* and *D* to find
    *w*(*r*, *θ*)=*B**θ*

<span>screw dislocation</span>

-   The jump condition requires that
    *w*(*r*, 2*π*)−*w*(*r*, 0)=*b*

-   Hence
    $$w(r,\\theta) = \\frac{\\theta b}{2\\pi}$$
    $$w(x,y) = \\frac{b}{2\\pi} \\arctan \\left(\\frac{y}{x}\\right)$$

<span>edge dislocation</span>

-   We can use an Airy stress function in plane strain to solve the edge dislocation problem

-   See derivation in text pp. 303-305

-   Elasticity solutions are not often able to model dislocations very well

-   Some simple estimates (energy per unit length) are generally useful when applied within appropriate limits of the solution

peach koehler force
===================

<span>peach koehler force</span>

-   If we consider a dislocation loop that undergoes some virtual displacement

-   We can find the virtual work done by this virtual displacement

-   The decrease in potential energy due to the virtual displacement is the external virtual work done along the dislocation loop
    *δ**E* = −*F* ⋅ *δ**η* = −∫<sub>*L*</sub>*F*<sub>*l*</sub>*d**l* ⋅ *δ**η*

-   This is the Peach-Koehler equation, and it can be used to predict the direction a dislocation will move under external stresses

<span>peach koehler force</span>

-   The Peach-Koehler force can be expressed in a simplified form as
    *F*<sub>*l*</sub> = *g* × *t*

-   Where *t* is the unit vector of the dislocation line and *g* = *σ* ⋅ *b* where *b* is the Burger vector

<span>burger vector</span>

<img src="../Figures/Vector_de_Burgers" alt="image" style="width:70.0%" />

<span>examples</span>

-   straight screw dislocation

-   straight edge dislocation

discrete dislocation dynamics
=============================

<span>discrete dislocation dynamics</span>

-   There are many different forms of discrete dislocation dynamics analyses

-   One form is based on the Galerkin weak formulation, used in finite elements

-   The virtual work principle is used to build the formulation

<span>discrete dislocation dynamics</span>

-   In addition to the usual virtual displacements, there are other internal work components to be considered

-   These are often lumped together with friction, but also can included chemical forces (Osmotic force)

-   Multiple dislocation loops can be discretized to transform the integral for virtual work into a summation


