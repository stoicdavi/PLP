from contextlib import contextmanager
import os
try:
    os.remove('my_file.txt')

    @contextmanager
    def open_file(file_name, mode):
        try:
            file = open(file_name, mode)
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

    with open_file("my_file.txt", "a") as file:
        file.write("\nI am an upcoming software developer and I am very ready to learn\n")
        file.write("I am an open-minded person, ready for any challenge\nI am a very hardworking person and open for collaboration\n")

    with open_file('my_file.txt', 'r') as file:
        print(file.read())

except FileNotFoundError:
    print("Error: The specified file could not be found.")

except PermissionError:
    print("Error: Permission denied while accessing the file.")

finally:
    print("File handling process completed.")