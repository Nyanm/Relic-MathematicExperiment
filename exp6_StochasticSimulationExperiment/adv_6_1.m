function [x1r, x2r, x3r] = adv_6_1(size)

    % Objective function
    f = @(x1, x2, x3) 2*(x1-1)^2 + 3*(x2-4)^2 + (x1*x2) + (2*x3-5)^2;
    % Limitations
    l1 = @(x1, x2, x3) 3*x1 + 2*x2 + 6*x3;
    l2 = @(x1, x2, x3) 4*x1 + 5*x2 + 2*x3;

    cur = 1e8;
    for index = 1: size
        % Generate random dots
        x1 = 15 * rand(1);
        x2 = 9 * rand(1);
        x3 = randi(26) - 1;
        % Calculate limits and result
        l1r = l1(x1, x2, x3);
        l2r = l2(x1, x2, x3);
        res = f(x1, x2, x3);

        % Validity check
        if l1r > 20
            continue;
        end
        if l2r > 21
            continue;
        end
        % Get minimal value
        if res < cur
            cur = res;
            x1r = x1;
            x2r = x2;
            x3r = x3;
        end
        
    end
end