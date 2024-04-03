//Defining a class named Dog
class Dog{
  //declaring instance variables
  String name;
  int age;
  String breed;

  //Parameterized constructor for the Dog class
  Dog(this.name, this.age, this.breed);
  //method/function to make the Dog Bark
  void bark() => print("$name barks!");

//Method to simuate the dog to eat
   void eat() => print("$name is eating.");

   void sleep() => print("$name is sleeping. ");
}
// main function
void main(){
  //Creating an (instance) object of the Dog class
  Dog myDog = Dog('browny', 23, 'Labrador');

  //printing information about the Dog
  print("Name: ${myDog.name} Age: {myDog.age} Breed: ${myDog.breed}");
  //calling the bark method of the dog class
  myDog.bark();
  myDog.eat();
  myDog.sleep();
}