% Numerical Methods
% Chapter: 1
% Exercise: 11
% -----
% Author: Supakorn Suttiruang (Lum)
% Date: 26 Aug 2019

clear
clc

nsteps_range = [10 50 100];
for nsteps = nsteps_range
    sum = 0;
    for n = 1:nsteps
        sum = sum + ...
            1 / ((4 * n^2) - 1);
    end
    fprintf("For n = %3d, solution is %8.8f true %% error is %8.8f%%\n", ...
        nsteps, sum, (100 * (0.5 - sum)/0.5));
end