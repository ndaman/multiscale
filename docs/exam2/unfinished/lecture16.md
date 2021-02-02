<span>upcoming schedule</span>

-   Mar 27 - Fourier Analysis

-   Mar 29 - Method of Cells (Abstract Due, HW4 Regrade Due)

-   Apr 3 - Work Day?

-   Apr 5 - Damage Theory (HW5 Due)

### outline

\[sections numbered\]

<span>COMSOL</span>

-   COMSOL license server is up and running

-   e-mail me your computer name so that you can be “whitelisted”

-   Need WSU IP address, can either be on-campus or use VPN <https://vpn.wichita.edu/>

-   If you still have the COMSOL trial installed, you can simply re-run the installer to change your license

-   Otherwise download the files you need here: <https://drive.google.com/open?id=0BygD_4qX_sBDMnAyZHVVRkhUOVU>

<span>COMSOL</span>

-   During installation choose License Format -&gt; port number @ hostname

-   Enter 1718 for the port number

-   aecomsol.wichita.edu as the host name

-   Click “check” to make sure the license is valid

-   On the next page, choose which modules to install (license manager is NOT needed)

-   For this class, you will not need Acoustics, Heat Transfer, Microfluidics, or Non-linear Structural Mechanics, so if you are trying to save space you can leave those out as well

Fourier Methods
===============

<span>motivation</span>

-   Fourier transforms are often used to represent periodic data

-   If we have a periodic microstructure, we can formulate the problem in Fourier space

-   There are many Fast Fourier Transform (FFT) algorithms available to compute discrete problems very quickly

<span>current implementations</span>

-   I do not have a lot of experience with FFT-based micromechanics software, but there are a few tools available

-   CraFT (I have linked this in the past) <http://craft.lma.cnrs-mrs.fr/spip/> (original FFT for elasticity program)

-   Morphhom <http://cmm.ensmp.fr/morphhom/> (another french group)

-   MASSIF <http://www.icmr.ucsb.edu/programs/3DWorkshop/Rollett-FFT-modeling-method.pdf> (modifications made by group at Los Alamos)

<span>uses</span>

-   While many Micromechanics tools have been developed around specific applications (such as composites), FFT-based algorithms attempt to be somewhat more general

-   Used for polycrystalline materials (metal alloys), grain boundaries, fatigue crack initiation, dislocation stress fields, microcracks, graded microstructures, coatings, etc.

-   Requires periodic structure and BC’s

-   This means it can be used to characterize a material, but cannot solve most structural problems

-   Uses image-based inputs (pixels/voxels) which can directly relate to experiments (serial sectioning, 3D X-ray/CT scan), but are a little more difficult to develop conceptually

<span>validation</span>

-   Prakash and Lebensohn validated the FFT method against FEM for a rolling simulation.

-   <http://iopscience.iop.org/article/10.1088/0965-0393/17/6/064010/meta>

<span>RVE</span>

![image](../Figures/FFT-RVE)

<span>deformed</span>

![image](../Figures/FFT-deformed)

<span>comparison</span>

![image](../Figures/FFT-comparison)

theoretical basis
=================

<span>references</span>

-   Textbook chapter 11 (pp 419-431) discusses Fourier methods for periodic structural homogenization

-   There are also many papers on the subject, <https://arxiv.org/pdf/1412.8398.pdf> (Fourier-based schemes for computing the mechanical response of composites with accurate local fields by Francois Willot) is a good review

<span>linear elasticity</span>

-   All Fourier schemes begin with the standard equations of linear elasticity
    $$\\begin{aligned}
                \\sigma\_{ij}(x) &= C\_{ijkl} \\epsilon\_{kl}(x)\\\\
                \\sigma\_{ij,j}(x) &=0\\\\
                \\epsilon\_{ij}(x) &= \\frac{1}{2} (u\_{i,j}(x) + u\_{j,i}(x))
            \\end{aligned}$$

-   While we have listed material properties as functions of *x*, we usually have only 2-3 phases of material, and thus these functions will be piecewise, simply differentiating between the phases

