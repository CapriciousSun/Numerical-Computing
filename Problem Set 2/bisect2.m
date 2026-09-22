% f (input) : function f(x)
% a, b (input) : interval to search that brackets the root, a<b and
% f(a)*f*b <= 0
% tol (input) : tolerance
% maxIterations (input) : maximum number of iterations allowed
% xc (output) : approximate solution

function xc = bisect2(f, a, b, tol, maxIterations)
if sign(f(a)) * sign(f(b)) >= 0
  error('f(a)f(b) < 0 not satisfied!') % ceases function
end

fa = f(a);
fb = f(b);
k = 0;

while abs((b - a) / 2) > tol
  if k > maxIterations
    error('Maximum number of iterations exceeded!')
  end
  k = k + 1;
  c = (a + b) / 2;
  fc = f(c);
  if fc == 0
    break
  end
  if sign(fc) * sign(fa) < 0
    b = c;
    fb = fc;
  else
    a = c;
    fa = fc;
  end
end
xc = (a + b) / 2;

fprintf('bisect: k=%2d, a=%11.4e f(a)=%8.2e b=%11.4e f(b)=%8.2e c=%14.7e\n', k, a, fa, b, fb, c)