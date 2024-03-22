import 'dart:io';
import 'dart:convert';

// Step 1: Define an Interface (Abstract Class)
abstract class Animal {
 void makeSound();
}

// Step 2: Create a Class that Implements the Interface
class Dog implements Animal {
 @override
 void makeSound() {
    print('Woof!');
 }
}

// Step 3: Create a Class that Inherits from Another Class
class BullDog extends Dog {
 @override
 void makeSound() {
    print('Grrr!');
 }
}

// Step 4: Initialize an Instance of a Class with Data from a File
class DataLoader {
 static Future<List<String>> loadData(String fileName) async {
    List<String> data = [];
    try {
      final file = File(fileName);
      final contents = await file.readAsString();
      data = LineSplitter.split(contents).toList();
    } catch (e) {
      print("Couldn't read file");
    }
    return data;
 }
}

// Step 5: Implement a Method that Demonstrates the Use of a Loop
void main() async {
 // Initialize an instance of a class with data from a file
 List<String> data = await DataLoader.loadData('data.txt');
 print('Data from file:');
 for (var line in data) {
    print(line);
 }

 // Demonstrate the use of a loop
 print('\nAnimals making sounds:');
 List<Animal> animals = [Dog(), BullDog()];
 for (var animal in animals) {
    animal.makeSound();
 }
}
