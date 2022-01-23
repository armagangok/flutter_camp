void main() {}

class Interface {
  int sum = 9;

  void volumeUp() {}

  void volumeDown() {}
}

class SmallInterface {
  void method() => print("object");
}

class Program implements Interface, SmallInterface {
  @override
  int sum = 0;

  @override
  void volumeDown() {
    print("volume down");
  }

  @override
  void volumeUp() {
    print("volume up");
  }

  @override
  void method() {}
}
