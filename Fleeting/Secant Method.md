20261008085436

Tags:

The secant method is similar to [[Newton's Method|Newton's method]], with the main difference being the replacement of the derivative.
## + Procedure +
### ++ The Modification ++
Start with two initial guess $x_{0}$ and $x_{1}$. Instead of starting at index 0, the secant method starts at index 1. 
### ++ Steps ++
Given the two initial guess, apply $x_{i + 1} = x_{i} - \frac{f(x_{i})(x_{i} - x_{i - 1})}{f(x_{i}) - f(x_{i - 1})}$. 
## + Generalizations +

___
# References
[[Sauer - Numerical Analysis]]
