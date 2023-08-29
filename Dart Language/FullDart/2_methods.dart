int? twice(int Function(int) f) {
  return f(f(2));
}

void main() {
  int? result = twice((int x) {
    return x * 2;
  });

  print(result); // Output: Instance of '_Closure'
}
