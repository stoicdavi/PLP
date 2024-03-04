void main(){
    print("Hello Dart");
    //listFunction
    print("List Function ");
    listFunction();
    //mapFunction
    print("Map Function");
    mapFunction();
    //runesFunction
    print("Runes Function");
    runesFunction();
}
//funcion that uses list in Dart
void listFunction(){
  List<String> names = ["Ken", "James", "John"];
  List<int> ages = [23, 45, 67];
  print("Your name is ${names[0]} and you are ${ages[0]} years old");
  print("Your name is ${names[1]} and you are ${ages[1]} years old");
  print("Your name is ${names[2]} and you are ${ages[2]} years old");
}

// a function that uses map in Dart
void mapFunction(){
  Map<String, int> ages = {
    "Ken": 23,
    "James": 45,
    "John": 67
  };
  print("Your name is Ken and you are ${ages["Ken"]} years old");
  print("Your name is James and you are ${ages["James"]} years old");
  print("Your name is John and you are ${ages["John"]} years old");
}

//Function that uses runes in Dart
void runesFunction(){
  String name = "I \u7344 Dart";
  print(name);
}
