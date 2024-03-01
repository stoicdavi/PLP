person1 = {}
person1["Your Name"] = input("what name: ")
person1["Your age"] = input("How old are you: ")
person1['favourite Color'] = input("What is your favorite color?: ")
person1["Interests"] = input("What is your interests: ")
print("\n\tPrinting your information****")
for key, value in person1.items():
    print("{} {}".format(key, value))
