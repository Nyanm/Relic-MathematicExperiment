function mat_5_4 = matrix_5_4()
    mat_5_4 = ones(5, 4);
    for x = 1:5
        for y = 1:4
            mat_5_4(x, y) = 100 * x + y;
        end
    end
    return
end 