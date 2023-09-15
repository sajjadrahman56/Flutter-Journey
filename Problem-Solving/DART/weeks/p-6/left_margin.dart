import 'dart:io';

void main() {
  int? num = int.parse(stdin.readLineSync()!);

  if (num > 1000) {
    print(0);
  } else {
    int a = 1000 - num;
    int b = a ~/ 2;
    print(b);
  }
}
