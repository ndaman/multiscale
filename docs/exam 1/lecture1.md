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

## AE 737: Mechanics of Damage Tolerance
Lecture 1 - Stress Intensity

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

January 9, 2019

---
## schedule

- 22 Jan - Introduction, Stress Intensity
- 24 Jan - Common Stress Intensity Factors
- 29 Jan - Superposition, Compounding
- 31 Jan - Curved Boundaries

----

## outline

  - introduction
  - syllabus
  - overview
  - fracture mechanics
  - stress intensity
  - making good plots

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

---

## course textbook
  - Printed notes from Dr. Bert L. Smith and Dr. Walter J. Horn
  - Bring $20 cash or check to AE offices to pick up your copy
  - Make checks out to Wichita State University
  - Homework will be given in handouts (via Blackboard/course website)
  - Supplemental textbooks are listed in the syllabus and in the text for further study

----

## office hours
  - I will e-mail everyone in the course a Doodle link we can use to find the optimal office hours
  - Let me know if you do not receive the e-mail, you may need to update your information in Blackboard
  - Take advantage of office hours, this is time that I have already set aside for you
  - If the regular office hours do not work for your schedule, send me an e-mail and we can work out a time to meet

---

## tentative course outline

  -  Section 1 - fracture mechanics
	  -  Stress intensity (22 - 31 Jan)
	  -  Plastic zone (5 - 12 Feb)
	  -  Fracture toughness (12 - 19 Feb)
	  -  Residual strength (19 - 26 Feb)
	  -  Exam 1 (7 March)

----

## tentative course outline
  -  Section 2 - fatigue and propagation
	  -  Fatigue analysis (19 - 28 Mar)
	  -  Crack propagation (28 Mar - 4 Apr)
	  -  Exam 2 (11 April)

----

## tentative course outline
  - Section 3 - damage tolerance
    - Damage tolerance (16-18 Apr)
    - Test methods
    - Finite elements
    - Non Destructive Testing
    - Special topics
    - Final project (due 16 May)

----

## grades

Grade breakdown

- Homework 15%
- Exam 1 30%
- Exam 2 30%
- Final Project 25%

<table style="width:100%">
<tr>
<th>A</th>  <th>A-</th>  <th>B+</th>  <th>B</th>  <th>B-</th>  <th>C+</th>  <th>C</th>  <th>C-</th>  <th>D+</th>  <th>D</th>  <th>D-</th>  <th>F</th>
</tr>
<tr>
<td>93-100</td>  <td>90-93</td>  <td>87-90</td>  <td>83-87</td>  <td>80-83</td>  <td>77-80</td>  <td>73-77</td>  <td>70-73</td>  <td>67-70</td>  <td>63-67</td>  <td>60-63</td>  <td>0-60</td>
</tr>
</table>

----
## final project

-  Perform residual strength, fatigue and damage tolerance analysis on a real part
-  Examples: car axle, fuselage panel, wing panel, landing gear, bike pedal
-  Individual project
-  More discussion after Exam 1

---

## class expectations

-  Consider the cost (to you or others) of your being in class
-  I ask that you refrain from distracting behaviors during class
-  When you have something more important than class to take care of, please take care of it outside of class

----
## software, in-class examples

-  This class will involve a great deal of multi-step calculations
-  While it is possible to do these by hand on paper, I STRONGLY recommend using some form of software
-  Excel, MATLAB, Python, Maple, Mathematica, etc. can all be used
-  Most of my in-class demos will use Python (and will be linked in notes)

---
## damage

-  In linear elasticity, we generally consider materials in their pristine state
-  Realities of manufacturing, cyclic loads, and unforeseen loads result in a material which is something other than pristine
-  In this course we will develop methods for predicting the strength of a material with some damage (residual strength)
-  We will learn to predict the rate at which damage will grow (fatigue)

----
## damage tolerance
-  There are many ways to address the problem of damage in a material
	1.  Infinite-life design
	2.  Safe-life design
	3.  Damage tolerant design
-  To ensure damage tolerant design, we must ensure that crack growth is always stable
-  Another important concept of damage tolerant design is to include multiple load paths, so failure in one part does not cause critical failure of the whole structure

----
## damage tolerance
![B17 with failed tail section](images\B17.jpg)

