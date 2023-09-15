import 'dart:io';

void main() {
  int? num = int.parse(stdin.readLineSync()!);

  if (num <= 300) {
    print(0);
  } else {
    int a = num - 300;
    int b = a ~/ 2;
    print(b);
  }
}
