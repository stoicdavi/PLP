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

void DisplayBoard(List gameDashBoard){
  for(int i = 0; i < gameDashBoard.length; i++){
    print(gameDashBoard[i]);
  }
}