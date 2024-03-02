my_list = []
#adding elements in a list
while len(my_list) < 4:
    my_list.append(10)
    my_list.append(20)
    my_list.append(30)
    my_list.append(40)
print(my_list)

#insert an value at endex 2
my_list.insert(2,15)
print("The new list after inserting 15: {}".format(my_list))

#delete the last element of the list
del my_list[-1]
print(f"The new list after removing the last element {my_list}")

#sorting the list in ascending order
my_list.sort()
print(f"Sorted list {my_list}")
