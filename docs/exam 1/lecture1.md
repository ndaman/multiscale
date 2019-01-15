<style>
.left {
  left:-8.33%;
  text-align: left;
  float: left;
  width:50%;
  z-index:-10;
}

.right {
  left:31.25%;
  top: 75px;
  float: right;
  text-align: right;
  z-index:-10;
  width:50%;
}
.bottom-left{
  left: 0;
  bottom: 0;
  position: fixed;
  width: 50%;
  text-align: left;
}
.bottom-right{
  right: 0;
  bottom: 0;
  position: fixed;
  width: 50%;
  text-align: right;
}
</style>

## AE 760AA: Micromechanics and multiscale modeling
Lecture 1 - Intro to Micromechanics

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

January 23, 2019

---
## schedule

-   Jan 23 - Intro to Micromechanics
-   Jan 28 - Tensor review, Anisotropic Elasticity
-   Feb 30 - Coordinate Transformation
-   Feb 4 - 1D Micromechanics

----
## outline
- introduction
- syllabus
- micromechanics
- software
- plotting

---

## about me
![family picture](images\IMG_5266_edit.jpg)

----

## education
  - B.S. in Mechanical Engineering from Brigham Young University
    - Worked with ATK to develop tab-less gripping system for tensile testing composite tow specimens
    - Needed to align the specimen, as well as grip it without causing a stress concentration

----

## education
  - M.S. and Ph.D. from School of Aeronautics and Astronautics at Purdue University
    - Worked with Boeing to simulate mold flows
    - First ever mold simulation with anisotropic viscosity

----

## research
![picture of chopped carbon fiber prepreg](images\Formosa_Chopped_Carbon_Fiber_CSc_bw.jpg)

----

## research
![picture of lamborghini symbol made from compression molded chopped carbon fiber](images\lamborghini-chopped-fiber-badges-rough.jpg)

----

## research

  - No simulation is currently able to predict fiber orientation from these processes
  - Part of the challenge is that we only have information from initial state and final state
  - I want to quantify intermediate stages using a transparent mold

----

## research

  <div class='left'>
![picture illustrating the fused deposition modeling 3D printing process, where plastic filament is melted and deposited next to other filament, and fuses together](images\3D-printing.png)
  </div>

  <div class='right'>
  <ul>
  <li> Composites are being used in 3D printing now </li>
  <li> Printing patterns are optimized for isotropic materials </li>
  <li> Sometimes composites hurt more than they help when not utilized properly </li>
  </div>

----

## introductions

  - Name
  - Student status (Undergrad, Masters, Ph.D)
  - Full time or part time student?
  - One interesting thing to remember you by
  - What are you hoping to learn in Micromechanics?

---

## course textbook

-  The textbook used in this class is: *Introduction to Micromechanics and Nanomechanics*, Shaofan Li and Gang Wang
-  Homework will be given in handouts
-  I will supplement the text with some material from my former professor at Purdue
-  In particular, this book teaches micromechanics, but also links traditional micromechanics to smaller scales
-  My intent is to focus primarily on the micro-scale and above

----

## office hours

-   I will e-mail everyone in the course a Doodle link we can use to find the optimal office hours
-   Let me know if you do not receive the e-mail, you may need to update your information in Blackboard
-   Take advantage of office hours, this is time that I have already set aside for you
-   If the regular office hours do not work for your schedule, send me an e-mail and we can work out a time to meet

----

## tentative course outline

-   Section 1 - analytical methods
    -   Anisotropic elasticity
    -   Coordinate transformation
    -   1D analysis (voigt-reuss)
    -   Eshelby
    -   Mean-field

----

## tentative course outline

-   Section 2 - numerical methods
    -   Finite elements
    -   Variational calculus
    -   Fourier methods

----

## tentative course outline

-   Section 3 - damage
    -   Damage
    -   Dislocation
    -   Final project (due 15 May)

----

## grades

-   Grade breakdown
    -   Homework 40%
    -   Final Project 60%

-   Follow a traditional grading scale

----

## final project

-   Model some multi-scale problem using the techniques taught in this class.
-   You should use at least one micromechanics software tool, compare your results to a converged finite element model, and make an appropriate comparison to an analytical model.
-   More details on the final project will be given later in the course.

----

## class expectations

