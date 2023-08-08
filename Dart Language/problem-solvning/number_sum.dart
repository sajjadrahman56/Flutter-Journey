import 'dart:io';

void main() {
  String? nums = stdin.readLineSync();
  List<String> num = nums!.split(' ');

  int a = int.parse(num[0]);
  int b = int.parse(num[1]);
  print(a + b);
}
