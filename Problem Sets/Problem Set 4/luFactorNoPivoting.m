function [L, U] = luFactorNoPivoting(A)
n = height(A);
U = zeros(n, n);
% Go row by row and factor out the forward most value until a clean
% diagonal is formed. 
for i = 1:n
  U(i, i) = 1;
  for j = i+1:n
    mult = A(j, i) / A(i, i);
    A(j, i:n) = A(j, i:n) - A(i, i:n) * mult;
    U(j, i) = mult;
  end
end
L = A;