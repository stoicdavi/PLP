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
  if (position != null && position >= 1 && position <= 9){
    var row = (position / 3).ceil() - 1;//calculate the row
    var col = (position % 3) - 1;//calculate the column

    if(gameDashBoard[row][col] == ' '){
      gameDashBoard[row][col] = player;
      //TODO- Create a fucntion to check the winner
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