<span>lippmann-schwinger equations</span>

-   Fourier Methds are based on the Lippmann-Schwinger equations where we define the polarization field as
    *τ*<sub>*i**j*</sub> = *σ*<sub>*i**j*</sub>(*x*)−*C*<sub>*i**j**k**l*</sub><sup>0</sup>*ϵ*<sub>*k**l*</sub>(*x*)

-   We also use the Green operator, which is given (in the Fourier space) as
    *G*<sub>*i**j**k**l*</sub>(*q*)=*q*<sub>*i*</sub>\[*q*<sub>*m*</sub>*C*<sub>*m**j**k**n*</sub><sup>0</sup>*q*<sub>*n*</sub>\]<sup>−1</sup>*q*<sub>*l*</sub>

-   and the strain field can be expressed as
    $$\\epsilon\_{ij}(x) = \\bar{\\epsilon}\_{ij} - \\int\_{x^\\prime} d^d x^\\prime G\_{ijkl} (x^\\prime - x)\\tau\_{kl} (x^\\prime)$$

-   where *q*<sub>*i*</sub> are Fourier wave vectors

<span>direct scheme</span>

-   These equations are generally solved iteratively, with different assumptions used to arrive at the solution

-   The “direct” scheme solves the problem iteratively using
    $$\\begin{aligned}
                \\epsilon^{k=0} &= \\bar{\\epsilon}\\\\
                \\epsilon^{k+1} &= \\bar{\\epsilon} - G \* (\\sigma-C^0:\\epsilon^k)
            \\end{aligned}$$

-   Where each iteration is solved in the Fourier space (where the convolution integral is an algebraic product)

-   The convergence of this method is quite slow when there is high contrast between the two phases

<span>accelerated schemes</span>

-   There are many methods to accelerate the convergence for high contrast materials

-   One is referred to as the “acclerated scheme” another is known as the “augmented lagrangian”

-   In the accelerated scheme the strain is calculated as
    $$\\epsilon^{k+1} = \\epsilon^k + 2(C+C^0)^{-1}:C^0:\[\\bar{\\epsilon}-\\epsilon^k-G\*(C:\\epsilon^k-C^0:\\epsilon^k)\]$$

-   *C*<sup>0</sup> is a reference stiffness, and while it is arbitrary, the choice of *C*<sup>0</sup> does affect the convergence, and for isotropic materials the optimal *C*<sup>0</sup> is given by
    $$k^0 = \\sqrt{k^1 k^2} \\qquad \\mu^0 = \\sqrt{\\mu^1\\mu^2}$$

installation
============

<span>installation</span>

-   For now, CraFT is the only FFT program I have tried, although I have contacted other authors so we may possibly be able to use those in the future as well

-   It must be compiled from source on Linux, I will provide information on how to do this on a Windows machine

-   First, you need to emulate linux, I use virtualbox <https://www.virtualbox.org/wiki/Downloads> but there are other virtual machines

-   Next, you need to download and install a Linux distribution to install in Virtualbox (or your virtual machine), I used ubuntu <https://www.ubuntu.com/download>

-   There are many tutorials on the internet if you wish to use a different Linux distribution, you may have to modify some commands slightly

<span>compiling</span>

-   Next you need to obtain and compile the source for CraFT. I have the source code and will share it with you if you do not want to contact the authors directly

-   To build the source code, first you need to obtain some standard libraries, as well as the FFT library used in CraFT

-   In ubuntu type into the command line `sudo apt-get install build-essential gfortran libfftw3-dev`

-   Navigate to the directory with CraFT and unpack it using `tar xvfz craft-1.0.12g.tgz`

-   Navigate to the CraFT directory `cd craft-1.0.12g`

-   Type `make` and the program will compile

<span>post processing</span>

-   CraFT includes some basic pre-processing, but no post-processing

-   It saves output files in the vtk format, there are multiple programs that can view these files

-   I used paraview which can be installed using `sudo apt-get install paraview`


