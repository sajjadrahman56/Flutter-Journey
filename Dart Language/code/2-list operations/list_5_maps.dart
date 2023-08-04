void main() {
  List<Map<String, int>> grades = [
    {'Ayo': 60, 'Samuel': 89, 'Vic': 70, 'ayo': 80},
    // Two keys in a map literal shouldn't be equal.
  ];

  int sum = 0;

  grades.forEach((studentGrades) {
    print(studentGrades);

    studentGrades.forEach((name, marks) {
      sum += marks;
    });
  });

  print('The sum of all grades is $sum');
}
