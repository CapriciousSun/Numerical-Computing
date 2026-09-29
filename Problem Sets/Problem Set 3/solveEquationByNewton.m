% f (input) : function f(x)
% fx (input) : function that defines f'(x)
% x0 (input) : initial guess
% tol (input) : convergence tolerance
% maxIterations (input) : maximum number of iterations
% xc (input) : approximate solution

function [xc] = solveEquationByNewton( f, fx, x0, tol, maxIterations )
k = 1;
xc(k) = x0;
fc(k) = f(xc(k));
fxc(k) = fx(xc(k));
while abs(fc(k)) > tol
  if k > maxIterations
    error('Maximum number of iterations exceeded.');
  end
  
  if( k==1 ) % do not print p first time
    k = k + 1;
    xc(k) = xc(k - 1) - fc(k - 1) / fxc(k - 1);
    fc(k) = f(xc(k));
    fxc(k) = fx(xc(k));
    ratio = fc(k) / fc(k - 1);
    R(k) = abs(fc(k)) / abs(fc(k - 1));
    fprintf('Newton: it=%2d: x=%13.6e f(x)=%9.2e ratio=%9.2e\n',k,xc,fc,ratio);
  else
    k = k + 1;
    xc(k) = xc(k - 1) - fc(k - 1) / fxc(k - 1);
    fc(k) = f(xc(k));
    fxc(k) = fx(xc(k));
    ratio = fc(k) / fc(k - 1);
    R(k) = abs(fc(k)) / abs(fc(k - 1));
    p = log(R(k)) / log(R(k - 1));
    fprintf('Newton: it=%2d: x=%13.6e f(x)=%9.2e ratio=%9.2e p=%4.2f\n',k,xc,fc(k),ratio, p);
  end
end
