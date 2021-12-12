void main() {
  User u1 = User();
  NormalUser u2 = NormalUser();
  UserWhoCanRead u3 = UserWhoCanRead();
  AdminUser u4 = AdminUser();
  u4.logIn();
}

class User {
  String email = "";
  String password = "";

  void logIn() {
    print("user has been logged in.");
  }
}

class NormalUser extends User {
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
  void sayUrName() {
    print("I can only read");
  }
}
