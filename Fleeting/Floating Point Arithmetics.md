20261007133825

Tags:

Non-integer numbers are represented in *Matlab* in terms of floating point numbers. 
## + IEEE Floating Point Standard +
The floating point format used by everyone is the IEEE standard, a format that denotes how numbers are stored in *binary*. A floating point number takes up either 32, 64, or 80 bits, representing single, double, and long double precision. The following table illustrates how the bits are utilized for each precision

| Precision   | Sign | Exponent | Mantissa |
| ----------- | ---- | -------- | -------- |
| single      | 1    | 8        | 23       |
| double      | 1    | 11       | 52       |
| long double | 1    | 15       | 64       |
There are three components to a floating point number, the sign, the exponent, and the mantissa. The sign denotes positive or negative, the exponent denotes the number of bits to shift, and the mantissa denotes the significant digits used. For example, the number 9 in binary is 1001, so in a floating point number, it is denoted as $+1.001 \times 2^{3}$, given that it needs to be shifted over by 3 significant digits. 
### ++ The Machine Epsilon ++
The machine epsilon, $\epsilon_{\text{mach}}$ , is defined as the distance between 1 and the smallest floating point number greater than 1. In double precision, it is $2^{-52}$. 
## + Errors +
Due to the nature of binary, certain numbers cannot be represented fully with the precision level. Hence, there will be a degree of error with many operations. There are two types of errors in this sense, *absolute* and *relative*. Absolute error is calculated as $|x_{c} - x|$ and relative error is calculated as $\frac{|x_{c} - x|}{|x|}$, where $x_{c}$ is the computed value and $x$ is the exact value. 
## + Loss of Significance +
The loss of significant values is caused by previously mentioned errors in the computed values. They could, also be caused by the digit precision. Say there's a three decimal digit computer and let $\sqrt{ 9.01 } - 3$ be the value getting calculated. Normally, the correct answer would be around 0.0016662, but a three digit computer is being used, so $\sqrt{ 9.01 }$ would be rounded to 3. The answer would contain no correct significant digits. 
### ++ Correction for Loss ++
There is a way of correcting for this loss of significance. By representing the original calculation as $\frac{(\sqrt{ 9.01 } - 3)(\sqrt{ 9.01 } - 3)}{\sqrt{ 9.01 } - 3}$, the result will equal $\frac{0.01}{6}$, or 0.00167, which has two correct significant digits. 
___
# References
[[Sauer - Numerical Analysis]]
