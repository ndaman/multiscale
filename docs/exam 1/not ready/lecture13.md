<span>upcoming schedule</span>

-   Mar 6 - SwiftComp

-   Mar 8 - Hashin-Strickman Bounds (HW 4 due)

-   Mar 13 - Finite Element Techniques (HW 3 Resubmission Due)

### outline

\[sections numbered\]

final project
=============

<span>final project</span>

-   Choose some multi-scale problem that we can use techniques from this class in

-   This could be related to research you are doing (modeling composite properties in a 3D-print)

-   You can also choose (or modify slightly) cases 3-6 from the Micromechanics challenge

-   Remember this project is in place of the final exam, you should demonstrate what you have learned in this course

<span>final project</span>

-   There are three main parts to the analysis you will do on the final project

    1.  A simplified model which can be solved using an analytical method (Eshelby)

    2.  A parametric finite element model (validate to Eshelby, then scale to correct volume fraction)

    3.  Some micromechanics software analysis (SwiftComp, CRAFT, MAC/GMC, etc.)

<span>project report</span>

-   In your report you should assume that the reader is already familiar with Finite Elements and the Eshelby method

-   The reader may not, however, be familiar with the micromechanics tool you are using

-   You should describe the method that your chosen software is using (i.e. Variational Asymptotic Method for SwiftComp, Fourier Transforms for CRAFT, Method of Cells for MAC/GMC. etc.)

-   Make some conclusions about the software you are using

    -   Have you demonstrated that the results from this method are correct?

    -   What advantages does it have over analytic methods and finite elements?

    -   Are there cases where you would expect your software to have difficulty?

<span>project rubric</span> Projects will be graded on the following rubric

-   Analytic Model - 25%

-   Finite Element Analysis - 25%

-   Micromechanics Software - 25%

-   Conclusion - 15%

-   General Presentation - 10%

<span>project abstract</span>

-   Homework 5 will be your project abstract

-   Due 3/29 (after Spring Break)

-   Describe what problem you want to solve and what you will use to solve it

-   List a few challenges you expect to face, how they could be overcome

<span>analytical method</span>

-   I think homework 6 or 7 will be over the analytical model for your problem

-   Due date will be provided later

-   This is just to make sure things are on track for your final project

swiftcomp
=========

<span>swiftcomp</span>

-   SwiftComp is a software built on the Variational Asymptotic Method, applied in particular to composites

-   You are not required to use SwiftComp in your project (we will also discuss Fourier and Method of Cells methods), but it may be the easiest

-   SwiftComp itself is a command-line tool, but Dr. Yu has merged it with a couple other software tools to give some form of GUI

-   gmsh4sc - modifies gmesh to work build mesh for SwiftComp, runs SwiftComp from the gmesh gui

-   texgen4sc - uses a textile software (for composite weaves) and runs swiftcomp from the texgen gui

-   plugins for Ansys and ABAQUS - if you use either of these software programs, you can run Swiftcomp from them as a plugin

<span>swiftcomp</span>

-   SwiftComp can either be run in the cloud or downloaded to run locally

-   Right now Dr. Yu only has the linux executables for download, I contacted him to get the Windows files

-   We will run through a few demos, but before we get lost in some of the software details, it is important to remember the big picture

<span>micromechanics</span>

-   In micromechanics, we are trying to represent a periodic structure with some effective property

-   For example, if we have a beam with a very complex cross-section, we can calculate the inertia of that cross-section and then model the beam as a straight line

-   We may, however, need to know the local stresses at certain points in the beam, the ability to recover local stresses is what SwiftComp calls “dehomogenization”

<span>workflow</span>

-   Thus the general workflow in Swiftcomp is

    1.  Run SwiftComp to homogenize some unit cell (beam cross-section, fiber weave, etc.)

    2.  Run FEA to get displacements/stresses using homogenized stiffness

    3.  Run SwiftComp with FEA displacement/stress data to find the local stresses

<span>links</span>

-   Until I can get all the files available, you should be able to run SwiftComp in the cloud

-   For gmesh <https://cdmhub.org/tools/scstandard>

-   For texgen (weaves) <https://cdmhub.org/tools/texgen4sc/>


