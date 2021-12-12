import 'package:flutter/material.dart';

class Data with ChangeNotifier {
  String city = 'London';

  void changeCity(String newCity) {
    city = newCity;
    notifyListeners();
  }
}
