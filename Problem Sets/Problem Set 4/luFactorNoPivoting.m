function [L, U] = luFactorNoPivoting(A)
n = height(A);
disp(A);
U = zeros(n, n);
for i = 1:n
  U(i, i) = 1;
  for j = i+1:n
    mult = A(j, i) / A(i, i);
    A(j, i:n) = A(j, i:n) - A(i, i:n) * mult;
    U(j, i) = mult;
  end
end
disp(U)
L = A;