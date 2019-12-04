x_L = 1.87;
x_R = 1.88;
x_M = (x_L + x_R) / 2;
epsilon = 1e-8;

while (abs(f(x_M)) > epsilon)
    if f(x_M)*f(x_R) > 0
        % x_M is on the positive side and is now the new x_R
        x_R = x_M;
    else
        % x_M is on the negative side and is now the new x_L
        x_L = x_M;
    end
    x_M = (x_L + x_R) / 2;
end

disp(x_M);