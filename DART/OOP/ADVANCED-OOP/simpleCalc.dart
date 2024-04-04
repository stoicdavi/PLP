import 'dart:io';

void main() {
  
  double num1, num2;
  String operator;

  print("Welcome to Simple Calculator!");

  while (true) {

     print("Enter the first number: ");
     num1 = double.parse(stdin.readLineSync()!);
     
     print("Enter the second number: ");
     num2 = double.parse(stdin.readLineSync()!);
     
     print("Enter the operator (+, -, *, /, %): ");
     operator = stdin.readLineSync()!;
     
     double result = calculate(num1, num2, operator);
     print("Result of: $num1 $operator $num2 is $result");
     
     print("Do you want to perform another operation? (y/n)");
    String? response = stdin.readLineSync();
    if (response == 'n') {
      print("Thank you for using Simple Calculator!");
      break;
    }
  }
 
}

double calculate(double num1, double num2, String operator) {
  double result = 0;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print("Cannot divide by zero!");
        return 0;
      }
      result = num1 / num2;
      break;
    case '%':
      result = num1 % num2;
      break;
    default:
      print("Invalid operator!");
      break;
  }
  return result;
}