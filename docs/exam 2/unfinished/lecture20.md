<span>upcoming schedule</span>

-   Apr 17 - Localization

-   Apr 19 - Dislocation Theory (HW6 Due)

-   Apr 24 - Work Day/Special Topics

-   Apr 26 - Work Day/Special Topics (HW7 Due)

-   May 1 - Work Day

-   May 3 - Project Due

### outline

\[sections numbered\]

<span>swiftcomp files</span>

-   As a reminder: you can access files generated in SwiftComp by mapping a network drive

-   In Windows, right click “My Computer” click “Map Network Drive” and under “Folder” type <https://cdmhub.org/webdav>

-   Login with other credentials and enter your cdmhub user name and password

<span>localization</span>

-   There are some advantages to homogenization with specialized micromechanics tools, but mean field is usually good enough and more efficient

-   The real advantage to specialized micromechanics software is the ability to localize

-   In the homogenization step, we apply idealized loads to build an effective stiffness matrix

-   In the localization step, we apply real loads to the large-scale structure and then extract local stresses

<span>swiftcomp</span>

-   To perform localization in SwiftComp, we first mesh the microstructure and perform homogenization

-   Now we use the homogenized stiffness as a custom, anisotropic material in any finite element package

-   We run a finite element analysis and extract displacements, rotations, and strains at some element of interest

<span>swiftcomp</span>

-   In SwiftComp, *v*<sub>1</sub>, *v*<sub>2</sub> and *v*<sub>3</sub> refer to the macro displacements

-   *C*<sub>*i**j*</sub> is a matrix representation of the macro rotations

-   *e*<sub>11</sub> etc. represent the strains

-   In COMSOL, displacements are output with u, v, and w

-   Rotations are given by solid.RotxX, solid.RotxY, etc.

-   And strains were found in a previous homework, solid.el11, solid.el22, etc.


