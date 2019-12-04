% Numerical Methods
% Chapter: 1
% Exercise: 6a
% -----
% Author: Supakorn Suttiruang (Lum)
% Date: 21 Aug 2019

clear
clc

n = 1000;
sign = 1; % Initial sign
sum = 0;

for i = 1:n
    sum = sum + (sign * (1 / i));
    sign = -sign;
end

fprintf("%16s %16s %16s\n", "Exact", "Numer", "Error");
fprintf("%16.10f %16.10f %16.10f\n", log(2), sum, abs(log(2) - sum));