class Person:
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender
    def introduce(self):
        print(f'My name is {self.name}, I am {self.age} years old and I am a {self.gender}')
name = input("Enter your name: ")
age = int(input("Enter your age: "))
gen = input("Input your gender: ")

pers = Person(name, age, gen)
pers.introduce()
