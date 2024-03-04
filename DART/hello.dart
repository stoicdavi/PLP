void main(){
    print("Hello Dart");
    listFunction();
}
//funcion that uses list in Dart
void listFunction(){
  List<String> names = ["Ken", "James", "John"];
  List<int> ages = [23, 45, 67];
  print("Your name is ${names[0]} and you are ${ages[0]} years old");
  print("Your name is ${names[1]} and you are ${ages[1]} years old");
  print("Your name is ${names[2]} and you are ${ages[2]} years old");
}