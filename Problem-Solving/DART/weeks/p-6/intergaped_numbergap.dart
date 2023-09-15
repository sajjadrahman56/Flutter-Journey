import 'dart:io';

void main() {
  String? num = stdin.readLineSync()!;
  List<String?> numbrs = num.split(' ');
  int? l1 = int.parse(numbrs[0]!);
  int? r1 = int.parse(numbrs[1]!);
  int? l2 = int.parse(numbrs[2]!);
  int? r2 = int.parse(numbrs[3]!);
  for (int i = l1; i < l2; i++) {
    stdout.write('$i ');
  }
  for (int i = r2 + 1; i <= r1; i++) {
    stdout.write('$i ');
  }
}
