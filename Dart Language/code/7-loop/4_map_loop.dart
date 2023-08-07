void main() {
  Map<String, String> map = {
    'name': 'Jack',
    'age': '20',
    'city': 'New York',
  };

  for (String key in map.keys) {
    print('$key : ${map[key]} && value : ${map.values}');
  }

  print("\t- -   - -  - - - - - - - - - ");
  map.forEach((key, value) {
    print('$key : $value');
  });
}
