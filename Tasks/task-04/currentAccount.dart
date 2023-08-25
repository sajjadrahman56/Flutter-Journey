import 'accounts.dart';

class CurrentAccount extends Account {
  double overdraftLimit;
  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= overdraftLimit) {
      balance -= amount;
      print("After withdrawal: $balance");
    } else {
      print('insufficient funds');
    }
  }
}
