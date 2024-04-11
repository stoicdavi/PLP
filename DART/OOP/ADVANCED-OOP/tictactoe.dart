//tictac toe
//players
//board
//play(function)
//DisplayBoard function
//checkWinner function
//display winner function
//main function
import 'dart:io';
void main(){
  String player = 'X';
  var gameDashBoard = [[' ',' ',' '],[' ',' ',' '],[' ',' ',' ']];
  DisplayBoard(gameDashBoard);
}

void DisplayBoard(List gameDashBoard){//printing the current state of the board
  for(int i = 0; i < gameDashBoard.length; i++){
    print("${gameDashBoard[0][0]}  | ${gameDashBoard[0][1]} | ${gameDashBoard[0][2]}");
    print("-----------");
    print("${gameDashBoard[1][0]}  | ${gameDashBoard[1][1]} | ${gameDashBoard[1][2]}");
    print("-----------");
    print("${gameDashBoard[2][0]}  | ${gameDashBoard[2][1]} | ${gameDashBoard[2][2]}");
  }
}

