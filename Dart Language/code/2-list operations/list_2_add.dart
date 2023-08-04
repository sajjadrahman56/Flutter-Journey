void main() {
  /// list create
  List<String> list = ['a', 'b', 'c'];

  /// list of students
  List<String> students = ['ali', 'ahmed', 'mohamed', 'sakib', 'sara'];
  print(students);
  // print('first element of the list is =  ${students[0]}' );

  students.add('sara1');

  print(students);

  students.addAll(['sara2', 'sara2', 'sara2', 'sara2', 'sara3', 'sara4']);

  print(students);

  /// tow list add
  List<int> a = [1, 2, 3, 4, 5];
  List<int> b = [6, 7, 8, 9, 10];

  List<int> c = a + b;
  print(c);

  print("\n\t* * * * * * * * * * * * * * * * * \n");
  List<int> nums = [2, 3, 4, 5];
  List<int> nums2 = [6, 7, 8, 9, 10];
}
