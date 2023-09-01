void main(List<String> args) {
  User us1 = User(firstName: 'sakib', lastName: 'hasan');
  User us2 = User(firstName: 'abir', lastName: 'ahmed');
}

class User {
  final String firstName;
  final String lastName;

  const User({required this.firstName, required this.lastName});

  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  // }
}
