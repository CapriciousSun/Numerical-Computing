20261008085436

Tags:

The secant method is similar to [[Newton's Method|Newton's method]], with the main difference being the replacement of the derivative.
## + Procedure +
### ++ The Modification ++
Start with two initial guess $x_{0}$ and $x_{1}$. Instead of starting at index 0, the secant method starts at index 1. 
### ++ Steps ++
Given the two initial guess, apply $x_{i + 1} = x_{i} - \frac{f(x_{i})(x_{i} - x_{i - 1})}{f(x_{i}) - f(x_{i - 1})}$. 
## + Generalizations +
Much like [[Horner's Method (Nested Multiplication)|nested multiplication]], there are cases where a more general case to the method would be required. The secant method has 3 of these generalizations.
### ++ False Position ++
False position is similar to the [[Bisection Method|bisection method]], where an interval $[a, b]$ is given as a way to bracket the root. Assume that $f(a)f(b) < 0$. Define the next point $c = a - \frac{f(a)(a - b)}{f(a) - f(b)} = \frac{bf(a) - af(b)}{f(a) - f(b)}$. Then depending on the sign, swap out either $a$ or $b$. Repeat for an arbitrary amount of steps or $f(c) = 0$. The convergence rate is around linear, but could be slower for certain functions.
### ++ Inverse Quadratic Interpolation ++
Inverse quadratic interpolation is similar to the secant method but solves problems where $x = p(y)$. 
___
# References
[[Sauer - Numerical Analysis]]
