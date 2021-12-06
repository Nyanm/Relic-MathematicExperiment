function p_ = rotate_ang(vn, ang, p)

    p_ = p * cos(ang) + (1 - cos(ang)) * dot(vn, p) * vn + sin(ang) * cross(vn, p);

end