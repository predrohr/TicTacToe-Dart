class Board {
  bool match(List<List<int>> board) {
    // horizontal
    if ((board[0][0] == 1 && board[0][1] == 1 && board[0][2] == 1) ||
        (board[1][0] == 1 && board[1][1] == 1 && board[1][2] == 1) ||
        (board[2][0] == 1 && board[2][1] == 1 && board[2][2] == 1)) {
      return true;
    }
    // vertical
    if ((board[0][0] == 1 && board[1][0] == 1 && board[2][0] == 1) ||
        (board[0][1] == 1 && board[1][1] == 1 && board[2][1] == 1) ||
        (board[0][2] == 1 && board[1][2] == 1 && board[2][2] == 1)) {
      return true;
    }
    // diagonal
    if ((board[0][0] == 1 && board[1][1] == 1 && board[2][2] == 1) ||
        (board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1)) {
      return true;
    }

    // player 2
    // horizontal
    if ((board[0][0] == 2 && board[0][1] == 2 && board[0][2] == 2) ||
        (board[1][0] == 2 && board[1][1] == 2 && board[1][2] == 2) ||
        (board[2][0] == 2 && board[2][1] == 2 && board[2][2] == 2)) {
      return true;
    }
    // vertical
    if ((board[0][0] == 2 && board[1][0] == 2 && board[2][0] == 2) ||
        (board[0][1] == 2 && board[1][1] == 2 && board[2][1] == 2) ||
        (board[0][2] == 2 && board[1][2] == 2 && board[2][2] == 2)) {
      return true;
    }
    // diagonal
    if ((board[0][0] == 2 && board[1][1] == 2 && board[2][2] == 2) ||
        (board[0][2] == 2 && board[1][1] == 2 && board[2][0] == 2)) {
      return true;
    }

    return false;
  }
}
