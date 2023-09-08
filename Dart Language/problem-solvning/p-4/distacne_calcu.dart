import 'dart:io';
import 'dart:math';

void main() {
  String? nums1 = stdin.readLineSync();
  String? nums2 = stdin.readLineSync();

  List<String>? num1 = nums1?.split(' ');
  List<String>? num2 = nums2?.split(' ');
  double? a = double.parse(num1![0]);
  double? b = double.parse(num1[1]);
  double? c = double.parse(num2![0]);
  double? d = double.parse(num2[1]);

  double distance = sqrt(((c - a) * (c - a) + (d - b) * (d - b)));

  print("Distance: ${distance.toStringAsFixed(2)}");
}
