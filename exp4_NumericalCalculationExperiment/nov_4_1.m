function xp = nov_4_1(arg_3, arg_2, arg_1, arg_0)

    fun = @(x)arg_3 * x^3 + arg_2 * x^2 + arg_1 * x^1 + arg_0;
    xp = fzero(fun, [-1000, 1000]);
    
end