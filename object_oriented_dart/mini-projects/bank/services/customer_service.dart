import '../base/base.dart';
import '../consts/consts.dart';

class Customer implements Base {
  static final Customer _singleton = Customer._internal();
  factory Customer() => _singleton;
  Customer._internal();

  double _balance = 0;

  @override
  double get getBalance => _balance;

  @override
  set setBalance(double money) => _balance = money;

  @override
  void transfer(double money) {
    double dif = money + ConstVariable().tax;
    _balance += -dif;
  }

  @override
  void withDraw(double money) {
    double dif = money + ConstVariable().tax;
    _balance += dif;
  }
}
