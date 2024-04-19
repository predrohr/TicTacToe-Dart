class BoardGame {
  void printBoard(board, rows, columns) {
    print(" 0  1  2\n");
    for (int i = 0; i < 3; i++) {
      print(i);
      for (int j = 0; j < 3; j++) {
        print("(");
        if (board[rows][columns] == 1) {
          print("x");
        } else if (board[rows][columns] == 2) {
          print("0");
        } else {
          print("-");
        }
        print(")");
      }
      print("\n");
    }
  }
}
