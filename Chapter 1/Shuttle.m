%  Program Shuttle
nsteps = 20; dt = 30;
%  Initial condition:
t(1) = 0.; v(1) = 0;
disp('    Time  Velocity')
for i=1:nsteps
    v(i+1) = v(i) + dt*(9.8 - .005*v(i));
    t(i+1) = t(i) + dt;
    fprintf('%8.0f  %8.0f\n', t, v)
end
plot(t,v,'-or'), hold on
%  Exact solution:
te = 0:30:600;
ve = 1960*(1.-exp(-.005*te));
plot(te,ve,'-b')
legend("Numerical Solution", "Exact Solution");