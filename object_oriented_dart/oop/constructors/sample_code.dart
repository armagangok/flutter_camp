class Soldier {
  String name;
  String location;
  int age;

  Soldier(this.name, this.age, this.location) {
    print("Cosntructor of Soldier class was run.");
  }
}

class PrivateSoldier extends Soldier {
  String name;
  String location;
  int age;

  PrivateSoldier(this.name, this.age, this.location)
      : super(name, age, location) {
    print("Constructor of PrivateSoldier class was run.");
  }

  void makeASoldierSalute() {
    print("I'm $name and I'm $age years old. I'm from $location \nHello!");
  }

  void changeLocation(String newLocation) {
    super.location = newLocation;
    print("new location is: $location");
  }
}

void main() {
  PrivateSoldier privateSoldier = PrivateSoldier("Armagan", 21, "Bursa");
  privateSoldier.makeASoldierSalute();
  privateSoldier.changeLocation("Istanbul");
}
