void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  /// another way write for loop
  int initial = 0;
  for (; initial < 10;) {
    print(initial);
    initial++;
  }

  /// another way write for loop
  int initial2 = 0;
  for (;;) {
    if (initial2 < 10) {
      print(initial2);
      initial2++;
    } else {
      break;
    }
  }

  /// infinite loop
  /* for (;;) {
     print('infinite loop');
   }
   */

  List<String> names = ['Jack', 'Jill', 'Tom'];

  // for in loops

  for (String name in names) {
    print(name);
  }

  for (int i = 0; i < names.length; i++) {
    print('${names[i]} is a student   ');
  }
}
