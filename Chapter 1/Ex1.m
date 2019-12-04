% Numerical Methods
% Chapter: 1
% Exercise: 1
% -----
% Author: Supakorn Suttiruang (Lum)
% Date: 20 Aug 2019

clear
clc

%  Program Shuttle
nsteps = 200; dt = [30 10 5 1];
%  Initial condition:
% t(1) = 0.; v(1) = 0;
disp('    Time  Velocity')

for dti = dt
    t(1) = 0; v(1) = 0;
    for i=1:nsteps
        v(i+1) = v(i) + dti*(9.8 - .005*v(i));
        t(i+1) = t(i) + dti;
        fprintf('%8.0f  %8.0f\n', t, v)
    end
    plot(t,v,'-'), hold on
end

%  Exact solution:
te = 0:30:1500;
ve = 1960*(1.-exp(-.005*te));
plot(te,ve,'-b')
legend("dt=30", "dt=10", "dt=5", "dt=1", "Exact Solution");