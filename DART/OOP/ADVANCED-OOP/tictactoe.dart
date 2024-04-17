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
  for(int i = 0; i < 9; i++){
    play(gameDashBoard, player);
    DisplayBoard(gameDashBoard);
    if(player == 'X'){
      player = 'O';
    }else{
      player = 'X';
    }
  }
}

void DisplayBoard(List gameDashBoard){//printing the current state of the board
 
  print("${gameDashBoard[0][0]}  | ${gameDashBoard[0][1]} | ${gameDashBoard[0][2]}");
  print("-----------");
  print("${gameDashBoard[1][0]}  | ${gameDashBoard[1][1]} | ${gameDashBoard[1][2]}");
  print("-----------");
  print("${gameDashBoard[2][0]}  | ${gameDashBoard[2][1]} | ${gameDashBoard[2][2]}");
  // for(int i = 0; i < gameDashBoard.length; i++){
  //     print(gameDashBoard[i];
  //   
  // }
}

void play(List gameDashBoard, String player){
  print("Player $player select your position 1 - 9");
  //get the position from the player
  int position = int.parse(stdin.readLineSync()!);
  //check if the position is valid
  if (position != false && position >= 1 && position <= 9){
    var row = (position / 3).ceil() - 1;//calculate the row
    var col = (position - 1) % 3;//calculate the column

    if(gameDashBoard[row][col] == ' '){
      gameDashBoard[row][col] = player;
     
      checkWinner(gameDashBoard, player);
    }
    else{
      print("Position already taken please select another position");
      play(gameDashBoard, player);
    }
  
  }else{
    print("Invalid position please select a position between 1 - 9");
    play(gameDashBoard, player);
  }
}

void checkWinner(List gameDashBoard, String player) {
  // Check the rows
  for (int i = 0; i < gameDashBoard.length; i++) {
    if (gameDashBoard[i][0] == player &&
        gameDashBoard[i][1] == player &&
        gameDashBoard[i][2] == player) {
      displayWinner(player);
      return;
    }
  }

  // Check the columns
  for (int i = 0; i < gameDashBoard.length; i++) {
    if (gameDashBoard[0][i] == player &&
        gameDashBoard[1][i] == player &&
        gameDashBoard[2][i] == player) {
      displayWinner(player);
      return;
    }
    else if (gameDashBoard[0][0] == player &&
      gameDashBoard[1][1] == player &&
      gameDashBoard[2][2] == player) {
      displayWinner(player);
      return;
   } else if (gameDashBoard[0][2] == player &&
      gameDashBoard[1][1] == player &&
      gameDashBoard[2][0] == player) {
        displayWinner(player);
        return;
  }
  else if (isBoardFull(gameDashBoard)) {
    print("It's a tie!");
    return;
  
  }
  }
}

void displayWinner(String player){
  print("Player $player is the winner");
}

bool isBoardFull(List gameDashBoard) {
  for (int i = 0; i < gameDashBoard.length; i++) {
    for (int j = 0; j < gameDashBoard[i].length; j++) {
      if (gameDashBoard[i][j] == ' ') {
        return false;
      }
    }
  }
  return true;
}
