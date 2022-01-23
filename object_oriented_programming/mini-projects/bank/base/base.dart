abstract class Base {
  double _balance = 0;

  double get getBalance => _balance;
  set setBalance(double money);

  void transfer(double money);
  void withDraw(double money);
}
