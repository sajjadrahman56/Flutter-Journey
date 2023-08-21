abstract class Person {
  void moving();
}

abstract class Sleepable {
  void sleep();
}

abstract class Ediable {
  void eat();
}

class Employee extends Person implements Sleepable, Ediable {
  @override
  void moving() {
    print(" moving by car");
  }

  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void sleep() {
    // TODO: implement sleep
  }
}

class Manager extends Person {
  @override
  void moving() {
    // TODO: implement moving
  }
}

abstract class Ceo extends Person {
  double sallary();
}

class newManager extends Ceo {
  @override
  double sallary() {
    return 1000;
  }

  @override
  void moving() {
    print('hi ti nai');
  }
}

void main() {
  Employee emp = new Employee();
  emp.moving();
  Manager mgr = new Manager();
  mgr.moving();

  Person p = new newManager();
  p.moving();
}

/// here abstract class Person is created and it has a method moving() which is abstract
/// so we can't create object of Person class
/// we have to create a class which extends Person class and override the moving() method
/// and then we can create object of that class
/// 
/// abstract means the behaviour of the class is not defined and we have to define it in the child class
/// 
/// abstract class can have abstract methods and non abstract methods
/// 
/// 
