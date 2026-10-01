function x = luSolveNoPivoting(b, L, U)
n = height(L);

% This part of the program takes the upper matrix and multiplies b by it to
% get to the properly augmented form
for j = 1:n-1
  for i = j+1:n
    b(i) = b(i) - b(j) * U(i, j);
  end
end

% This part takes the new b and solves the system using the lower matrix
for i = n:-1:1
  for j = i + 1:n
    b(i) = b(i) - L(i, j) * x(j);
  end
  x(i) = b(i) / L(i, i);
end
