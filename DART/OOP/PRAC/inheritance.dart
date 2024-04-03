//parent class
class Vehicle{
  String brand;
  int year;
  Vehicle(this.brand, this.year);

  void displayinfo(){
    print("The vehicle information is Brand: ${this.brand} Year: ${this.year}");
  }
}

//inhreriting the Vehicle class
class Car extends Vehicle{
  //child propertiees
  String Model;
  String color;
  //Child constructor
  Car(String brand, int year, this.Model, this.color): super(brand, year);
void displayCarInfor(){
  print("The car information is Brand: ${this.brand} Year: ${this.year} Model: ${this.Model} Color: ${this.color}");
}
}

main(){
  Car myCar = Car('Toyota', 2020, 'Corolla', 'Black');
  myCar.displayCarInfor();
  myCar.displayinfo();
}