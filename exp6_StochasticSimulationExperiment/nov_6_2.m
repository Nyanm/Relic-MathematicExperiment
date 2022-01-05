function [times, num] = nov_6_2(limit)

    times = [];
    cur_time = 0;
    num = 0;

    while cur_time <= limit
    
        cur_gap = 5 * rand(1);
        cur_time = cur_time + cur_gap;
        times = [times, cur_time];
        num = num + 1;

    end
    
end