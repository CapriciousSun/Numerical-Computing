% n (input) : dimension of the square matrix
% A (output) : a matrix with rule a(ij) = |i - j| + 1

function formMatrix(n)

for i = 1:n
  for j = 1:n
    A(i, j) = abs(i - j) + 1;
  end
end

% Compute the numerical answer and calculate errors
x = ones(n, 1);
b = A * x;
xa = A \ b;
RFE = max(abs(x - xa));
RBE = max(abs(b - A * xa));
EMF = (RFE / max(x)) / (RBE/max(b));
kappa = sum(max(A)) * sum(max(abs(inv(A))));

fprintf(' n=%5d : RFE=%8.2e RBE=%8.2e EMF=%8.2e kappa(A)=%8.2e\n',n,RFE,RBE,EMF,kappa);

A = zeros(10);