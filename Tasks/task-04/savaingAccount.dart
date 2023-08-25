import 'accounts.dart';

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;

      balance += balance * interestRate;
      print("After withdrawal: $balance");
    } else {
      print('insufficient balance for withdrawal');
    }
  }
}
