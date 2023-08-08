void main() {
  var myMaps = {'name': 'sajjad', 'age': 24, 'city': 'Sylhet'};

  /// add a new key and value in the map
  myMaps['country'] = 'Bangladesh';

  print(myMaps);

  /// map create using Constructor
  ///
  var tataMap = new Map();
  tataMap['name'] = 'Sajjad';
  tataMap['age'] = 24;
  tataMap['city'] = 'Sylhet';
  tataMap['country'] = 'Bangladesh';
  tataMap['phone'] = '01700000001';

  print(tataMap);

  /// map properties
  ///
  print("\t\t- - - -  map properties - - - - \n");

  print(tataMap.keys);
  print(tataMap.values);
  print(tataMap.length);
  print(tataMap.isEmpty);
  print(tataMap.isNotEmpty);
  //print(tataMap.containsKey('name'));

  tataMap.addAll({'email': 'sajjadrahman17.info@gmail.com', 'rl': 'none'});
  print(tataMap);

  /// we can add other map in a map using addAll() method
  ///
  ///  here is the example

  var otherMpa = {'sex': 'male', 'religion': 'islam'};

  tataMap.addAll(otherMpa);

  print(tataMap);
}