-   Consider the cost (to you or others) of your being in class
-   I ask that you refrain from distracting behaviors during class
-   When you have something more important than class to take care of, please take care of it outside of class

---

# micromechanics

----

## electrostatic force

![a diagram plotting inter-atomic forces vs distance between atoms](images\electrostatic.png)

----

## micromechanics

-   Many problems involve heterogeneous materials
-   Composites, biomechanics
-   Micromechanics is used to homogenize in order to predict global behavior
-   Can also be used in reverse to de-homogenize (or localize) global stresses/strains

----

## homogenization

-   In a composite laminate, the ABD matrix is used to homogenize the various laminae
-   Different materials will have different methods for homogenization
-   Eshelby, Mori-Tanaka are two analytic methods
-   There are also many numerical methods that can be used to homogenize

----

## de-homogenization

-   De-homogenization, or localization, is often valuable in predicting failure
-   Stiffness, load-displacement are “global” effects, can be predicted well with some homogenized material
-   Failure initiates at the local level, need to know stress in fiber/matrix (for composites)

----

## micromechanics

-   While the term “micromechanics” implies a certain scale, the methods we will use in this class are mathematically general
-   Can be used at any scale where the continuum assumption is valid
-   We only need some periodic structure

---

# software

----

## finite elements

-   Many specialized micromechanics tools exist for various problems
-   Standard finite element software is always used as the benchmark to which micromechanics is compared
-   Everyone will need access to FEA software in this class
-   Class examples will use COMSOL, since we have a class-kit license for that, but you are free to use any software package you have access to and are comfortable with

----

## comsol

- the files needed for installation can be downloaded [here]()
- need to have WSU on-campus IP address to access license (can use [vpn](https://vpn.wichita.edu))
- license format -> port number @ hostname
- port number: 1718, hostname: aecomsol.wichita.edu
- note: you do not need to install the license manager, and in this class we will not need Acoustics, Heat Transfer, Microfluidics, or Non-Linear Structurals Mechanics modules

----

## micromechanics

-   You are encouraged to find specialized micromechanics software for your final project
-   Different micromechanics software tools will utilize different theories to homogenize/de-homogenize
-   SwiftComp is available [here](https://cdmhub.org/) (uses variational calculus)
-   Some others are [CRAFT](http://craft.lma.cnrs-mrs.fr/) (uses Fourier transforms)
-   [MAC/GMC] (https://www.grc.nasa.gov/WWW/StructuresMaterials/MLP/software/mac-gmc/) (uses generalized method of cells)

---

# plotting

----

## plotting

-   Plotting is an important part of graduate work, and this course
-   There are many software programs which can generate good scientific plots
    -   Microsoft Excel
    -   MATLAB
    -   Maple
    -   Mathematica
    -   Python
    -   R
    -   Plot.ly

-   You are welcome to use whatever software you desire, I will use Python for a quick demonstration

----

## plotting

-   To make a good scientific plot, we must first decide what we are plotting, and which plot style will best illustrate our data
-   Let us consider as an example the popular Halpin-Tsai equations
$$ P_c = P_m \left (\frac{1 + \zeta \eta f}{1 - \eta f} \right)$$
$$\eta = \frac{P_f/P_m - 1}{P_f/P_m + \zeta}$$
-   Where *f* is the fiber volume fraction, and *P* is some propertry, with *c* indicating composite properties, *f* indicating fiber properties and *m* indicating matrix properties

----

## halpin-tsai

-   The parameter, *ζ* is determined based on the type of property and composites (axial vs. transverse modulus, long vs. short fibers, etc.)

-   For axial stiffness of oriented short-fiber composites, we will use
    *ζ* = 2*l*/*d*

-   Where *l*/*d* is the aspect ratio of the fibers

----

## plotting

-   We are interested in plotting the effect of aligned, short-fiber reinforcements

-   In our chosen software (Excel, MATLAB, Python), we set up the aspect ratios we will simulate (x-axis of plot)

-   Then we calculate *ζ*, *η* at each aspect ratio

-   It is often desirable to generalize equations as much as possible. We can divide by *P*<sub>*m*</sub> to find the normalized version, *P*<sub>*c*</sub>/*P*<sub>*m*</sub>.

----

## plotting
View rendered example [here](http://nbviewer.jupyter.org/github/ndaman/multiscale/blob/master/examples/Halpin-Tsai%20Example.ipynb)
