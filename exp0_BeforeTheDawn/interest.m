function year = interest(principal)
    year = 0;
    sum = principal;
    percentage = 1.0425;
    while sum < (2 * principal)
        sum = sum * percentage;
        year = 1 + year;
    end
end