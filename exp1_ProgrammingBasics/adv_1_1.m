function res = adv_1_1(ttl, fmt1, fmt2)

    res = [];
    num1_max = floor(ttl / fmt1);
    for index = 0:num1_max
        num2 = floor((ttl - (index * fmt1)) / fmt2);
        remain = ttl - (fmt1 * index + fmt2 * num2);
        if remain < fmt1 && remain < fmt2
            res = [res; index, num2, remain];
        end
    end
end