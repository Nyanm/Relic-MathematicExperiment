function x = nov_1_2(length)
    
    if length < 1
        x = [];
        return
    elseif length == 1
        x = [0];
        return
    elseif length == 2
        x = [0, 1];
        return
    else
        x = [0, 1];
        for index = 3:length
            x_n = x(index - 1) + 2 * x(index - 2);
            x = [x, x_n];
        end
        return
    end
    
end