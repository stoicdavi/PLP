class Dog{
  String breed;
  String color;
  String origin;

  //constructor
  Dog(this.breed, this.color, this.origin);

  void bark(){
    print("Bark");
  }

  void run(){
    print("The Dog is running");
  }
}

void main(){
  var myDod = Dog('Labrador', 'Black', 'USA');
  print('Breed : ${myDod.breed}');
}