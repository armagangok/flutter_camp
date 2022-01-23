void main() {
  Singleton sample = Singleton();
  print(sample);
  print(sample.content);
}

class Singleton {
  static final Singleton _singleton = Singleton._internal();
  String content = "String";

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}
