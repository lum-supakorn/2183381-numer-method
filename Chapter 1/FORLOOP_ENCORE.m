nsteps = 100;
sigma = 0;
for n = 1:nsteps
    sigma = sigma + ...
            (((-1)^n)/(((2*n) - 1)^2)) * ...
            exp(-((((2*n) - 1)^2) * t) / 4) * ...
            sin((((2*n) - 1) * x)/2);
end

sigma