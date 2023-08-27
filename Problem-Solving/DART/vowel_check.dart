import 'dart:io';

void main() {
  // Write your dart code from here
  String str = stdin.readLineSync()!;

  String str_low_case = str.toLowerCase();

  List<String> vowel_list = ['a', 'e', 'i', 'o', 'u'];

  bool find = false;
  for (int i = 0; i < str_low_case.length; i++) {
    if (vowel_list.contains(str_low_case[i])) {
      find = true;
      break;
    }
  }

  if (find) {
    print("The string contains a vowel.");
  } else {
    print("The string does not contain any vowel.");
  }
}
