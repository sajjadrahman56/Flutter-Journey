void main() {
  Map<int, String> map = {1: 'ali', 2: 'ahmed', 3: 'sakib'};

  // print(map); // {1: ali, 2: ahmed, 3: sakib}
  // print(map[1]); // ali
  // print(map['ali']); // null

  Map<String, dynamic> persons = {
    'PersonID': 1,
    'Name': 'Sajjad',
    'Age': 24,
    'Salary': 10000000,
    'Gender': 'Male'
  };

  print(persons['Salary']);
}
