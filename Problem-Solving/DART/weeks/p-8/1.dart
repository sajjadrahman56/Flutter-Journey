import 'dart:io';

void main() {
  // Write your dart code from here
  var s = stdin.readLineSync();
  List<String>? l = s?.split(" ");
  int a = int.parse(l![0]);
  int b = int.parse(l[1]);

  if (a >= b) {
    int c = 24 - (a - b);
    print(c);
  } else {
    int c = b - a;
    print(c);
  }
}
