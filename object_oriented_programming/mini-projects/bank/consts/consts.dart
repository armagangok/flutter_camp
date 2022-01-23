class ConstVariable {
  static final ConstVariable _singleton = ConstVariable._internal();
  factory ConstVariable() => _singleton;
  ConstVariable._internal();

  double tax = 0.5;
}
