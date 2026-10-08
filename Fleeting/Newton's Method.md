20261007214333

Tags: [[Equation Solving]], [[Root Finding]]

Newton's method is another root finding algorithm, based in its use of *tangent lines*.
## + Procedure +
### ++ The Tangent Line ++
A tangent line to the function could be drawn using the derivative $f'(x_{0})$. The point on the tangent line that is meeting the function is $(x_{0}, f(x_{0}))$, so it's possible to formulate $y - f(x_{0}) = f'(x_{0})(x - x_{0})$. Given that the root has $y = 0$, the previous equation could be reformulated $f'(x_{0})(x - x_{0}) = 0 - f(x_{0}) \to x = x_{0} - \frac{f(x_{0})}{f'(x_{0})}$.
### ++ Steps ++
Start with some initial guess $x_{0}$. Define $x_{i + 1} = x_{i} - \frac{f(x_{i})}{f'(x_{i})}$. 
## + Convergence +
### ++ Quadratic Convergence ++
Newton's method is sometimes quadratically convergent. An iteration is quadratically convergent if $M = \lim_{ i \to \infty } \frac{e_{i + 1}}{e_{i}^{2}} < \infty$. Proving the quadratic convergence comes down to $g'(x)$
$$g'(x) = 1 - \frac{f'(x)^{2} - f(x)f''(x)}{f'(x)^{2}} = \frac{f(x)f''(x)}{f'(x)^{2}}$$
### ++ Linear Convergence ++

___
# References
[[Sauer - Numerical Analysis]]
