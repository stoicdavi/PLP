from contextlib import contextmanager
import os
os.remove('my_file.txt')
@contextmanager
def open_file(file_name, mode):
    file = open(file_name, mode)
    try:
        yield file
    finally:
        file.close()

with open_file('my_file.txt', 'x') as file:
    pass

with open_file('my_file.txt', 'w') as file:
    name = "David"
    age = 22
    single = True
    file.write(f"\nHello, World!\nThis is your boy {name} age {age}\nVery Ready to learn and is single? {single}\n")
    
with open_file('my_file.txt', 'r') as file:
    print(file.read())