
void main(){
    List<int> numbers = [1,2,3,4];
    List<String> Strings = ['apple', 'orange'];
    int sum = addTwo(4, 5);
    int subtract = subtractTwo(20, 10);
    int multiply = multiplyTwo(9, 5);
    double devide = devideTwo(10, 5);
    int strLenght = stringLength("David ");
    print("Te sun function returns: $sum");
    print("The Subtraction fucntion returns: $subtract");
    print("Multiplication returns: $multiply");
    print("The division function returns: $devide");
    print("The length of the name David is: $strLenght");
    print(getFirstElement(numbers));
    print(getFirstElement(Strings));
}

//an arrow function that adds two numbers
int addTwo(int num1, int num2) => num1 + num2;

//an anonymous function that subtracts two numbers
var subtractTwo = (int num1, int num2){
  return num1 - num2;
};

//an anonymous function to multiply two numbers
int Function(int, int) multiplyTwo = (int num1, int num2){
  return num1 * num2;
};

//normal function to devide two numbers 
double devideTwo(double num1, double num2){
  return num1 / num2;
}
//FUNTION THAT RETURNS THE LENGTH OF STRING
int stringLength(String name){
  return name.length;
}
//FUNCTION THAT RETURNS THE FIRST ELEMENT OF A LIST
dynamic getFirstElement(List<dynamic> list){
  if (list.isNotEmpty){
    return list[0];
  }
  else{
    return null;
  }
}