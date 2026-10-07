20261007144134

Tags: [[Equation Solving]]

The bisection method looks is a method of solving equations based in root finding.
## + Procedure +
### ++ Root ++
The root of a function shall be denoted as $r$ and is defined as $x = r$ if $f(x) = 0$. Verifying that a root exists is done by checking the interval $[a, b]$. If one is positive and one is negative, that means at some point, the function would've crossed $y = 0$, verifying the existence of a root. 
### ++ Bracketing ++
Bracketing is the act of closing in on answer by reducing the search range until the range is the answer itself. Take the initial interval and find $\frac{a + b}{2}$. This will serve as $c$, which will effectively be the midpoint of the interval. If $f(a)f(c) < 0$, this means $[a, c]$ still include the root. Otherwise, $[c, b]$ include the root. Then, this process will be repeated until either the exact root is found or $\frac{b - a}{2}$ is less than some arbitrarily defined tolerance. 
### ++ Function Evaluations ++
There will be $n + 2$ function evaluations. 2 for the initial $fa = f(a)$ and $fb = f(b)$, and $n$ every subsequent $fc = f(c)$ evaluation. 
### + Steps +
Arbitrarily, a solution is defined as correct within $p$ decimal places if the error is less than $0.5 \times 10^{-p}$. So the amount of steps required for 6 decimal places is calculated by $\frac{1}{2^{n + 1}} < 0.5 \times 10^{-6}$, or $\frac{6}{\log_{10}2} \approx 19.9$. 
## + Error +
Given that every time the bracketing is $\frac{b - a}{2}$, the resulting solution error is $|x_{c} - r| < \frac{b - a}{2}$. 
___
# References
[[Sauer - Numerical Analysis]]
