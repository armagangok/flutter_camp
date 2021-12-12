void main() {
  /// Example a = Example();
  /// We can't instaciate abstract class, cuz it runs in compile-time not run time.

  Rectangle rectangle = Rectangle(20, 10);

  print("${rectangle.area}");
}

/// Abstract classes run along compile-time,when it comes to run-time; they will gone.
/// Abstract sınıfları sadece compile-time boyunca çalıştırılırlar, run-time'da yok edilirler.
/// Abstract classes are used in other classes.
///
/// Abstract class sounds like kind of template for new class.

abstract class Shape {
  final int x, y;
  Shape(this.x, this.y);

  get perimeter;
  get area;

  draw();
}

class Rectangle extends Shape {
  Rectangle(int x, int y) : super(x, y);

  @override
  get area => x * y;

  @override
  get perimeter => 2 * (x + y);

  @override
  draw() {
    print("drawn");
  }
}

class Square extends Shape {
  Square(int x) : super(x, 0);

  @override
  get area => x * x;

  @override
  get perimeter => 4 * x;

  @override
  draw() {}
}
