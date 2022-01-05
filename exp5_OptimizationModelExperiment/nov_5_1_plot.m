low = 0;
high = 9;

f = @(x)exp(x) .* x .* sin(x);
x_ = linspace(low, high, (high - low) * 100);
y_ = f(x_);
plot(x_, y_)