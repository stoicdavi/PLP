my_list = []
while len(my_list) < 4:
    my_list.append(10)
    my_list.append(20)
    my_list.append(30)
    my_list.append(40)
print(my_list)
my_list.insert(2,15)
print("The new list after inserting 15: {}".format(my_list))
