function [res, profit] = adv_5_1()

    % max. f(x1, x2) = 17x1 + 15x2
    % 3x1 + 5x2 <= 150
    % 6x1 + 5x2 <= 160
    % 2x1 + 6x2 <= 180

    cr = [-17, -15];
    aeq = [];
    beq = [];

    a = [3, 5; 6, 5; 2, 6];
    b = [150; 160; 180];

    lb = [0; 0];
    ub = [inf; inf];

    res = linprog(cr, a, b, aeq, beq, lb, ub);
    profit = -cr * res;
    
end