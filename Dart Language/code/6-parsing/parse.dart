void main() {
  int a = 12;
  double b = 12.5;

  String c = a.toString(); // int to string
  /// we can write in this way also '$a' or '${a}'
  ///
  /// string to int
  int d = int.parse(c);

  /// string to double
  double e = double.parse(c);

  /// int to double
  double f = a.toDouble();

  /// double to int
  int g = b.toInt();
  print(f.toStringAsFixed(5));

  /// 12.00000 (5 digits after decimal point)

  /// double to boolean
  ///
  bool h = b.isNegative;
  bool i = b.isFinite;
  bool k = g.isNaN;
  print(h);
  print('isFinite: $i');
  print('isNan: $k');
}
