// Exception Falut
// Handle / exception handeling
// Run time error  is error that occures during run time . run time error is also called logical error
// Compile time error is error that occures during compile time . compile time error is also called syntax error

import 'dart:async';

void main() {
  try {
    dynamic a = 12 / 0;
    int b = a + 23;
    print(b);
    print('hello');

    //throw YooException('this is my custom exception');
  } on YooException {
    print('Yoo Exception is occured');
  } on TimeoutException {
    print('print time out exception');
  } on FormatException {
    print('print format exception');
  } catch (e) {
    print(e);
  } finally {
    print('this is finally block');
  }

  print('hello i am after exception handeling');

  /// if we do not use the try and catch we can not reach the line no 16
  /// because the program will be stoped at line no 12
}

class YooException implements Exception {
  String message = "This is my custom exception";
  YooException(this.message);
  @override
  String toString() {
    return message;
  }
}
/// clean coder
/// uncel bob er code book 