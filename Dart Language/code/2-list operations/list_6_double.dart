void main()
{
  List<int> list = [1, 2, 3, 4, 5];
  print(list);
  list.remove(3);
  print(list);
  list.removeAt(2);
  print(list);
  list.removeLast();
  print(list);
  list.removeRange(1, 3);
  print(list);
  list.removeWhere((element) => element == 1);
 


}