void main() {
  print(Circle.pi);
  print(Circle.color);
  Circle.area(12);
}

class Circle {
  static num pi = 3.14;

  static String color = "Blue";

  static void area(num r) {
    print("Area of the circle {$pi*$r*$r}");
  }
}
