import 'dart:io';
class utils{
  //arrow function to add two numbers
  int add_numbers(int num1, int num2) => num1 + num2;

  //function to print numbers from 1 to 10
  void print_numbers(){
    for(int i = 1; i <= 10; i++){
      print(i);
    }
  }
  //function to check for the string entered and output the string
  void check_string(String str){
    
    if (str == "hello"){
      print("Hello World! This is Dart Programming Language! with David!");
    }
    else if (str == "world"){
      print("World is a beautiful place!");
    }
    else if (str == 'Kenya'){
      print('Kenya is a beautiful country!');
    }
    else{
      print("Invalid string!");
    }
  }
}


void main(){
  utils obj = new utils();
  print("Enter the first number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter the second number: ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("The sum of $num1 and $num2 is: ${obj.add_numbers(num1, num2)}");

  //print numbers from 1 to 10
  obj.print_numbers();
  //check for the string entered
  print("Enter a string: ");
  String str = stdin.readLineSync()!;
  obj.check_string(str);
}