//calcuate simple interest
// p * rate * time / 10
import 'dart:io';
double simpleInterest(double p, double r, double t){
  return (p * r * t) / 100;
}

void main(){
  print("Enter you principle : ");
  double principle = double.parse(stdin.readLineSync()!);
  print("Enter your rate: ");
  double rate = double.parse(stdin.readLineSync()!);
  print("Enter time: ");
  double time = double.parse(stdin.readLineSync()!);
  var i = simpleInterest(principle, rate, time);
  var si = principle + i;

  print("The interest is ${i}");
  print("The simple interest is ${si}");


}