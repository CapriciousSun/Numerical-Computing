% g (input) : function handle
% x0 (input) : starting guess
% tol (input) : tolerance
% maxIterations (input) : the maximum number of iterations allowed
% xc (output) : Approximate solution
function xc=fpi2(g, x0, tol, maxIterations)
k = 1;
x(k) = x0;
x(k + 1) = g(x(k));

while abs(x(k + 1) - x(k)) >= tol
  if k > maxIterations
    error('Exceeded max iterations');
  end
  k = k + 1;

  x(k + 1)=g(x(k));
end
xc=x(k+1);
fprintf('fixedPoint: k=%2d xc=%18.12e |xc-xO|=%8.2e\n',k,xc,abs(xc-x0))