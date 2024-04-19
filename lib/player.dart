import 'main.dart';

class Player {
  void player1(p1, p2) {
    board![p1][p2] = 1;
  }

  void player2(p1, p2) {
    board![p1][p2] = 2;
  }
}
