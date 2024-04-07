import 'dart:io';
int add_numbers(int num1, int num2) => num1 + num2;
void main(){
  print("Enter the first number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter the second number: ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("The sum of $num1 and $num2 is: ${add_numbers(num1, num2)}");
}