function d = adv_3_1(p, a, b)
    if length(p) == 3 
        ab = b - a;
        ap = p - a;
        s = cross(ab, ap);
        d = norm(s) / norm(ab);
        return;
    elseif length(p) == 2
        la = b(2) - a(2);
        lb = a(1) - b(1);
        lc = a(1) * b(2) - a(2) * b(1);
        d = abs((la * p(1) + lb * p(2) + lc) / sqrt(la ^ 2 + lb ^ 2));
    else
        d = 0;
        return;
    end
end