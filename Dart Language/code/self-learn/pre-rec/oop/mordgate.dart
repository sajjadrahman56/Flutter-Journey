class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw ArgumentError("Cannot divide by zero");
    }
  }
}

void main() {
  Calculator calculator = Calculator();

  double num1 = 10;
  double num2 = 5;

  print("$num1 + $num2 = ${calculator.add(num1, num2)}");
  print("$num1 - $num2 = ${calculator.subtract(num1, num2)}");
  print("$num1 * $num2 = ${calculator.multiply(num1, num2)}");
  print("$num1 / $num2 = ${calculator.divide(num1, num2)}");
}
