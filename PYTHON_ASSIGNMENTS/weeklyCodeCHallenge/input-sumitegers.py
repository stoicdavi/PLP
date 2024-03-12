number = 0
while True:
    numbers = int(input("Enter a numbers you wish to add: "))
    number += numbers
    print("sum = {}".format(number))
    print("""would you like you to add another number?
           enter N or n to quit Y/y to proceed: """)
    option = input()
    if option == "N" or option == 'n':
        break
    else:
        continue
