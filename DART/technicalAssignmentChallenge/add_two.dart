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

  //print numbers in reverse
  void print_numbers_reverse(){
    int number = 20;
    while (number >= 10){
      print(number);
      number--;
    }
  }
  //odd or even
  void odd_or_even(int num){
    if (num % 2 == 0){
      print("$num is an even number");
    }
    else{
      print("$num is an odd number");
    }
  }
  //list of numbers
  void list_of_numbers(List<int> numbers){
    int largest_number = numbers[0];
    for (int i = 1; i < numbers.length; i++){
      if (numbers[i] > largest_number){
        largest_number = numbers[i];
      }
    }
    print("The largest number is: $largest_number");
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
  print("Enter a string: 'hello', 'world' or 'Kenya':");
  String str = stdin.readLineSync()!;
  obj.check_string(str);

  //print numbers in reverse
  obj.print_numbers_reverse();

  //check if a number is odd or even
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  obj.odd_or_even(number);

  //list of numbers entr
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  obj.list_of_numbers(numbers);
  
}