def calculate_discount(price, discount_percentage):
    dis_percent = discount_percentage/100
    if dis_percent >= 0.2:
        newPrice = price * dis_percent
        return price - newPrice
    else:
        return price
p = int(input("Enter the good price: "))
d = int(input("Enter the discount: "))
print(calculate_discount(p,d))

