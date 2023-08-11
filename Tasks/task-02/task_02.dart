void main() {
  List<int> subjects = [70, 90, 78, 99, 65, 99, 84, 88, 87, 94, 91];
  int total_marks = 0;

  for (int i = 0; i < subjects.length; i++) {
    total_marks += subjects[i];
  }

  double averageMarks = total_marks / subjects.length;

  double decimal_Average = double.parse(averageMarks.toStringAsFixed(1));
  int roundValue = averageMarks.round();

  print("Student's average grade: $decimal_Average");
  print("Rounded average: $roundValue");

  if (averageMarks >= 70)
    print("Passed");
  else
    print("Failed");
}