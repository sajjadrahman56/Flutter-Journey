void main() {
  var namePerson = User(name: 'aaaaaaaa', photoUrl: 'sas.com');

  print(namePerson.name);
}

class User {
  final String name;
  final String photoUrl;

  const User({required this.name, required this.photoUrl});

  bool hasLongName() {
    return name.length > 5;
  }

  static void myMethod() {}
  static const minNameLength = 3;
}
