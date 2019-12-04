% Numerical Methods
% Chapter: 1
% Exercise: 16
% -----
% Author: Supakorn Suttiruang (Lum)
% Date: 21 Aug 2019

clear
clc

x = 0:0.001:pi;
t_range = 1:0.1:20;
nsteps = 1000;

for i = 1:numel(t_range)
    % Temperature distribution calculation
    sigma = 0; % Summation term
    t = t_range(i);
    for n = 1:nsteps
         sigma = sigma + ...
                    (((-1)^n)/(((2*n) - 1)^2)) * ...
                    exp(-((((2*n) - 1)^2) * t) / 4) * ...
                    sin((((2*n) - 1) * x)/2);
    end
    sigma = (8/pi) * sigma;
    temp_dist = x + sigma; % Finish calculation
	plot(x, temp_dist); hold off;
    title(sprintf("Temp. distribution at t = %d", t));
    xlabel("x-direction");
    ylabel("Temperature");
    ylim([0 4]);
    pause(0.01);
end
            