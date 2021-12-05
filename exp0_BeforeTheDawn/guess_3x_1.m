function path = guess_3x_1(num)
    path = [];
    while num ~= 1
        path = [path, num];
        if mod(num, 2)
            num = num * 3 + 1;
        else
            num = num / 2;
        end
    end
    path = [path, 1];
end