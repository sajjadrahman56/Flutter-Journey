class Person {
  String? name;
  int? age;
  double? height;

  Person() {
    name = '';
    age = 0;
    height = 0.0;
  }
}

class Person1 {
  String name = 'sam';
  int age = 20;
  double height = 2.2;

  Person() {
    name = '';
    age = 0;
    height = 0.0;
  }
}

class Person3 {
  late String name;
  late int age;
  late double height;

  // Person3(String name, int age, double height) {
  //   this.name = name;
  //   this.age = age;
  //   this.height = height;
  // }

  Person3(this.name, this.age, this.height);
}

// void greetPerson(String name, [int age, String occupation]) {

// }

void main() {}


//calss - new data type / custome data 
// variable - data container ( object / instance)
//class function - method
// same name to class - Constructor
