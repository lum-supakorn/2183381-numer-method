% Numerical Methods
% Chapter: 1
% Exercise: 3
% -----
% Author: Supakorn Suttiruang (Lum)
% Date: 20 Aug 2019

clear
clc

x = [0.1 0.5 1 5];
nsteps = [2 4 6 9 10 12];
exp_act = exp(x);

for nsteps_idx = 1:numel(nsteps)
    exp_est = zeros(1, numel(x));
    for idx = 1:numel(x)
        sum = 0;
        for i = 0:1:nsteps(nsteps_idx)
            sum = sum + (x(idx)^i) / factorial(i);
        end
        exp_est(idx) = sum;
    end
    subplot(2, round(numel(nsteps)/2), nsteps_idx);
    plot(x, exp_act); hold on;
    plot(x, exp_est, '-or');
    title(sprintf("# of terms = %d", nsteps(nsteps_idx)));
    legend("Exact solution", "Numerical solution");
end