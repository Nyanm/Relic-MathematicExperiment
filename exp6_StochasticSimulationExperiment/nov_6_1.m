function times = nov_6_1(num)

    times = zeros(1, num);
    cur_time = 0;
    for index = 1 : num
    
        cur_gap = 5 * rand(1);
        cur_time = cur_time + cur_gap;
        times(index) = cur_time;

    end
    
end