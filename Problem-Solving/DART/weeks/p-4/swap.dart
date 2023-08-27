import 'dart:io';

void main() {
  String? nums = stdin.readLineSync();
  List<String>? num = nums?.split(' ');
  int? a = int.parse(num![0]);
  int? b = int.parse(num[1]);

  int? aa = a;
  int? bb = b;

  int temp = a;
  a = b;
  b = temp;

  print('Before swapping: num1 = $aa, num2 = $bb');
  print('After swapping: num1 = $a, num2 = $b');
}
