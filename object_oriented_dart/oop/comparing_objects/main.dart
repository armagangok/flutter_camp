void main() {
  Id person1 = Id("name", "surname", 4);
  Id person2 = Id("name", "surname", 4);
  Id person3 = Id("name1", "surname1", 5);
  print(person1 == person2);
  print(person1 == person3);
  print(person3 == person2);
}

class Id {
  String name;
  String surname;
  int nu;

  Id(
    this.name,
    this.surname,
    this.nu,
  );
  @override
  bool operator ==(other) {
    return (other is Id) &&
        other.name == name &&
        other.surname == surname &&
        other.nu == nu;
  }
}
