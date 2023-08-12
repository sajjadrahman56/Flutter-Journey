class MyClass {
  var name = "sajjad";
  var aphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"];

  addToNumber(int number) {
    print(number + 1);
  }
}

void main() {
  var obj = MyClass();
  obj.addToNumber(12);
  print(obj.aphabet[0]);
}
