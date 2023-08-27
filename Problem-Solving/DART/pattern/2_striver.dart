// for the outer loop , count no of lines
// for the inner loop , count no of columns and somehow connect to the rows
// print the item
// obserbe the symmetry [ optional ]

import 'dart:io';

void pattern1(int n) {
  // ***
  // ***
  // ***

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("* ");
    }
    print('');
  }
}

void pattern2(int n) {
  // *
  // **
  // ***

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write("* ");
    }
    print('');
  }
}

void pattern3(int n) {
  // 1
  // 1 2
  // 1 2 3

  for (int i = 0; i < n + 1; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write("$i ");
    }
    print('');
  }
}

void pattern4(int n) {
  // 1
  // 2 2

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$i  ");
    }
    print('');
  }
}

void pattern5(int n) {
  // * * * * *
  // * * * *
  // * * *
  // * *
  // *

  // observation : n-row+1

  for (int i = 1; i <= n; i++) {
    for (int j = 0; j <= n - i + 1; j++) {
      stdout.write("$i  ");
    }
    print('');
  }
}

void pattern6(int n) {
  //       *
  //     * * *
  //   * * * * *
  //  * * * * * * *

  for (int i = 1; i <= n; i++) {
    for (int space = 1; space <= n - i; space++) {
      stdout.write("  ");
    }

    for (int star = 1; star <= 2 * i - 1; star++) {
      stdout.write("$star ");
    }
    print('');
  }
  /*
  for (int j = 1; j <= n - i; j++) {
      stdout.write("  ");
    }
    for (int j = 1; j <= 2 * i - 1; j++) {
      stdout.write("* ");
    }
    print('');
  */
}

void patter6_otherway(int n) {
  //       *
  //     * * *
  //   * * * * *
  //  * * * * * * *

  for (int i = 0; i < n; i++) {
    for (int space = 0; space < n - i - 1; space++) {
      stdout.write("  ");
    }

    for (int star = 0; star < 2 * i + 1; star++) {
      stdout.write("$star ");
    }

    for (int space = 0; space < n - i - 1; space++) {
      stdout.write("  ");
    }
    print('');
  }
}

void pattern7(int n) {
  // * * * * *
  //   * * *
  //     *

  for (int i = 0; i < n; i++) {
    for (int space = 0; space < i; space++) {
      stdout.write("  ");
    }

    for (int star = 0; star < 2 * (n - i) - 1; star++) {
      stdout.write("$star ");
    }
    print('');
  }
}

void pattern8(int n) {
//    1
//  2 1 2
//3 2 1 2 3
//  2 1 2
//    1
  for (int row = 1; row <= 2 * n; row++) {
    int totalCols = row > n ? 2 * n - row : row;

    for (int space = 0; space < n - totalCols; space++) {
      stdout.write("  ");
    }
    for (int col = totalCols; col >= 1; col--) {
      stdout.write("$col ");
    }
    for (int col = 2; col <= totalCols; col++) {
      stdout.write("$col ");
    }
    print('');
  }
}

void pattern9(int n) {
  for (int row = 1; row <= 2 * n - 1; row++) {
    int starts = row;
    if (row > n) {
      starts = 2 * n - row;
    }
    for (int j = 0; j < starts; j++) {
      stdout.write("* ");
    }
    print('');
  }
}

void pattern11(int n) {
  //1
  //0 1
  //1 0 1
  //0 1 0 1
  //1 0 1 0 1
  int start = 1;
  for (int i = 0; i < n; i++) {
    if (i % 2 == 0)
      start = 1;
    else
      start = 0;

    for (int j = 0; j <= i; j++) {
      stdout.write("$start ");
      start = 1 - start;
    }

    print('');
  }
}

void pattern12(int n) {
  int space_no = 2 * (n - 1);
  for (int row = 1; row <= n; row++) {
    //numbers
    for (int col = 1; col <= row; col++) {
      stdout.write("$col");
    }
    //spaces

    for (int space = 1; space <= space_no; space++) {
      stdout.write(" ");
    }
    //numbers
    for (int col = row; col >= 1; col--) {
      stdout.write("$col");
    }

    print('');
    space_no -= 2;
  }
}

void pattern17(int n) {
  for (int row = 0; row < n; row++) {
    for (int col = 0; col < n - row - 1; col++) {
      stdout.write("  ");
    }

    double break_point = ((2 * row + 1) / 2);
    int point = break_point.toInt();
    int aschi_ch = 65;
    for (int ch = 1; ch <= 2 * row + 1; ch++) {
      stdout.write("${aschi_ch} ");
      if (ch <= point) {
        aschi_ch++;
      } else {
        aschi_ch--;
      }
    }

    for (int col = 0; col < n - row - 1; col++) {
      stdout.write("  ");
    }

    print('');
  }
}

void main() {
  pattern17(5);
  pattern8(5);
}
