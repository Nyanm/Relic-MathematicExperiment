% dy/dt = 0.02(1-0.001y)y
% y(0) = 10

% Eular section
t_end = 1000;

t_1 = 0 : 0.1 : t_end;
t_2 = 0 : 10 : t_end;

y_1 = eular(t_1, 0.1);
y_2 = eular(t_2, 10);


plot(t_1, y_1);
hold on;
plot(t_2, y_2);
hold on;

% Ode23 section
[ode_t, ode_y] = ode23(@given_fun, [0, 1000], 10);
plot(ode_t, ode_y);
hold off;

legend('Eular(0.1)', 'Eular(10)', 'Ode23');