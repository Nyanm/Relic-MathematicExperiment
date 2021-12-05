% Load and split data
data = load('guaidian.txt');
x = data(:, 1);
y = data(:, 2);

% interpolation
len_low = length(x);
x_gap = x(2) - x(1);
inter_factor = 20;
len_high = len_low * inter_factor;

x_ = linspace(x(1), x(end) + x_gap, len_high);
y_ = interp1(x, y, x_, 'spline');

% get derivative value & search for inflection point
ddy = zeros(len_high - 2, 1);
inflection = [];

for index = 1 : len_high - 2
    ddy(index) = (y_(index + 2) - 2 * y_(index + 1) + y_(index)) / ((x_gap / inter_factor) ^ 2);
    if index > 1
        if ddy(index) * ddy(index - 1) < 0
            inflection = [inflection; x_(index), y_(index)];
        end
    end
end

% plot
plot(x_, y_);
hold on;
scatter(inflection(:,1), inflection(:,2));
