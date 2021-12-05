function r = nov_2_2(low, high)

    syms x;
    y = exp(2 * cos(x)) * cos(x);
    r = int(y, x, low, high);
    
end