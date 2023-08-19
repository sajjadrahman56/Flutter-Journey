import "dart:io";

void main() {
  pattern4(4);
  // pattern2(4);
  // pattern1(4);
}

void pattern4(int n) {}

void pattern3(int n) {
  //****
  //***
  //**
  //*

  // we can write this pattern in two ways

  /*
     for (int col = n; col >= row; col--) {
      stdout.write("* ");
    }
 */

  for (int row = 1; row <= n; row++) {
    for (int col = 1; col <= n - row + 1; col++) {
      stdout.write("* ");
    }
    print("\n");
  }
}

void pattern2(int n) {
// ****
// ****
// ****

  for (int row = 1; row <= n; row++) {
    for (int col = 1; col <= n; col++) {
      stdout.write("* ");
    }
    print("\n");
  }
}

void pattern1(int n) {
//  *
//  **
//  ***
//  ****
  for (int i = 0; i < n; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    print("\n");
  }
}
