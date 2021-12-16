function y = eular(t, grind)
    y_0 = 10;

    duration = length(t);
    y = zeros(duration, 1);
    y(1) = y_0;

    for index = 2 : duration
        y_pre = y(index - 1);
        y(index) = y_pre + 0.02 * (1 - 0.001 * y_pre) * y_pre * grind;
    end

end