<span>upcoming schedule</span>

-   Jan 23 - Tensor Transformation

-   Jan 25 - 1D micromechanics

-   Jan 30 - Eshelby

### outline

\[sections numbered\]

Index Notation
==============

<span>index notation</span>

-   Consider the following

-   
    *s* = *a*<sub>1</sub>*x*<sub>1</sub> + *a*<sub>2</sub>*x*<sub>2</sub> + ... + *a*<sub>*n*</sub>*x*<sub>*n*</sub>

-   Which we could also write as

-   
    $$s = \\sum\_{i=1}^{n}a\_ix\_i$$

-   Using index notation, and Einstein’s summation convention, we can also write this as

-   
    *s* = *a*<sub>*i*</sub>*x*<sub>*i*</sub>

<span>dummy index</span>

-   In index notation, a repeated index implies summation

-   This index is also referred to as a dummy index

-   It is called a “dummy index” because the expression would have the same meaning with any index in its place

-   i.e. *i*, *j*, *k*, etc. would all have the same meaning when repeated

-   Note, no index may be repeated more than once, thus the expression
    $$s = \\sum\_{i=1}^{n}a\_ib\_ix\_i$$
     could not be directly written in index notation

<span>free index</span>

-   Any index which is not repeated in an index notation expression is referred to as a free index

-   The number of free indexes in an expression indicate the tensor order of that expression

-   No free indexes = scalar expression (0-order tensor)

-   One free index = vector expression (1st-order tensor)

-   Two free indexes = matrix expression (2nd-order tensor)

<span>index notation</span>

Free index vs. dummy index

Free index is not repeated (on any term)

Free index takes all values (1,2,3)

e.g. *u*<sub>*i*</sub> = ⟨*u*<sub>1</sub>, *u*<sub>2</sub>, *u*<sub>3</sub>⟩

Free indexes must match across terms in an expression or equation

Dummy index is repeated on at least one term

Dummy index indicates summation over all values

e.g. *σ*<sub>*i**i*</sub> = *σ*<sub>11</sub> + *σ*<sub>22</sub> + *σ*<sub>33</sub>

Index can not be used more than twice in the same term (*A*<sub>*i**j*</sub>*B*<sub>*j**k*</sub>*C*<sub>*k**l*</sub> is good, *A*<sub>*i**j*</sub>*B*<sub>*i**j*</sub>*C*<sub>*i**j*</sub> is not)

<span>dummy index</span>

-   The dummy index can be triggered by any repeated index in a .

-   Summation or not?

    -   *a*<sub>*i*</sub> + *b*<sub>*i**j*</sub>*c*<sub>*j*</sub>

    -   *a*<sub>*i**j*</sub> + *b*<sub>*i**j*</sub>

    -   *a*<sub>*i**j*</sub> + *b*<sub>*i**j*</sub>*c*<sub>*j*</sub>

<span>matrix multiplication</span>

-   How can we write matrix multiplication in index notation?

-   $\\begin{bmatrix}
            a\_{11} & a\_{12} \\\\
            a\_{21} & a\_{22}
            \\end{bmatrix}
            \\begin{bmatrix}
            b\_{11} & b\_{12} \\\\
            b\_{21} & b\_{22}
            \\end{bmatrix} =
            \\begin{bmatrix}
            c\_{11} & c\_{12} \\\\
            c\_{21} & c\_{22}
            \\end{bmatrix}$

-   *c*<sub>11</sub> = *a*<sub>11</sub>*b*<sub>11</sub> + *a*<sub>12</sub>*b*<sub>21</sub>

-   *c*<sub>12</sub> = *a*<sub>11</sub>*b*<sub>21</sub> + *a*<sub>12</sub>*b*<sub>22</sub>

-   <span> </span>

<span>special symbols</span>

-   For convenience we define two symbols in index notation

