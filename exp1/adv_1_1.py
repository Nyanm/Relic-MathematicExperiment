def get_material(ttl: int, fmt1: int, fmt2: int) -> list:
    res = []

    num1_max = ttl // fmt1
    for index in range(num1_max + 1):
        num2 = (ttl - (index * fmt1)) // fmt2
        remain = ttl - (fmt1 * index + fmt2 * num2)
        if remain < fmt1 and remain < fmt2:

            res.append([index, num2, remain])

    return res
    