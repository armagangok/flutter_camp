class Person {
  String name;
  int age;

  Person(this.age, this.name);

  void introduceYourself() {
    print("My name is $name, I'm $age years old");
  }
}

class Staff extends Person {
  int salary;
  Staff(int age, String name, this.salary) : super(age, name);
  @override
  void introduceYourself() {
    print("My name is $name, I'm $age years old, my salary is $salary");
  }
}

void main() {
  Staff staff = Staff(23, "Armağan", 4200);
  staff.introduceYourself();
}
