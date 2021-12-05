function list = get_digits(num)
    list = [];
    char = int2str(num);
    for index = 1:length(char)
        list = [list, str2double(char(index))];
    end
    return
end