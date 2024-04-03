class Circle{
  // private variable
  double _radius;

  //costructor
  Circle(this._radius);

  //getter for the radius
  double get radius => _radius;

  //setter for the radius
  set radius(double value){
    if(value > 0){
      _radius = value;
    }else {
      throw ArgumentError('Radius cannot be negative');
    }
  }

  //method to calculate the area of the circle
  double clculateArea(){
    return 3.242 *_radius * _radius;
  }

}
void main(){
  Circle circle1 = Circle(7);
  print(circle1.clculateArea());
}