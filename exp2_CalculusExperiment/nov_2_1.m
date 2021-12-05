function r = nov_2_1(a, x_index)

    x = x_index * a;
    syms x_;

    y = a * exp(x_) / sqrt(a + x_ ^ 2);
    ddy = diff(y, x_, 2);
    r = subs(ddy, x_, x);
    
end