% sum = 0;
% nsteps = 100;
% for n = 1:nsteps
%     sum = sum + ...
%         1 / ((4 * n^2) - 1);
% end
% fprintf("For n = %3d, solution is %8.8f true %% error is %8.8f%%\n", ...
%     nsteps, sum, (100 * (0.5 - sum)/0.5));

syms n
S1 = symsum(1 / ((4 * n^2) - 1), n, 0, 200);
S1