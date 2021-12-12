void main() {
  Car car = Car(brand: "Tofaş");
  car.name = "Tofaş";
  car.wheel = 3;
  car.runEngine();

  car.setBrand = "BMW";
  print(car.getBrand);
}

class Car extends Vehicle {
  late String _brand;

  Car({required String brand});

  @override
  void runEngine() {
    print("changed");
  }

  set setBrand(String brand) => _brand = brand;
  String get getBrand => _brand;
}

class Vehicle {
  int wheel = 4;
  String name = "Knight Rider";

  Vehicle() {
    print("$name car is created which has $wheel wheels.");
  }

  void runEngine() {
    print("$name car was run.");
  }
}


// class Car extends Vehicle {
//   String _brand;
//   Car({required String brand}): _brand = brand;
//   set setBrand(String brand) => _brand = brand;
//   String get getBrand => _brand;
// }