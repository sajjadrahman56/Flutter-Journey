class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

class SingletonPerson {
  // Private constructor
  SingletonPerson._privateConstructor();

  // Static instance variable
  static final SingletonPerson _instance =
      SingletonPerson._privateConstructor();

  // Getter for the instance
  static SingletonPerson get instance => _instance;

  // Properties of a person
  final List<Person> _persons = [];

  // Method to add a person to the list
  void addPerson(String name, int age) {
    _persons.add(Person(name, age));
  }

  void removePerson(int age) {
    //_persons.removeWhere((person) => person.age == age);
    _persons.removeWhere((person) {
      if (person.age == age) {
        return true;
      } else {
        return false;
      }
    });
  }

  // Method to display all persons
  void displayPersons() {
    for (var person in _persons) {
      print("Name: ${person.name}, Age: ${person.age}");
    }
  }
}

void main() {
  SingletonPerson singletonPerson = SingletonPerson.instance;

  singletonPerson.addPerson("Alice", 25);
  singletonPerson.addPerson("Bob", 30);
  singletonPerson.addPerson("Bob1", 30);
  singletonPerson.addPerson("Bob2", 300);

  singletonPerson.displayPersons();
  singletonPerson.removePerson(300);
  print('\n\n\t- - - - - - - - - - - - - After removing Bob');
  singletonPerson.displayPersons();
}
