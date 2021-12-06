function p_ = rotate_ang2(vn, ang, p)
    
    nx = vn(1);
    ny = vn(2);
    nz = vn(3);
    cos_ang = cos(ang);
    cos_minus = 1 - cos_ang;
    sin_ang = sin(ang);

    T = [
        nx^2*cos_minus + cos_ang, nx*ny*cos_minus - nz*sin_ang, nx*nz*cos_minus + ny*sin_ang;
        nx*ny*cos_minus + nz*sin_ang, ny^2*cos_minus + cos_ang, ny*nz*cos_minus - nx*sin_ang;
        nx*nz*cos_minus - ny*sin_ang, ny*nz*cos_minus + nx*sin_ang, nz^2*cos_minus + cos_ang
    ];

    p_ = p * T;

end