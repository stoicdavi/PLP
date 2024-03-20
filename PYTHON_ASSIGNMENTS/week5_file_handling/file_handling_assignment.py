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

    

