function [x0, y0] = nov_5_1(low, high)

    f = @(x)exp(x) .* x .* sin(x);
    [x0, y0r] = fminbnd(@(x)(-f(x)), low, high);
    y0 = -y0r;
    
end