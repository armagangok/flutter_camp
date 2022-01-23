void main() {
  User u1 = User();
  NormalUser u2 = NormalUser();
  UserWhoCanRead u3 = UserWhoCanRead();
  AdminUser u4 = AdminUser();

  test(u1);
  test(u2);
  test(u3);
  test(u4);
}

void test(User user) {
  user.logIn(); //polymorphism
}

class User {
  String email = "";
  String password = "";

  void logIn() {
    print("user has been logged in.");
  }
}

class NormalUser extends User {
  @override
  void logIn() {
    print("NormalUser has been logged in");
  }

  void invite() {
    print("Friends has been invited.");
  }
}

class AdminUser extends User {
  void showUserAmuont() {
    print("200 users");
  }

  @override
  void logIn() {
    print("Admin has been logged in.");
  }
}

class UserWhoCanRead extends NormalUser {
  @override
  void logIn() {
    print("User who can read  has logged in");
  }

  void sayUrName() {
    print("I can only read");
  }
}
