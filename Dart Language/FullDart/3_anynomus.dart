int? twice(int Function(int) f) {
  return f(f(3));
}

// missing it
void main() {
  var reslut = twice((c) => c * 3);
  print(reslut);
}
