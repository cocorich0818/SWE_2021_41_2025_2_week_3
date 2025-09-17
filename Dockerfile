FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    seen = set()\n\
    while n != 1 and n not in seen:\n\
        seen.add(n)\n\
        sum_digits = 0\n\
        while n > 0:\n\
            sum_digits += (n % 10) ** 2\n\
            n //= 10\n\
        n = sum_digits\n\
    return n == 1\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]