% Numerical Methods
% Chapter: 1
% Exercise: 16 2d Edition
% -----
% Author: Supakorn Suttiruang (Lum)
% Date: 26 Aug 2019

clear
clc

x = 0:0.01:pi;
t_range = 1:0.1:20;
nsteps = 100;

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
    [X, Y] = meshgrid(x, x');
    Z = repmat(temp_dist, numel(temp_dist), 1);
    
    % Surface
    subplot(1, 2, 1);
    surf(X, Y, Z);
    title(sprintf("Temp. distribution at t = %d", t));
    xlabel("x-direction");
    ylabel("Temperature");
    colormap hot
    colorbar;
    shading interp
    view(0, 90);
    
    % Line
    subplot(1, 2, 2);
    plot(x, temp_dist); hold off;
    title(sprintf("Temp. distribution at t = %d", t));
    xlabel("x-direction");
    ylabel("Temperature");
    ylim([0 4]);
    
    pause(0.1);
end