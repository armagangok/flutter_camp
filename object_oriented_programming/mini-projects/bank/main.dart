/*Pooja would like to withdraw X $US from an ATM. The cash machine will only accept the transaction if X is a multiple of 5,
 and Pooja's account balance has enough cash to perform the withdrawal transaction (including bank charges).
 For each successful withdrawal the bank charges 0.50 $US. Calculate Pooja's account balance after an attempted transaction. */
import 'services/customer_service.dart';
import 'services/bank_service.dart';

void main() {
  final Customer _customer = Customer();
  final Bank _bank = Bank();

  print(_customer.getBalance);
  print(_bank.getBalance);

  _customer.setBalance = 250;
  _bank.setBalance = 500;

  print(_customer.getBalance);
  print(_bank.getBalance);

  _customer.transfer(50);
  _bank.withDraw(50);

  print(_customer.getBalance);
  print(_bank.getBalance);
}