----
## damage tolerance
![close-up of failed tail section on B17](images\B17a.jpg)

----
## damage tolerance
-  A B-17 collided with a Germain plane during WWII
-  In spite of the damage, the B-17 was able to fly 90 minutes and land safely

----
## damage tolerance
![Image of Boeing 737 with top of fuselage missing (and passengers inside)](images\737.jpg)

----
## damage tolerance

-  An example of multiple damaged sites occurred on a Boeing 737 in 1988
-  Damage around multiple rivet holes connected and a full piece of the fuselage was blown off
-  The plane was able to land safely
-  This particular instance led to the study of "Multiple Site Damage"

---
## fracture mechanics
-  *Linear Elastic Fracture Mechanics* is the study of the propagation of cracks in materials
-  There are some corrections we add to account for plasticity
-  In this course we will not follow the full mathematical development of fracture mechanics (there is a separate course dedicated to that)
-  Instead we will take some results and apply them

----
## fracture mechanics
  -  In fracture mechanics we consider three different modes
  -  Mode I is known as the "opening mode"
  -  Mode II is known as the "sliding mode"
  -  Mode III is known as the "tearing mode"

----
## fracture mechanics
![An image of the three fracture modes, with a representative crack in the xy plane. The first mode showns a crack opening vertically in the z-direction, like jaws opening. The second mode is known as the sliding mode, where one face moves into the body (negative x direction) while the other end of the crack moves away from the body (positive x direction). The third mode is known as the tearing mode, and is similar to mode 2 but with the sliding occuring 90 degrees away in the y-direction.](images\Fracture_modes_v2.svg)

---
## stress intensity
  -  A key finding from Linear Elastic Fracture Mechanics (LEFM) is known as the *Stress Intensity Factor*
  -  The stress intensity factor is often written in this form
		`$$ K = \sigma \sqrt{ \pi a} \beta $$`
    -  Where *K* is the stress intensity factor, `$ \sigma $` is the applied stress, *a* is the crack length, and `$ \beta $` is a dimensionless parameter depending on geometry

----
## stress Intensity
  -  Be careful that although the notation is similar, the *Stress Intensity Factor* is different from the *Stress Concentration Factor* from strength of materials
  -  We are usually most concerned with Mode I, but there will be a unique stress intensity factor for each mode, we label these `$ K_I $`, `$ K_{II} $`, and `$ K_{III} $`
  -  If no subscript is given, assume Mode I

----
## stress intensity
  -  For brittle materials (where "linear" fracture mechanics assumptions hold true) we can find the full stress field near the crack in terms of the stress intensity factor
	`$$	\begin{align}
		\begin{split}
		\sigma_x &= \frac{K_I}{\sqrt{2\pi r}} \cos \frac{\theta}{2} \left(1-\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)\\
		\sigma_y &= \frac{K_I}{\sqrt{2\pi r}} \cos \frac{\theta}{2} \left(1+\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)\\
		\tau_{xy} &= \frac{K_I}{\sqrt{2\pi r}} \sin \frac{\theta}{2} \cos \frac{\theta}{2}\cos \frac{3\theta}{2}
		\end{split}
		\end{align} $$`

----
## mode II
  -  Similarly for Mode II we find
	`$$	\begin{align}
		\begin{split}
		\sigma_x &= \frac{-K_{II}}{\sqrt{2\pi r}} \sin \frac{\theta}{2} \left(2+\cos \frac{\theta}{2}\cos \frac{3\theta}{2}\right)\\
		\sigma_y &= \frac{K_{II}}{\sqrt{2\pi r}} \sin \frac{\theta}{2} \cos \frac{\theta}{2}\cos \frac{3\theta}{2}\\
		\tau_{xy} &= \frac{K_{II}}{\sqrt{2\pi r}} \cos \frac{\theta}{2} \left(1-\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)
		\end{split}
		\end{align} $$`


----
## mode III
  -  And for Mode III
	`$$	\begin{align}
		\begin{split}
		\tau_{xz} &= \frac{-K_{III}}{\sqrt{2\pi r}} \sin \frac{\theta}{2} \\
		\tau_{yz} &= \frac{K_{III}}{\sqrt{2\pi r}} \cos \frac{\theta}{2}
		\end{split}
		\end{align} $$`

