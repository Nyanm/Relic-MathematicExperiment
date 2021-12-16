x0 = [2; 0];
tn = 0 : 0.1 : 100;
[t, x] = ode23(@level_2, tn, x0);

plot(t, x(:, 1));
hold on;
plot(t, x(:, 2));

legend('x1', 'x2');

function dxdt = level_2(~, x)

    dxdt = [x(2);
            20 * (1 - x(1) ^ 2) * x(2) + 0.5 * x(1)]; 

end