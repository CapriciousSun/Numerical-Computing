% g (input) : function handle
% x0 (input) : starting guess
% k (input) : number of iteration steps
% xc (output) : Approximate solution
function xc=fpi(g, x0, k)
x(1)=x0;
for i=1:k
  x(i+1)=g(x(i));
end
xc=x(k+1);