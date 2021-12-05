function res = nov_1_3(threshold)

    res = [];

    for a = 1:threshold
        if mod((a ^ 2 - a), 100) == 0
            b = (a ^ 2 - a) / 100;
            if b >= 1 && b <= threshold
                res = [res; a, b];
            end
        end
    end

    return
end