%
%  Solve the 1D heat equation using FE-CD2 
%  (forward-Euler + second-order accurate central difference)
%
%  u_t = kappa * u_xx ,  ax < x < bx,  0 < t <= tFinal
% 
%  u(ax,t) = gax(t), u(bx,t)=gbx(t), 
%  u(x,0) = u_0(x)
%
clear; clf;
% Set defaults for plotting 
fontSize=16; lineWidth=2; markerSize=8; 
set(0,'DefaultLineMarkerSize',markerSize);
set(0,'DefaultLineLineWidth',lineWidth);
set(0,'DefaultAxesFontSize',fontSize);
set(0,'DefaultLegendFontSize',fontSize);


numResolutions=4;      % number of grid refinements
plotOption=1;          % set to 1 for plotting
kappa=.1;              % coefficient of diffusion
kx=3.*pi;              % x-wave number in the IC and exact solution
ax=0.; bx=1.;          % space interval interval
tFinal=.5;             % final time 
cfl=.9;                % choose dt to be cfl*( maximum dt )

% exact solution function:
uexact = @(x,t) sin(kx*x).*exp(-kappa*(kx^2)*t);

% For testing, choose BC's and IC to match the true solution
gax = @(t) uexact(ax,t);    % BC RHS at x=ax
gbx = @(t) uexact(bx,t);    % BC RHS at x=bx
u0  = @(x)   uexact(x,0);   % IC function

for m=1:numResolutions % Loop over grid resolutions

  % --- Setup the grid ---
  Nx=10*2^m;      % number of space intervals
  dx=(bx-ax)/Nx;  % grid spacing 
  
  iax=1;          % index of boundary point at x=xa
  ibx=iax+Nx;     % index of boundary point at x=xb
  Ngx=ibx;        % number of grid points 
  
  i1x=iax+1;      % first interior pt in x 
  i2x=ibx-1;      % last interior pt in x 
  
  x = zeros(Ngx,1);  % grid 
  for( ix=1:Ngx )
    x(ix)=ax + (ix-iax)*dx; 
  end;

  
  % allocate space for the solution at two levels
  un   = zeros(Ngx,1);   % holds U_i^n
  unp1 = zeros(Ngx,1);   % holds U_i^{n+1}
  
  dt = cfl*(.5/kappa)/(1./dx^2);  % time step (adjusted below)
  Nt = round(tFinal/dt);          % number of time-steps 
  dt = tFinal/Nt;                 % adjust dt to reach tFinal exactly
  
  t=0.; 
  un = u0(x); % initial conditions

  I1=i1x:i2x; % range of indicies for interior
  % --- Start time-stepping loop ---
  cpu0=cputime;
  for( n=1:Nt )
    % update all interior points: 
    unp1(I1) = un(I1) +  (kappa*dt/dx^2)*( un(I1+1) -2.*un(I1) + un(I1-1) );
  
    t = n*dt;        % new time
    unp1(iax)=gax(t);  % BC at x=ax
    unp1(ibx)=gbx(t);  % BC at x=bx
    
    un=unp1; % Set un <- unp1 for next step
  
  end;
  % --- End time-stepping loop ---
  cpu = cputime-cpu0;
  
  ue = uexact(x,t);  % eval exact solution:
  errMax = max(max(abs(un-ue)));  % max-norm error
  err(m)=errMax;
  fprintf(' t=%4.2f CPU=%7.1e Nx=%3d Nt=%5d dt=%8.2e max-Err=%7.1e',t,cpu,Nx,Nt,dt,errMax);
  if( m>1 ) fprintf(' ratio=%4.2f rate=%4.2f\n',err(m-1)/err(m),log2(err(m-1)/err(m))); else fprintf('\n'); end;

  % plot results 
  if( plotOption==1 )
    figure(1);
    plot(x,un,'r-x', x,ue,'b-o'); 
    xlabel('x');  grid on; 
    legend('u','ue','Location','southeast');
    title(sprintf('Heat Equation, Nx=%d, t=%5.2f',Nx,t));
    if( m==2 )
      print('-depsc2','heatEquation1d_FE.eps'); % save as an eps file
    end

    figure(2)
    plot(x,un-ue,'b-x');
    xlabel('x');  grid on; 
    legend('u-ue');
    title(sprintf('Heat Equation, Error,  Nx=%d, t=%5.2f',Nx,t));

    if( m==2 )
      print('-depsc2','heatEquation1d_FE_err.eps'); % save as an eps file
    end
    pause
  end; 

end; % end for m (grid resolutions)

