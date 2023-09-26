class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void sayHello() {
    print("Hello, my name is $name.");
  }

  int getAgeInMonths() {
    return age * 12;
  }
}

void main() {
  String name = "Ostad"; // assign your name
  int age = 25; //assign your age
  String address = "Baridhara, Dhaka"; //assign any address
  Person person = Person(name, age, address);
  person.sayHello();
  int ageInMonths = person.getAgeInMonths();
  print("Age in months: $ageInMonths");
}
