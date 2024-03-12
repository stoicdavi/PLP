def large_power(base, exponent):
    if pow(base, exponent) > 5000:
        return True
    else: return False
base = int(input("Enter base number"))
exp = int(input("Enter exponent"))
ans = large_power(base, exp)
print(ans)
