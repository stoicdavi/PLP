import 'dart:math';
class Circle{
  double radius;
  Circle(this.radius);

  //factory method
  factory Circle.create(double radius){
    if (radius <= 0){
      throw ArgumentError("Radius must be a positive number");
    
    }
    return Circle(radius);
  }
  double calculateArea(){
    return pi * pow(radius, 2);
  }
}

void main(){
  try{
    var circle = Circle.create(7);
    print("The area of the circle is: ${circle.calculateArea()}");
  }
  catch(e){
    print(e);
  }
}