---
## plotting
  -  Plotting is an important part of graduate work, and this course
  -  There are many software programs which can generate good scientific plots
    -  Microsoft Excel
    -  MATLAB
    -  Maple
    -  Mathematica
    -  Python
    -  R
    -  Plot.ly

----
## plotting
  -  You are welcome to use whatever software you desire, I will use Python for a quick demonstration
  -  This demo is accessible [here](https://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/examples/Plotting_Demo.ipynb)

----
## plotting
  -  To make a good scientific plot, we must first decide what to plot, and which plot style will best illustrate our data
  -  Let us consider the Mode I stress near a crack tip
		`$$ \begin{align*}
		\sigma_x &= \frac{K_I}{\sqrt{2\pi r}} \cos \frac{\theta}{2} \left(1-\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)\\
		\sigma_y &= \frac{K_I}{\sqrt{2\pi r}} \cos \frac{\theta}{2} \left(1+\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)\\
		\tau_{xy} &= \frac{K_I}{\sqrt{2\pi r}} \sin \frac{\theta}{2} \cos \frac{\theta}{2}\cos \frac{3\theta}{2}
		\end{align*} $$`

----
## plotting
  -  One interesting plot could be to examine stress magnitudes along the crack propagation direction as we get farther away from the crack
  -  In this case we would have `$ \theta = 0 $`.
  -  Since `$ \theta $` is a constant, it is not ideal to use a polar plot, instead we will use a standard rectangular plot

----
## plotting
  -  Since we are looking at stresses near the crack tip, it is convenient to normalize the distance by the crack length
  -  If substitute for `$\theta$` and `$K_I$` we have
		`$$\begin{align*}
		\sigma_x &= \frac{\sigma\sqrt{\pi a} \beta}{\sqrt{2\pi r}} \\
		\sigma_y &= \frac{\sigma\sqrt{\pi a} \beta}{\sqrt{2\pi r}} \\
		\tau_{xy} &= 0
		\end{align*}$$`

----
## plotting
  -  Since `$\sigma_x$` and `$\sigma_y$` are identical for this case, we consider only one, and normalize by the applied stress. After simplification
		`$$
		\frac{\sigma_x}{\sigma\beta} = \frac{1}{\sqrt{2}} \frac{1}{\sqrt{(r/a)}}
		$$`

----
## plotting
![stress in the x direction plotted vs normalized distance from crack tip, r/a](images\sigmax_vs_ra.png)

----
## plotting
  -  Since we found `$\sigma_x = \sigma_y$` for `$\theta=0$`, we decide it might be better to look at a polar plot using `$\theta$` as a variable
  -  To make a polar plot in this style, we need a function such that `$r = f(\theta)$`
  -  To do this we consider a constant stress value, we will solve for and plot the distance, `$r$` at which the stress is equal to the same constant value for each of the three stress terms

----
## plotting
  `$$ \begin{align*}
  \sigma_x = C &= \frac{K_I}{\sqrt{2\pi r}} \cos \frac{\theta}{2} \left(1-\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)\\
  \sigma_y = C &= \frac{K_I}{\sqrt{2\pi r}} \cos \frac{\theta}{2} \left(1+\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)\\
  \tau_{xy} = C &= \frac{K_I}{\sqrt{2\pi r}} \sin \frac{\theta}{2} \cos \frac{\theta}{2}\cos \frac{3\theta}{2}
		\end{align*} $$`


----
## plotting
  -  After solving for $r$ we find
	`$$ \begin{align*}
		r &= \frac{K_I^2}{2 C^2 \pi} \cos^2 \frac{\theta}{2} \left(1-\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)^2\\
		r &= \frac{K_I^2}{2 C^2 \pi} \cos^2 \frac{\theta}{2} \left(1+\sin \frac{\theta}{2}\sin \frac{3\theta}{2}\right)^2\\
		r &= \frac{K_I^2}{2 C^2 \pi} \sin^2 \frac{\theta}{2} \cos^2 \frac{\theta}{2}\cos^2 \frac{3\theta}{2}
		\end{align*} $$`

----
## plotting
![Polar plot for constant stress contours near the crack tip for Mode I](images\polar_plot.png) <!-- .element width="50%" -->
