void main() {
  var cityNames = {'Kolkata', 'Mumbai', 'Delhi', 'Chennai', 'Bangalore', 100};
  // if i used nothinh and the variable name is Var than it will be a OBJECT type
  ///
  /// if i set the variable name as String than it will be a STRING type i can not assign 100

  var nums = <int>{1, 2, 3, 4, 5, 6};

  var trueOrFalse = <bool>{true, false};

  cityNames.add('Hyderabad');

  cityNames.addAll({'Pune', 'Kochi', 'Jaipur'});
  print(cityNames);

  /// print a single city name with help of elementAt() method of Set where inside a index
  ///
  /// index start from 0
  ///
  var singleCity = cityNames.elementAt(2);
  print(singleCity);

  /// set properties
  ///
  print("\t\t- - - -  set properties - - - - \n");
  print(cityNames.runtimeType); // print the type of the set
  print(cityNames.first); // check the set is a set or not
  print(cityNames.last);
  print(cityNames.length);
  print(cityNames.isEmpty);
  print(cityNames.isNotEmpty);
  print(cityNames.hashCode);
}
