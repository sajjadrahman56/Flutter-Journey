class Human {
  void eating() {
    print("Human is eating");
  }

  void moving() {
    print("Human is moving");
  }

  void breathing() {
    print("Human is breathing");
  }
}

class Teacher extends Human {
  void teaching() {
    print("Teacher is teaching");
  }
}

class Student extends Human {
  void studying() {
    print("Student is studying");
  }
}

class Programmer extends Student {
  void coding() {
    print("Programmer is coding");
  }
}

class SpecailOne extends Programmer {
  void coding() {
    print("Programmer is not only coding");
  }
}

void main() {
  var programmer = Programmer();
  programmer.eating();
  programmer.moving();
  programmer.breathing();
  programmer.studying();
  programmer.coding();
}

/// here nice thing is that 
/// Programmer class can access all the methods of Human class
/// Programmer class can access all the methods of Student class
/// In the programmer class we see only one method but it access additional 4 methods from Human and Student class
/// This is called inheritance
/// Inheritance is a mechanism in which one object acquires all the properties and behaviors of its parent object automatically.
/// Inheritance is an important pillar of OOP(Object Oriented Programming).