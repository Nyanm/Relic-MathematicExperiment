function list = fibonacci(length)

    list = [1, 1];
    if length < 1
        list = [];
        return
    elseif length < 3
        list = list(1:length);
        return
    else
        for index = 3:length
            cur = list(index - 1) + list(index - 2);
            list = [list cur];
        end
        return
    end
end