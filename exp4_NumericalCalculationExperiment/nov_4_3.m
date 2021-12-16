

x = [20.05, 22.09, 24.13, 26.24, 28.11, 30.29, 32.09, 34.23, 36.23, 38.20, 40.27, 42.27, 44.07, 46.05, 48.47, 50.08];
y = [26.5, 10.46, 2.75, 3.53, 11.67, 29.98, 52.26, 87.19, 128.11, 176.24, 235.17, 300.25, 365.66, 445.1, 552.84, 631];

% Get expression and assigned data
acc_x = 25 : 0.4 : 60;
[p, v] = get_solution(x, y, acc_x);

% Get holistic function data
a = p(1);
b = p(2);
c = p(3);
hol_x = 0 : 0.1 : 70;
hol_y = zeros(length(hol_x), 1);
for index = 1 : length(hol_x)
    hol_y(index) = a * hol_x(index) ^ 2 + b * hol_x(index) + c;
end

% Plot them all
plot(hol_x, hol_y)
hold on;
plot(acc_x, v);
hold on;
plot(x, y, 'o');

function [p, v] = get_solution(x, y, acc_x)

    p = polyfit(x, y, 2);
    a = p(1);
    b = p(2);
    c = p(3);
    v = zeros(length(acc_x), 1);
    for index = 1 : length(acc_x)
        v(index) = a * acc_x(index) ^ 2 + b * acc_x(index) + c;
    end
    
end