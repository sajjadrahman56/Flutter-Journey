enum typeOfAccount { bussinges, free, premium }

void main() {
  final userAccount = typeOfAccount.bussinges;
  print(' $userAccount');

  switch (userAccount) {
    case typeOfAccount.bussinges:
      print('100 usd');
      break;
    case typeOfAccount.free:
      print('0 usd');
      break;
    default:
      print("no type matched");
  }
}
