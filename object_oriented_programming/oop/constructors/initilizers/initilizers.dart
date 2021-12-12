class Engine {
  int power;

  Engine({required this.power}) {
    print("$power power engine was created.");
  }
}

class Car extends Engine {
  String color = "blue";
  int door = 4;
  String name;

  Car(this.name)
      : color = "blue",
        door = 4,
        super(power: 30) {
    print("name: $name \ncolor: $color \ndoor: $door \n ");
    print("engine power: $power");
  }
}

void main() {
  Car car = Car("BMW");
}
