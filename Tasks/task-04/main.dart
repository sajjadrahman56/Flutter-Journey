import 'currentAccount.dart';
import 'savaingAccount.dart';

void main() {
  SavingsAccount savingsAccount = SavingsAccount(554505, 20200.50, 0.12);
  print("Initial balance: ${savingsAccount.balance}");

  savingsAccount.deposit(3300);
  print("After deposit: ${savingsAccount.balance}");

  savingsAccount.withdraw(1500);

  print('');

  CurrentAccount currentAccount = CurrentAccount(554506, 5000.500, 10000);
  print("Initial balance: ${currentAccount.balance}");

  currentAccount.deposit(1000);
  print("After deposit: ${currentAccount.balance}");

  currentAccount.withdraw(1500000);
}
