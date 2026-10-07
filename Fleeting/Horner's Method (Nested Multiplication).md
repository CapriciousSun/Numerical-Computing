20261007125501

Tags:

Horner's method is one way in which a *polynomial* could be evaluated with. 
## + Procedure +
Say there's some polynomial $P(x) = 2x^{4} + 3x^{3} - 3x^{2} + 5x - 1$, nested multiplication would evaluate it from the inside out. Start by reformulating the polynomial to $-1 + x(5 - 3x + 3x^{2} + 2x^{3})$, and repeat that process.
$$\begin{gather*}
P(x) = -1 + x(5 - 3x + 3x^{2} + 2x^{3}) \\
= -1 + x(5 - x(3 + 3x + 2x^{2})) \\
= -1 + x(5 - x(3 + x(3 + 2x)))
\end{gather*}$$
Say this polynomial is being evaluated for $x = \frac{1}{2}$, start evaluating from the inside out. 
$$\begin{gather*}
\text{multiply } \frac{1}{2} * 2, \text{add } 3 \to 4 \\
\text{multiply } \frac{1}{2} * 4, \text{add } -3 \to -1 \\
\text{multiply } \frac{1}{2} * -1, \text{add } 5 \to \frac{9}{2} \\
\text{multiply } \frac{1}{2} * \frac{9}{2}, \text{add } -1 \to \frac{5}{4}
\end{gather*}$$
### ++ Base Points ++
Base points are used when a more general form to solving polynomials are needed. So the original nested $P(x)$ would look like $-1 + (x - r_{1})(5 - (x - r_{2})(3 + (x - r_{3})(3 + (x - r_{4})2)))$ where $r_{1}$, $r_{2}$, $r_{3}$, and $r_{4}$ are the base points. Setting all the base points to 0 would get the evaluation of the original function. 
___
# References
[[Sauer - Numerical Analysis]]