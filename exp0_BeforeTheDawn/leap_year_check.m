function is_leap = leap_year_check(year)
    if (rem(year, 1000) && not(rem(year, 4)))
        is_leap = 1;
        return
    end
    is_leap = 0;
    return
end
