void main() {
  /// list of students
  List<String> students = ['ali', 'ahmed', 'mohamed', 'sakib', 'sara'];
  print(students);

  students.addAll(['sara2', 'sara2', 'sara2', 'sara2', 'sara3', 'sara4']);

  // Checking if the list contains a certain element
  bool containsSeven = students.contains('sakib');
  print('contain sakib  = $containsSeven');

  // now remove element from list

  // ----------------------------- remove sara1 --------------------
  students.remove('sara1');

  print('remove sara1 = $students');

  // remove all data

  /// - - - - - - - -  if we use the clear functions in the list it removes all of the data in the list

  //students.clear();
  // print(students);
}
