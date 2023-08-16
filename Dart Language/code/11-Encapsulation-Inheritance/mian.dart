import 'encap_1.dart';

void main() {
  BankAccount account1 = new BankAccount("123-456-789", "sajjad");

  print(account1.balance);

  print(' current tax amount ${account1.tax}');
}
