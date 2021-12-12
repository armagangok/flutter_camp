import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _number = 0;

  int get getNumber => _number;

  Counter(this._number);

  void increase() {
    _number++;
    notifyListeners();
  }

  void reduce() {
    {
      _number--;
      notifyListeners();
    }
  }
}
