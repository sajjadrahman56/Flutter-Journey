import 'dart:io';

void main() {
  String? dressCode = stdin.readLineSync();
  int? temperature = int.parse(stdin.readLineSync()!);

  if (dressCode == "casual" && temperature >= 15 && temperature <= 25) {
    print("Jeans and a light jacket.");
  } else if (dressCode == "festive" && temperature > 25) {
    print("Colorful dress and sandals.");
  } else {
    print("Wear what you're comfortable in.");
  }
}
