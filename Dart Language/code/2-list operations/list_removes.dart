void main() {
  List<String> students = ['ali', 'ahmed', 'sakib', 'sara'];

  // students.removeLast();

  // print(students); // [ali, ahmed, mohamed, sakib]

  // print(students.removeAt(2)); // mohamed

  print(students.remove('d')); // true

  print(students.reversed); // [ali, ahmed, sakib, sara]

  print(students.first); // ali

  print(students.last); // sara

  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6]
  ];

  print(matrix[0][1]); // 2

  print(matrix[1][2]); // 6

  List<List<String>> names = [
    ['ali', 'ahmed', 'sakib', 'sara'],
    ['mohamed', 'ahmed', 'sakib', 'sara'],
  ];

  print(names[0][1]); // ahmed

// foreach loop

  names.forEach((name1) {
    print('name1: $name1');

    name1.forEach((name2) {
      print('single name = $name2');
    });
  });


  
}