-   *Kronecker delta* is a general tensor form of the Identity Matrix
    $$\\delta\_{ij} = \\left\\{
            \\begin{array}{ll}
            1& \\text{if $i=j$}\\\\
            0& \\text{otherwise}
            \\end{array}
            \\right. = \\begin{bmatrix}
            1 & 0 & 0\\\\
            0 & 1 & 0 \\\\
            0 & 0 & 1
            \\end{bmatrix}$$

-   Is also used for higher order tensors

-   *δ*<sub>*i**j*</sub> = *δ*<sub>*j**i*</sub>

-   *δ*<sub>*i**i*</sub>= 3

-   *δ*<sub>*i**j*</sub>*a*<sub>*j*</sub>= *a*<sub>*i*</sub>

-   *δ*<sub>*i**j*</sub>*a*<sub>*i**j*</sub>= *a*<sub>*i**i*</sub>

<span>special symbols</span>

-   *alternating symbol* or *permutation symbol*
    $$\\epsilon\_{ijk} = \\left\\{
            \\begin{array}{rl}
            1 & \\text{if $ijk$ is an even permutation of 1,2,3}\\\\
            -1 & \\text{if $ijk$ is an odd permutation of 1,2,3}\\\\
            0 & \\text{otherwise}
            \\end{array}
            \\right.$$

-   This symbol is not used as frequently as the *Kronecker delta*

-   For our uses in this course, it is enough to know that 123, 231, and 312 are even permutations

-   321, 132, 213 are odd permutations

-   all other indexes are zero

-   *ϵ*<sub>*i**j**k*</sub>*ϵ*<sub>*i**m**n*</sub> = *δ*<sub>*j**m*</sub>*δ*<sub>*k**n*</sub> − *δ*<sub>*j**n*</sub>*δ*<sub>*m**k*</sub>

<span>substitution</span>

-   When solving tensor equations, we often need to manipulate expressions

-   We need to make sure the correct indexes are used when substituting, for example

-   
    *a*<sub>*i*</sub> = *U*<sub>*i**m*</sub>*b*<sub>*m*</sub>

-   
    *b*<sub>*i*</sub> = *V*<sub>*i**m*</sub>*c*<sub>*m*</sub>

-   To substitute (\[eq:second\]) into (\[eq:first\]), we first need to change indexes

<span>substitution</span>

-   We need to change the free index, *i*, to *m* in (\[eq:second\])

-   Since *m* is already used as the dummy index, we need to change that too

-   
    *b*<sub>*m*</sub> = *V*<sub>*m**j*</sub>*c*<sub>*j*</sub>

-   We can now make the substitution

-   
    *a*<sub>*i*</sub> = *U*<sub>*i**m*</sub>*V*<sub>*m**j*</sub>*c*<sub>*j*</sub>

<span>multiplication</span>

-   We need to be careful with indexes when multiplying expressions

-   
    *p* = *a*<sub>*m*</sub>*b*<sub>*m*</sub>  and  *q* = *c*<sub>*m*</sub>*d*<sub>*m*</sub>

-   We can express, *p**q*, but remember the dummy index cannot be repeated more than once

-   
    *p**q* ≠ *a*<sub>*m*</sub>*b*<sub>*m*</sub>*c*<sub>*m*</sub>*d*<sub>*m*</sub>

-   Instead we must change the dummy index in one of the expressions first

-   
    *p**q* = *a*<sub>*m*</sub>*b*<sub>*m*</sub>*c*<sub>*n*</sub>*d*<sub>*n*</sub>

<span>factoring</span>

-   In the following expression, we would like to factor out *n*, but it has different indexes

-   
    *σ*<sub>*i**j*</sub>*n*<sub>*j*</sub> − *λ**n*<sub>*i*</sub> = 0

-   Recall *δ*<sub>*i**j*</sub>*a*<sub>*j*</sub> = *a*<sub>*i*</sub>, we can rewrite *n*<sub>*i*</sub> = *δ*<sub>*i**j*</sub>*n*<sub>*j*</sub>

-   
    *σ*<sub>*i**j*</sub>*n*<sub>*j*</sub> − *λ**δ*<sub>*i**j*</sub>*n*<sub>*j*</sub> = 0

-   
    (*σ*<sub>*i**j*</sub> − *λ**δ*<sub>*i**j*</sub>)*n*<sub>*j*</sub> = 0

<span>contraction</span>

-   *σ*<sub>*i**i*</sub> is the contraction of *σ*<sub>*i**j*</sub>

-   This can often be a useful tool in solving tensor equations

-   
    *σ*<sub>*i**j*</sub> = *λ**Δ**δ*<sub>*i**j*</sub> + 2*μ**E*<sub>*i**j*</sub>

-   
    *σ*<sub>*i**i*</sub> = *λ**Δ**δ*<sub>*i**i*</sub> + 2*μ**E*<sub>*i**i*</sub>

<span>partial derivative</span>

-   We indicate (partial) derivatives using a comma

-   In three dimensions, we take the partial derivative with respect to each variable (*x*, *y*, *z* or *x*<sub>1</sub>, *x*<sub>2</sub>, *x*<sub>3</sub>)

-   For example a scalar property, such as density, can have a different value at any point in space

-   *ρ* = *ρ*(*x*<sub>1</sub>, *x*<sub>2</sub>, *x*<sub>3</sub>)
    $$\\rho\_{,i} = \\frac{\\partial}{\\partial x\_i} \\rho = \\left\\langle \\frac{\\partial \\rho }{\\partial x\_1}, \\frac{\\partial \\rho }{\\partial x\_2}, \\frac{\\partial \\rho }{\\partial x\_3} \\right\\rangle$$

<span>partial derivative</span>

-   Similarly, if we take the partial derivative of a vector, it produces a matrix
    $$u\_{i,j} = \\frac{\\partial}{\\partial x\_j} u\_i = \\begin{bmatrix}
            \\frac{\\partial u\_1}{\\partial x\_1} & \\frac{\\partial u\_1}{\\partial x\_2} & \\frac{\\partial u\_1}{\\partial x\_3}\\\\
            \\frac{\\partial u\_2}{\\partial x\_1} & \\frac{\\partial u\_2}{\\partial x\_2} & \\frac{\\partial u\_2}{\\partial x\_3}\\\\
            \\frac{\\partial u\_3}{\\partial x\_1} & \\frac{\\partial u\_3}{\\partial x\_2} & \\frac{\\partial u\_3}{\\partial x\_3}
            \\end{bmatrix}$$

dyadic notation
===============

<span>dyadic notation</span>

-   Dyadic notation is sometimes called tensor product notation

-   Dyadic product: *C*<sub>*i**j*</sub> = *a*<sub>*i*</sub>*b*<sub>*j*</sub> is written as *C* = *a* ⊗ *b*

-   Double dot product: *A*<sub>*i**j*</sub>*B*<sub>*j**i*</sub> = *c* is written as *A* : *B* = *c*

transformation
==============

<span>linear transformation</span>

-   Let us consider some transformation, **T**, which transforms any vector into another vector

-   If we transform **Ta** = *c* and **Tb** = *d*

-   We call **T** a linear transformation (and a tensor) if

-   
    $$\\begin{aligned}
            \\textbf{T}(\\textbf{a} + \\textbf{b}) &= \\textbf{Ta} + \\textbf{Tb}\\\\
            \\textbf{T}(\\alpha \\textbf{a}) = \\alpha\\textbf{Ta}
            \\end{aligned}$$

-   Where *α* is any arbitrary scalar and **a** **b** are arbitrary vectors

<span>coordinate transformation in two dimensions</span>

(0,3) node (yaxis) \[above\] <span>*x*<sub>2</sub></span> |- (3,0) node (xaxis) \[right\] <span>*x*<sub>1</sub></span>; (0,0) – (-2.12,2.12) node (yprime) \[above left\] <span>*x*<sub>2</sub><sup>′</sup></span>; (0,0) – (2.12,2.12) node (xprime) \[above right\] <span>*x*<sub>1</sub><sup>′</sup></span>; (0,0) – (1.5,1.5) node (v) \[above left\] <span>*v*</span>;

<span>coordinate transformation in two dimensions</span>

-   The vector, *v*, remains fixed, but we transform our coordinate system

-   In the new coordinate system, the *x*<sub>2</sub><sup>′</sup> portion of *v* is zero.

-   To transform the coordinate system, we first define some unit vectors.

-   $\\hat{e}\_1$ is a unit vector in the direction of *x*<sub>1</sub>, while $\\hat{e}\_1^\\prime$ is a unit vector in the direction of *x*<sub>1</sub><sup>′</sup>

<span>coordinate transformation in two dimensions</span>

(0,3) node (yaxis) \[above\] <span>*x*<sub>2</sub></span> |- (3,0) node (xaxis) \[right\] <span>*x*<sub>1</sub></span>; (0,1) node (j) \[above right\] <span>$\\hat{e}\_2$</span> |- (1,0) node (i) \[below right\] <span>$\\hat{e}\_1$</span>; (0,0) – (-2.12,2.12) node (yprime) \[above left\] <span>*x*<sub>2</sub><sup>′</sup></span>; (0,0) – (2.12,2.12) node (xprime) \[above right\] <span>*x*<sub>1</sub><sup>′</sup></span>; (0,0) – (-.707,.707) node (jprime) \[above right\] <span>$\\hat{e}\_2^\\prime$</span>; (0,0) – (.707,.707) node (iprime) \[right\] <span>$\\hat{e}\_1^\\prime$</span>; (0,0) – (1.5,1.5) node (v) \[above left\] <span>*v*</span>; (0.5,0) arc (0:45:0.5) node (theta) \[below right = -0.1cm and 0.3cm\] <span>*θ*</span>;

<span>coordinate transformation in two dimensions</span>

-   For this example, let us assume *v* = ⟨2, 2⟩ and *θ* = 45<sup>∘</sup>

-   We can write the transformed unit vectors, $\\hat{e}\_1^\\prime$ and $\\hat{e}\_2^\\prime$ in terms of $\\hat{e}\_1$, $\\hat{e}\_2$ and the angle of rotation, *θ*.
    $$\\begin{aligned}
                \\hat{e}\_1^\\prime &= \\langle \\hat{e}\_1 \\cos \\theta , \\hat{e}\_2 \\sin \\theta\\rangle\\\\
                \\hat{e}\_2^\\prime &= \\langle -\\hat{e}\_1 \\sin \\theta , \\hat{e}\_2 \\cos \\theta \\rangle
            \\end{aligned}$$

<span>coordinate transformation in two dimensions</span>

-   We can write the vector, *v*, in terms of the unit vectors describing our axis system

-   $v = v\_1 \\hat{e}\_1 + v\_2 \\hat{e}\_2$

-   (note: $\\hat{e}\_1=\\langle 1, 0 \\rangle$ and $\\hat{e}\_2 = \\langle 0,1 \\rangle$)

-   *v* = ⟨2, 2⟩=2⟨1, 0⟩+2⟨0, 1⟩

<span>coordinate transformation in two dimensions</span>

-   When expressed in the transformed coordinate system, we refer to *v*<sup>′</sup>

-   *v*<sup>′</sup> = ⟨*v*<sub>1</sub>cos*θ* + *v*<sub>2</sub>sin*θ*, −*v*<sub>1</sub>sin*θ* + *v*<sub>2</sub>cos*θ*⟩

-   $v^\\prime = \\langle 2\\sqrt{2}, 0 \\rangle$

-   We can recover the original vector from the transformed coordinates:

-   $v = v\_1^\\prime \\hat{e}\_1^\\prime + v\_2^\\prime \\hat{e}\_2^\\prime$

-   (note: $\\hat{e}\_1^\\prime=\\langle \\frac{\\sqrt{2}}{2},\\frac{\\sqrt{2}}{2} \\rangle$ and $\\hat{e}\_2^\\prime = \\langle -\\frac{\\sqrt{2}}{2},\\frac{\\sqrt{2}}{2} \\rangle$)

-   $v = 2\\sqrt{2}\\langle \\frac{\\sqrt{2}}{2},\\frac{\\sqrt{2}}{2} \\rangle, 0 \\langle -\\frac{\\sqrt{2}}{2},\\frac{\\sqrt{2}}{2} \\rangle = \\langle 2, 2 \\rangle$

<span>general coordinate transformation</span>

-   Coordinate transformation can become much more complicated in three dimensions, and with higher-order tensors

-   It is convenient to define a general form of the coordinate transformation in index notation

-   We define *Q*<sub>*i**j*</sub> as the cosine of the angle between the *x*<sub>*i*</sub><sup>′</sup> axis and the *x*<sub>*j*</sub> axis.

-   This is also referred to as the “direction cosine”
    *Q*<sub>*i**j*</sub> = cos(*x*<sub>*i*</sub><sup>′</sup>, *x*<sub>*j*</sub>)

<span>general coordinate transformation</span>

-   We can use this form on our 2D transformation example
    $$\\begin{aligned}
            Q\_{ij} &= \\cos (x\_i^\\prime, x\_j)\\\\ &= \\begin{bmatrix}
            \\cos (x\_1^\\prime, x\_1) & \\cos (x\_1^\\prime, x\_2)\\\\
            \\cos (x\_2^\\prime, x\_1) & \\cos (x\_2^\\prime, x\_2)
            \\end{bmatrix}\\\\ &= \\begin{bmatrix}
            \\cos \\theta & \\cos (90-\\theta)\\\\
            \\cos (90+\\theta) & \\cos \\theta
            \\end{bmatrix} \\\\ &= \\begin{bmatrix}
            \\cos \\theta & \\sin \\theta \\\\
            -\\sin \\theta & \\cos \\theta
            \\end{bmatrix}
            \\end{aligned}$$

<span>general coordinate transformation</span>

-   We can transform any-order tensor using *Q*<sub>*i**j*</sub>

-   Vectors (first-order tensors): *v*<sub>*i*</sub><sup>′</sup> = *Q*<sub>*i**j*</sub>*v*<sub>*j*</sub>

-   Matrices (second-order tensors): *σ*<sub>*m**n*</sub><sup>′</sup> = *Q*<sub>*m**i*</sub>*Q*<sub>*n**j*</sub>*σ*<sub>*i**j*</sub>

-   Fourth-order tensors: *C*<sub>*i**j**k**l*</sub><sup>′</sup> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*Q*<sub>*k**o*</sub>*Q*<sub>*l**p*</sub>*C*<sub>*m**n**o**p*</sub>

<span>general coordinate transformation</span>

-   We can similarly use *Q*<sub>*i**j*</sub> to find tensors in the original coordinate system

-   Vectors (first-order tensors): *v*<sub>*i*</sub> = *Q*<sub>*j**i*</sub>*v*<sub>*j*</sub><sup>′</sup>

-   Matrices (second-order tensors): *σ*<sub>*m**n*</sub> = *Q*<sub>*i**m*</sub>*Q*<sub>*j**n*</sub>*σ*<sub>*i**j*</sub><sup>′</sup>

-   Fourth-order tensors: *C*<sub>*i**j**k**l*</sub> = *Q*<sub>*m**i*</sub>*Q*<sub>*n**j*</sub>*Q*<sub>*o**k*</sub>*Q*<sub>*p**l*</sub>*C*<sub>*m**n**o**p*</sub><sup>′</sup>

<span>general coordinate transformation</span>

-   We can derive some interesting properties of the transformation tensor, *Q*<sub>*i**j*</sub>

-   We know that *v*<sub>*i*</sub> = *Q*<sub>*j**i*</sub>*v*<sub>*j*</sub><sup>′</sup> and that *v*<sub>*i*</sub><sup>′</sup> = *Q*<sub>*i**j*</sub>*v*<sub>*j*</sub>

-   If we substitute (changing the appropriate indexes) we find:

-   *v*<sub>*i*</sub> = *Q*<sub>*j**i*</sub>*Q*<sub>*j**k*</sub>*v*<sub>*k*</sub>

-   We can now use the Kronecker Delta to substitute *v*<sub>*i*</sub> = *δ*<sub>*i**k*</sub>*v*<sub>*k*</sub> which gives

-   *δ*<sub>*i**k*</sub>*v*<sub>*k*</sub> = *Q*<sub>*j**i*</sub>*Q*<sub>*j**k*</sub>*v*<sub>*k*</sub>

Examples
========

<span>example</span>

(0,0,0) – (3,0,0) node\[below left\] <span>*x*<sub>1</sub></span>; (0,0,0) – (0,3,0) node\[right\] <span>*x*<sub>2</sub></span>; (0,0,0) – (0,0,3) node\[above\] <span>*x*<sub>3</sub></span>;

-   Find *Q*<sub>*i**j*</sub><sup>1</sup> for rotation of 60<sup>∘</sup> about *x*<sub>2</sub>

-   Find *Q*<sub>*i**j*</sub><sup>2</sup> for rotation of 30<sup>∘</sup> about *x*<sub>3</sub><sup>′</sup>

-   Find *e*<sub>*i*</sub><sup>′′</sup> after both rotations

<span>example</span>

(0,0,0) – (3,0,0) node\[below left\] <span>*x*<sub>1</sub></span>; (0,0,0) – (0,3,0) node\[right\] <span>*x*<sub>2</sub>, *x*<sub>2</sub><sup>′</sup></span>; (0,0,0) – (0,0,3) node\[above\] <span>*x*<sub>3</sub></span>; (0,0,0) – (2.6,0,1.5) node\[above\] <span>*x*<sub>3</sub><sup>′</sup></span>; (0,0,0) – (1.5,0,-2.6) node\[below left\] <span>*x*<sub>1</sub><sup>′</sup></span>; <span>above left</span><span>*θ*<sub>1</sub></span> <span>below left</span><span>*θ*<sub>1</sub></span>

<span>example</span>

(0,0,0) – (3,0,0) node\[below left\] <span>*x*<sub>1</sub></span>; (0,0,0) – (0,3,0) node\[right\] <span>*x*<sub>2</sub>, *x*<sub>2</sub><sup>′</sup></span>; (0,0,0) – (0,0,3) node\[above\] <span>*x*<sub>3</sub></span>; (0,0,0) – (2.6,0,1.5) node\[above\] <span>*x*<sub>3</sub><sup>′</sup>, *x*<sub>3</sub><sup>′′</sup></span>; (0,0,0) – (1.5,0,-2.6) node\[below left\] <span>*x*<sub>1</sub><sup>′</sup></span>; <span>above left</span><span>*θ*<sub>1</sub></span> <span>below left</span><span>*θ*<sub>1</sub></span>; ; (0,0,0) – (2.6,1.5,0) node\[below right\] <span>*x*<sub>1</sub><sup>′′</sup></span>; (0,0,0) – (-1.5,2.6,0) node\[below right\] <span>*x*<sub>2</sub><sup>′′</sup></span>; ; ;

<span>example</span>

-   *Q*<sub>*i**j*</sub><sup>1</sup> = cos(*x*<sub>*i*</sub><sup>′</sup>, *x*<sub>*j*</sub>)

-   *Q*<sub>*i**j*</sub><sup>2</sup> = cos(*x*<sub>*i*</sub><sup>′′</sup>, *x*<sub>*j*</sub><sup>′</sup>)
    $$Q\_{ij}^1 = \\begin{bmatrix}
            \\cos 60 & \\cos 90 & \\cos 150\\\\
            \\cos 90 & \\cos 0 & \\cos 90\\\\
            \\cos 30 & \\cos 90 & \\cos 60
            \\end{bmatrix}$$
    $$Q\_{ij}^2 = \\begin{bmatrix}
            \\cos 30 & \\cos 60 & \\cos 90\\\\
            \\cos 120 & \\cos 30 & \\cos 90\\\\
            \\cos 90 & \\cos 90 & \\cos 0
            \\end{bmatrix}$$

<span>example</span>

-   We now use *Q*<sub>*i**j*</sub> to find $\\hat{e}\_i^\\prime$ and $\\hat{e}\_i^{\\prime \\prime}$

-   First, we need to write $\\hat{e}\_i$ in a manner more consistent with index notation

-   We will indicate axis direction with a superscript, e.g. $\\hat{e}\_1 = e\_i^1$

-   *e*<sub>*i*</sub><sup>′</sup> = *Q*<sub>*i**j*</sub><sup>1</sup>*e*<sub>*j*</sub>

-   *e*<sub>*i*</sub><sup>′′</sup> = *Q*<sub>*i**j*</sub><sup>2</sup>*e*<sub>*j*</sub><sup>′</sup>

-   How do we find *e*<sub>*i*</sub><sup>′′</sup> in terms of *e*<sub>*i*</sub>?

-   *e*<sub>*i*</sub><sup>′′</sup> = *Q*<sub>*i**j*</sub><sup>2</sup>*Q*<sub>*j**k*</sub><sup>1</sup>*e*<sub>*k*</sub>

anisotropic elasticity
======================

<span>stiffness</span>

-   In 3D, Hooke’s Law for linearly elastic materials is
    *σ*<sub>*i**j*</sub> = *C*<sub>*i**j**k**l*</sub>*ϵ*<sub>*k**l*</sub>

-   For isotropic materials, *C*<sub>*i**j**k**l*</sub> can be expressed in terms of two constants

-   In general (anisotropic materials) more constants are needed and we use the full tensor

<span>engineering notation</span>

-   Fourth-order tensors are cumbersome to write, we often use engineering notation

-   *σ* and *ϵ* are written as vectors and *C*<sub>*i**j**k**l*</sub> is written as a matrix.

-   NOTE: Although *σ*<sub>*i**j*</sub>, *ϵ*<sub>*i**j*</sub> and *C*<sub>*i**j**k**l*</sub> are tensors, their counterparts in engineering notation are NOT formal tensors

-   This means that the usual transformation laws do not apply

&lt;handout:0&gt;<span>engineering notation</span> Expand *σ*<sub>*i**j*</sub> = *C*<sub>*i**j**k**l*</sub>*E*<sub>*k**l*</sub> on board for 1-2 terms

<span>engineering notation</span>
$$\\begin{bmatrix}
        \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
        \\end{bmatrix}
        = \\begin{bmatrix}
        C\_{1111} & C\_{1122} & C\_{1133} & C\_{1123} & C\_{1113} & C\_{1112} \\\\
        C\_{1122} & C\_{2222} & C\_{2233} & C\_{2223} & C\_{1322} & C\_{1222} \\\\
        C\_{1133} & C\_{2233} & C\_{3333} & C\_{2333} & C\_{1333} & C\_{1233} \\\\
        C\_{1123} & C\_{2223} & C\_{2333} & C\_{2323} & C\_{1323} & C\_{1223} \\\\
        C\_{1113} & C\_{1322} & C\_{1333} & C\_{1323} & C\_{1313} & C\_{1213} \\\\
        C\_{1112} & C\_{1222} & C\_{1233} & C\_{1223} & C\_{1213} & C\_{1212}
        \\end{bmatrix}\\begin{bmatrix}
        E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
        \\end{bmatrix}$$

<span>compliance</span>
$$\\begin{bmatrix}
    E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
    \\end{bmatrix}
    = \\begin{bmatrix}
    S\_{1111} & S\_{1122} & S\_{1133} & S\_{1123} & S\_{1113} & S\_{1112} \\\\
    S\_{1122} & S\_{2222} & S\_{2233} & S\_{2223} & S\_{1322} & S\_{1222} \\\\
    S\_{1133} & S\_{2233} & S\_{3333} & S\_{2333} & S\_{1333} & S\_{1233} \\\\
    S\_{1123} & S\_{2223} & S\_{2333} & S\_{2323} & S\_{1323} & S\_{1223} \\\\
    S\_{1113} & S\_{1322} & S\_{1333} & S\_{1323} & S\_{1313} & S\_{1213} \\\\
    S\_{1112} & S\_{1222} & S\_{1233} & S\_{1223} & S\_{1213} & S\_{1212}
    \\end{bmatrix}\\begin{bmatrix}
    \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
    \\end{bmatrix} + \\begin{bmatrix}
    \\alpha\_{11} \\\\ \\alpha\_{22} \\\\ \\alpha\_{33} \\\\ 2\\alpha\_{23} \\\\ 2\\alpha\_{13} \\\\ 2\\alpha\_{12}
    \\end{bmatrix}\\Delta T$$

<span>physical interpretation</span>

-   If we now consider the case of uniaxial tension, we see that
    $$\\begin{aligned}
            E\_{11} &= S\_{1111} \\sigma\_{11}\\\\
            E\_{22} &= S\_{1122} \\sigma\_{11}\\\\
            E\_{33} &= S\_{1133} \\sigma\_{11}\\\\
            2E\_{23} &= S\_{1123} \\sigma\_{11}\\\\
            2E\_{13} &= S\_{1113} \\sigma\_{11}\\\\
            2E\_{12} &= S\_{1112} \\sigma\_{11}
            \\end{aligned}$$

-   *S*<sub>1111</sub> is familiar, acting like 1/*E*<sub>*Y*</sub>

<span>poisson’s ratio</span>

-   For isotropic materials we defined Poisson’s ratio as *ν* = −*E*<sub>22</sub>/*E*<sub>11</sub>

-   For anisotropic materials, we can have a different Poisson’s ratio acting in different directions

-   We define *ν*<sub>*i**j*</sub> = −*E*<sub>*j**j*</sub>/*E*<sub>*i**i*</sub> (with no summation), the ratio of the transverse strain in the *j* direction when stress is applied in the *i* direction

-   For this example we can find *ν*<sub>12</sub> and *ν*<sub>13</sub> as
    $$\\begin{aligned}
            \\nu\_{12} &= -E\_{22}/E\_{11} = -S\_{1122}/S\_{1111}\\\\
            \\nu\_{13} &= -E\_{33}/E\_{11} = -S\_{1133}/S\_{1111}
            \\end{aligned}$$

<span>poisson’s ratio</span>

-   Note that we cannot, in general, say that *ν*<sub>12</sub> = *ν*<sub>21</sub>

-   However, due to the symmetry of the stiffness/compliance tensors, we know that
    $$\\begin{aligned}
            \\nu\_{21} E\_{x} &= \\nu\_{12} E\_{y}\\\\
            \\nu\_{31} E\_{x} &= \\nu\_{13} E\_{z}\\\\
            \\nu\_{32} E\_{y} &= \\nu\_{23} E\_{z}
            \\end{aligned}$$

-   Where *E*<sub>*x*</sub> refer’s to the Young’s Modulus in the *x*-direction, etc.

<span>shear coupling coefficients</span>

-   An unfamiliar effect is that shear strains are introduced from a normal stress

-   We define shear coupling coefficients as *η*<sub>1112</sub> = *η*<sub>16</sub> = −2*E*<sub>12</sub>/*E*<sub>11</sub> due to *σ*<sub>11</sub>

-   These coupling terms can also effect shear strain in a different plane from the applied shear stress

-   Like the Poisson’s ratio, these are not entirely independent
    *η*<sub>61</sub>*E*<sub>*x*</sub> = *η*<sub>16</sub>*G*<sub>6</sub>

-   Where *G*<sub>6</sub> is the shear modulus in the 12 plane

<span>shear coupling coefficients</span>

-   Shear coupling coefficients are sometimes placed in two groups

-   Coefficients of mutual influence relate shear stress to normal strain and normal stress to shear strain

-   Chentsov coefficients relate shear stress in one plane to shear strain in another plane

-   In general we can say
    *η*<sub>*n**m*</sub>*E*<sub>*m*</sub> = *η*<sub>*m**n*</sub>*G*<sub>*n*</sub>  (*m* = 1, 2, 3)  (*n* = 4, 5, 6)
     and
    *η*<sub>*n**m*</sub>*G*<sub>*m*</sub> = *η*<sub>*m**n*</sub>*G*<sub>*n*</sub>  (*m*, *n* = 4, 5, 6)  *m* ≠ *n*

<span>orthotropic symmetry</span>
$$\\begin{bmatrix}
    \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
    \\end{bmatrix}
    = \\begin{bmatrix}
    C\_{1111} & C\_{1122} & C\_{1133} & 0 & 0 & 0 \\\\
    C\_{1122} & C\_{2222} & C\_{2233} & 0 & 0 & 0 \\\\
    C\_{1133} & C\_{2233} & C\_{3333} & 0 & 0 & 0 \\\\
    0 & 0 & 0 & C\_{2323} & 0 & 0 \\\\
    0 & 0 & 0 & 0 & C\_{1313} & 0 \\\\
    0 & 0 & 0 & 0 & 0 & C\_{1212}
    \\end{bmatrix}\\begin{bmatrix}
    E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
    \\end{bmatrix}$$

<span>transversely isotropic symmetry</span>
$$\\begin{bmatrix}
    \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
    \\end{bmatrix}
    = \\begin{bmatrix}
    C\_{1111} & C\_{1122} & C\_{1133} & 0 & 0 & 0 \\\\
    C\_{1122} & C\_{1111} & C\_{1133} & 0 & 0 & 0 \\\\
    C\_{1133} & C\_{1133} & C\_{3333} & 0 & 0 & 0 \\\\
    0 & 0 & 0 & C\_{1313} & 0 & 0 \\\\
    0 & 0 & 0 & 0 & C\_{1313} & 0 \\\\
    0 & 0 & 0 & 0 & 0 & 1/2(C\_{1111}-C\_{2222})
    \\end{bmatrix}\\begin{bmatrix}
    E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
    \\end{bmatrix}$$

<span>isotropic symmetry</span>
$$\\begin{bmatrix}
    \\sigma\_{11}\\\\ \\sigma\_{22} \\\\ \\sigma\_{33} \\\\\\sigma\_{23} \\\\ \\sigma\_{13} \\\\ \\sigma\_{12}
    \\end{bmatrix}
    = \\frac{E}{(1+\\nu)(1-2\\nu)}\\begin{bmatrix}
    1-\\nu & \\nu & \\nu & 0 & 0 & 0 \\\\
    \\nu & 1-\\nu & \\nu & 0 & 0 & 0 \\\\
    \\nu & \\nu & 1-\\nu & 0 & 0 & 0 \\\\
    0 & 0 & 0 & \\frac{1}{2}(1-2\\nu) & 0 & 0 \\\\
    0 & 0 & 0 & 0 & \\frac{1}{2}(1-2\\nu) & 0 \\\\
    0 & 0 & 0 & 0 & 0 & \\frac{1}{2}(1-2\\nu)
    \\end{bmatrix}\\begin{bmatrix}
    E\_{11}\\\\ E\_{22} \\\\ E\_{33} \\\\2E\_{23} \\\\ 2E\_{13} \\\\ 2E\_{12}
    \\end{bmatrix}$$

<span>next class</span>

-   Next class we will develop transformation laws for engineering stress/strain and stiffness


