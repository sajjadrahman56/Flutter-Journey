import "dart:io";
import 'dart:math';

void main() {
  //pattern17(10);
  pattern312(3);
  //pattern30(5);
  // pattern2(4);
  // pattern1(4);
}

void pattern312(int n) {
  /*
4  4  4  4  4  4  4   
4  3  3  3  3  3  4   
4  3  2  2  2  3  4   
4  3  2  1  2  3  4   
4  3  2  2  2  3  4   
4  3  3  3  3  3  4   
4  4  4  4  4  4  4   
  */
  n = n * 2;
  int originalN = n;
  for (int row = 0; row <= n; row++) {
    for (int col = 0; col <= n; col++) {
      int atEveryIndex =
          originalN - 2 - min(min(row, col), min(n - row, n - col));
      stdout.write("$atEveryIndex  ");
    }
    print(' ');
  }
}

void pattern311(int n) {
  /*
  0 0 0 0 0
  0 2 2 2 0
  0 2 1 2 0
  0 2 2 2 0
  0 0 0 0 0
  */
  n = n * 2;

  for (int row = 0; row <= n; row++) {
    for (int col = 0; col <= n; col++) {
      int atEveryIndex = min(min(row, col), min(n - row, n - col));
      stdout.write("$atEveryIndex  ");
    }
    print(' ');
  }
}

void pattern17(int n) {
  // 4 3 2 1 2 3 4
  //   3 2 1 2 3
  //     2 1 2
  //       1
  for (int row = 1; row <= 2 * n; row++) {
    int totalColumNo = row > n ? 2 * n - row : row;
    int totalSpcae = n - row;

    for (int k = 0; k < n - totalColumNo; k++) {
      stdout.write("  ");
    }
    for (int col = totalColumNo; col >= 1; col--) {
      stdout.write('$col' + " ");
    }
    for (int col = 2; col <= totalColumNo; col++) {
      stdout.write("$col ");
    }

    print(' ');
  }
}

void pattern30(int n) {
  for (int row = 1; row <= n; row++) {
    int totalSpcae = n - row;

    for (int k = 0; k < n - row; k++) {
      stdout.write("  ");
    }
    for (int col = row; col >= 1; col--) {
      stdout.write('$col' + " ");
    }
    for (int col = 2; col <= row; col++) stdout.write("$col ");

    print(' ');
  }
}

void pattern28(int n) {
  for (int row = 0; row < 2 * n; row++) {
    int totalColumNo = row > n ? 2 * n - row : row;

    int totalSpcae = n - totalColumNo;

    for (int k = 0; k < totalSpcae; k++) {
      stdout.write(' ');
    }
    for (int col = 0; col < totalColumNo; col++) {
      stdout.write("* ");
    }
    print(' ');
  }
}

void pattern4(int n) {
  for (int row = 0; row < 2 * n; row++) {
    int totalColumNo = row > n ? 2 * n - row : row;

    for (int col = 0; col < totalColumNo; col++) {
      stdout.write("* ");
    }
    print(' ');
  }
}

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
