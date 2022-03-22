## AE 760AA: Micromechanics and multiscale modeling
Lecture 13 - SwiftComp

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

22 March 2022

----
## schedule

-   22 Mar - SwiftComp
-   24 Mar - Fourier Analysis, HW 5 Due, Project Abstract Due
-   29 Mar - Method of Cells
-   31 Mar - Workday

----
## outline

<!-- TOC START min:1 max:1 link:false update:true -->
- variational asymptotic method 
- swiftcomp
- asymptotic homogenization 
- moose

<!-- TOC END -->

---
# variational asymptotic method 

----
## variational asymptotic method 

- For more details see the paper:
- Variational asymptotic method for unit cell homogenization of periodically heterogeneous materials
- Wenbin Yu, Tian Tang

----
## assumptions

- exact solutions of field variables have volume averages over the unit cell 

`$$ u_i = \frac{1}{\Omega} \int_\Omega u_i d\Omega \equiv \langle u_i \rangle`

- effective material properties of the unit cell are independent of geometry, boundary conditions, and loading
- homogenization is also only appropriate when `$h/l \ll 1$` where `$h$` is the characteristic size of the unit cell and `$l$` is the characteristic wavelength of deformation 

----
## variational statement 

![../images/vamuch-coords.png]

---
# swiftcomp

----
## swiftcomp

-   SwiftComp is a software built on the Variational Asymptotic Method, applied in particular to composites
-   You are not required to use SwiftComp in your project (we will also discuss Fourier and Method of Cells methods), but it may be the easiest
-   SwiftComp itself is a command-line tool, but Dr. Yu has merged it with a couple other software tools to give some form of GUI
-   gmsh4sc - modifies gmesh to work build mesh for SwiftComp, runs SwiftComp from the gmesh gui
-   texgen4sc - uses a textile software (for composite weaves) and runs swiftcomp from the texgen gui
-   plugins for Ansys and ABAQUS - if you use either of these software programs, you can run Swiftcomp from them as a plugin

----
## swiftcomp

-   SwiftComp can either be run in the cloud or downloaded to run locally
-   Right now Dr. Yu only has the linux executables for download, I contacted him to get the Windows files
-   We will run through a few demos, but before we get lost in some of the software details, it is important to remember the big picture

----
## micromechanics

-   In micromechanics, we are trying to represent a periodic structure with some effective property
-   For example, if we have a beam with a very complex cross-section, we can calculate the inertia of that cross-section and then model the beam as a straight line
-   We may, however, need to know the local stresses at certain points in the beam, the ability to recover local stresses is what SwiftComp calls "dehomogenization"

----
## workflow

-   Thus the general workflow in Swiftcomp is
    1.  Run SwiftComp to homogenize some unit cell (beam cross-section, fiber weave, etc.)
    2.  Run FEA to get displacements/stresses using homogenized stiffness
    3.  Run SwiftComp with FEA displacement/stress data to find the local stresses

----
## links

-   You should be able to run SwiftComp in the cloud (requires an account at cdmhub.org)
-   For [gmesh](https://cdmhub.org/tools/scstandard) (arbitrary shapes)
-   For [texgen](https://cdmhub.org/tools/texgen4sc/) (woven composites)
