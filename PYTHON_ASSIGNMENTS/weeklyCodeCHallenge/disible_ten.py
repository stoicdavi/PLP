def divisible_by_ten(num):
    if num % 10 == 0:
        return True
    else:
        return False
while True:
    number = int(input("Enter a number youn want to check if divisble by 10 or 0 to quite: "))
    if number == 0:
        break
    ans = divisible_by_ten(number)
    print(ans)
