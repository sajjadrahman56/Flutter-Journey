class BankAccount {
  String accountNumber = '';
  double _balance = 0; // Private attribute

  BankAccount(this.accountNumber, double initialBalance) {
    _balance = initialBalance;
  }

  double? get balance => _balance; // Getter for private attribute _balance

  void deposit(double amount) {
    _balance += amount;
    print('Deposited $amount. New balance: $_balance');
  }

  void _deductFee() {
    _balance -= 10.0;
    print('Fee deducted. New balance: $_balance');
  }

  void performTransaction(double amount) {
    if (amount > 0) {
      deposit(amount);
    } else {
      _deductFee();
    }
  }
}

void main() {
  BankAccount account = BankAccount('123456', 100.0);
  print(
      'Initial balance: ${account.balance}'); // Output: Initial balance: 100.0

  account
      .performTransaction(50.0); // Output: Deposited 50.0. New balance: 150.0
  account.performTransaction(-30.0); // Output: Fee deducted. New balance: 140.0
}
