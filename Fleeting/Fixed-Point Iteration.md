20261007154050

Tags: [[Equation Solving]]

Fixed-point iteration is another method of solving equations, based on initial guesses and iterating on it.
## + Procedure +
### ++ Fixed Point ++
The fixed point in fixed-point iteration is defined as $r$ if $g(r) = r$.
### ++ Iterating ++
Start with some initial guess $x_{0}$. $x_{1}$ will in turn be defined as $g(x_{0})$. The hope is that as $x_{i + 1} = g(x_{i})$ continues, the closer $x$ will get to the answer. 
### + The Geometry of FPI +
### ++ Function Dependency ++
The function that is given to the fixed-point iteration determines how it converges. In fact, the form that the function is in could determine convergence. For example, the function $x^{3} + x - 1 = 0$ could be rewritten as either $x = 1 - x^{3}$, $x = \sqrt[3]{ 1 - x }$, or $x = \frac{1 + 2x^{3}}{1 + 3x^{2}}$. $x = 1 - x^{3}$ would not converge and would alternate between 0 and 1 after a few iterations, whereas $x = \sqrt[3]{ 1 - x }$ and $x = \frac{1 + 2x^{3}}{1 + 3x^{2}}$ would converge, with the later doing so faster than the former. 
### ++ Underlying Principle ++
Looking at a visual representation of FPI, a vertical line $y = x$ along with $y = g(x)$ would be graphed. 
## ++ Convergence ++
The convergence of fixed-point iteration is *linear*, although that is dependent on one condition, that being $\lim_{ i \to \infty } \frac{e_{i + 1}}{e_{i}} = S < 1$, or in the case of differentiable functions, if $|g'(r)| < 1$. This is why the initial guess is also important, because if $|g'(x_{0})| \geq 1$, then the *local convergence* of fixed-point iteration would not work.
___
# References
[[Sauer - Numerical Analysis]]
