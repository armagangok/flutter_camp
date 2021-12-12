// setter and getter

class Student {
  late String _name;
  late String _surname;

  Student({required name, required surname});

  set setName(name) => _name = name;

  set setSurname(surname) => _surname = surname;

  get getName => _name;

  get getSurname => _surname;
}

void main() {
  Student student = Student(surname: "Gök", name: "Armağan");
  student.setName = "Armağan";
  student.setSurname = "Gök";

  print("${student.getName} ${student.getSurname}");
}
