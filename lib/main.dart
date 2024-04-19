import './boardgame.dart';
import './board.dart';
import './player.dart';
import 'dart:io';

List<List<int>>? board;
const int rows = 3;
const int columns = 3;
bool? playerWin;
bool? result;
int? p1, p2;
void main() {
  var gameboard = BoardGame();
  var match = Board();
  var player = Player();
  var r = stdin.readLineSync()!;

  while (result != true) {
    print("Player 1 turn:\n");
    playerWin = false;
    gameboard.printBoard(board, rows, columns);
    print("\nEnter position (row - colum): ");
    p1 = int.parse(r);
    p2 = int.parse(r);
    player.player1(p1, p2);
    if (match.match(board!) == true) break;
    print("Player 2 turn:\n");
    playerWin = true;
    gameboard.printBoard(board, rows, columns);
    print("\nEnter position (row - colum): ");
    p1 = int.parse(r);
    p2 = int.parse(r);
    player.player2(p1, p2);
    if (match.match(board!) == true) break;
  }
  if (playerWin == false) {
    print("Player 1 win!");
  } else {
    print("Player 2 win!");
  }
}
