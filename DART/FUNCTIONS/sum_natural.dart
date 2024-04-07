// sum of natural number
import 'dart:io';
int sumOfNaturalNumber(int n){
  int sum = 0;
  for (int i = 0; i <= n; i++){
    sum += i;
  }
  return sum;
}
void main(){
  print("Enter the number of natural numbers you want to sum: ");
  int number = int.parse(stdin.readLineSync()!);
  int result = sumOfNaturalNumber(number);
  print("The sum of the first $number natural numbers is: $result");


  // for (int i = 0; i <= 10; i++){
  //     sum += i;
  //     print(i); 
  // }
  // print(sum);
  // while (i <= 10){
  //   i++;
  //   print(i);
  // }
  
}
