import '5_class_2.dart';

void main() {
  var a = Example(1, 4);

  a.public;
  a.getPrivate;
  a.setPrivate = 5;
  print(a.getPrivate);
}
