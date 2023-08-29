void main() {
  final name = ['sajjad', 'sakib', 'sakira'];

  final nameLength = name.map((name) => name.length);

  final nameFilter = name.where((name) => name.length == 6).toList();

  for (var a in nameFilter) {
    print(a + ' ');
  }

  print("full list = $nameFilter");

  nameFilter.forEach((element) {
    print(element);
  });
}
