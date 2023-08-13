class Person {
  String? _name;
  int? _age; // Private attribute

  Person(String name, int age) {
    _name = name;
    _age = age;
  }

  String get name => _name!; // Getter
  int get age => _age!; // Getter

  void introduce() {
    print('Hello, my name is $_name');
  }
}

void main() {
  Person person = Person('Alice', 20);

  //person.introduce();
  print('Name: ${person.name} and Age: ${person._age}');
}
