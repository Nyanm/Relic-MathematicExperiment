def get_solution(threshold: int) -> list:
    res = []

    for a in range(1, threshold + 1):
        if not (a ** 2 - a) % 100:  # b is an integer
            if 1 <= (a ** 2 - a) // 100 <= threshold:
                res.append([a, (a ** 2 - a) // 100])

    return res