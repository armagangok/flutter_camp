class Voyager {
  // String location = "London";
  late int charge;

  factory Voyager(String location) {
    if (location == "London") {
      return Voyager.toLondon();
    } else if (location == "Cambridge") {
      return Voyager.toCambridge();
    } else if (location == "Paris") {
      return Voyager.toParis();
    } else {
      return Voyager.other();
    }
  }

  Voyager.toParis() {
    charge = 40;
  }

  Voyager.toLondon() {
    charge = 50;
  }

  Voyager.toCambridge() {
    charge = 60;
  }

  Voyager.other() {
    charge = 70;
  }
}

class London extends Voyager {
  London() : super.toLondon();
}

void main() {
  Voyager voyager = Voyager("London");

  print("paymet for the voyage is ${voyager.charge}");
}
