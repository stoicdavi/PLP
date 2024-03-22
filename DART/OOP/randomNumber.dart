import 'dart:math';

class Test{
  int randomNumber(){
    print("Random Number: 10");
    return Random().nextInt(10);
  }
}
void main(){
  Test t = Test();
  print(t.randomNumber());
}