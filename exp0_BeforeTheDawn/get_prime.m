function list = get_prime(limit)
    if limit < 2 
        list = [];
        return
    end

    list = [2];
    for index = 2:limit
        is_prime = index;

        i_sqrt = sqrt(index) + 1;
        for prime = 2 : i_sqrt
            if ~(mod(index, prime))
                is_prime = [];
            end
        end
        list = [list, is_prime];
    end
end