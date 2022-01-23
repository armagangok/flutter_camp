import '../base/base.dart';
import '../consts/consts.dart';

class Bank implements Base {
  static final Bank _singleton = Bank._internal();
  factory Bank() => _singleton;
  Bank._internal();

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
