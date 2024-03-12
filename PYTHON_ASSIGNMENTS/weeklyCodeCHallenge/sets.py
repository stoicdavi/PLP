# sets
set1_input = input("Enter the elements of set1 separated by space: ")
set2_input = input("Enter the elements of set2 separated by space: ")
set1 = set(map(int, set1_input.split()))
set2 = set(map(int, set2_input.split()))
print("Set1: ", set1)
print("Set2: ", set2)
common_elements = set1.intersection(set2)
print("Common elements: {}".format(common_elements))
