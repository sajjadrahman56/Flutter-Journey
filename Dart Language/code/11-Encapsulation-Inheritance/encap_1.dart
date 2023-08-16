class BankAccount {
  String accountNo;
  String accountName;
  double _balance = 34020.0; // private variable access off

  BankAccount(this.accountNo, this.accountName);

  /// read | get
  ///
  /*
  double getBalance() {
    return _balance;
  }
  */
  /// write | set
  /*
  void setBalance(double amount) {
    if (amount < 0) {
      return;
    }
    _balance = amount;
  }
  */
  double get balance => _balance;

  void set setNewBalance(double amount) {
    if (amount < 0) {
      return;
    }
    _balance = amount;
  }

  double _calculateTax() {
    return (_balance / 100) * 10;
  }

  double get tax => _calculateTax(); // read only
}

// void main() {
//   BankAccount account1 = new BankAccount("123-456-789", "sajjad");

//   print(account1._balance);
// }


/// Encapsulation is the way to hidign data from outside world and only expose the data that is required
/// Encapsulation is the way to protect the data from outside world
/// Encapsulation is the way to protect the data from being modified by outside world
/// Encapsulation is the way to protect the data from being accessed by outside world