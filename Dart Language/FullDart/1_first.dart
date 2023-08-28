void main(List<String> args) {
  positionalOptionalParameter(1, 2.0, 'Sajjad');
}

// first method -> cont and final
void besicShow() {
  String? name = 'Dart';
  String? firstName = null;

  final String lastName;
  lastName = 'Language';

  //lastName = "hi"; // error

  const String middleName = 'FullDart';
  //middleName = 'hi'; // error
  // the difference between final and const is that
  //const is a compile-time constant while final is a run-time constant.
  // const and final are immutable. immutable means that the variable cannot be changed after it is initialized.
// difference between final and const is that const must be initialized with a constant value.
// final can be initialized with a value computed at run time.
//similar between final and const is that they both are immutable.
// but final is initialized when accessed while const is initialized at compile time.
//compile time means when the code is converted to machine code.
//run time means when the code is running.
// which one occure first? compile time or run time?
// compile time occure first then run time.
// so const is initialized before final.
  print(firstName?.length); // null
}

// difference / and ~/
void mathBitOperation() {
  double tata = 6 / 5;

  print(tata);
  print(tata.runtimeType);

  int tata2 = 6 ~/ 5;
  print(tata2);
}

// optional Pram in METHOD
void positionalOptionalParameter(int x, double y, [String? z = "hi"]) {
  // positionalOptionalParameter(1, 2.0);
  print('x = $x and $y also $z');
  // positionalOptionalParameter(1, 2.0, 'Sajjad');
}

void namedPram({int? num1, int? num2, String? name}) {
  namedPram(name: "abir", num1: 23, num2: 24);
  // closer look the method parameters ; in named param we can define any order
}

void requriedNamedParam({int? x, int? y, String? greetings}) {
  requriedNamedParam(greetings: 'sakib', x: 75, y: 90);
}
