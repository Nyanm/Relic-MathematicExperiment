% configurations for ball
radius = 5;
granularity = 20;

% configurations for plot
frame = 30;
duration = 2;

% rotate axis
axis_a = [10, 10, 0];
axis_b = [0, 10, 10];
vn = (axis_b - axis_a)/norm(axis_b - axis_a);

% construct ball
pos = [20, 0, 0];
[x, y, z] = sphere(granularity);
x = x * radius + pos(1);
y = y * radius + pos(2);
z = z * radius + pos(3);

% remote ball mapping
[m, n] = size(x);
x_ = zeros(m, n);
y_ = zeros(m, n);
z_ = zeros(m, n);

% rotate
for ang = linspace(0, 2 * pi * duration, frame * duration)
    for m_ = 1 : m
        for n_ = 1 : n
            p = [x(m_, n_), y(m_, n_), z(m_, n_)];
            p_ = rotate_ang2(vn, ang, p);
            
            x_(m_, n_) = p_(1);
            y_(m_, n_) = p_(2);
            z_(m_, n_) = p_(3);
        end
    end
    mesh(x_, y_, z_);
    axis equal;
    axis([-30, 30, -30, 30, -30, 30]);
    pause(1 / frame);
end
