// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:io';
import 'dart:math';
enum Move { rock, paper, scissors }
void main() {
  print(
      'welcome in the game \n to play this game you use \n r=rock \n p=paper \n s=scissors \n');

  while (true) {
    var input = stdin.readLineSync();
    // selecting player number
    var playerMove;

    if (input == 'r') {
      playerMove = Move.rock;
    } else if (input == 'p') {
      playerMove = Move.paper;
    } else if (input == 's') {
      playerMove = Move.scissors;
    } else if (input == 'y') {
      print(
          'Welcome in the game \n to play this game you use \n r=rock \n p=paper \n s=scissors');
      continue;
    } else if (input == 'n') {
      print('thank you for playing :)');
      break;
    } else {
      print('invalid value!!');
      continue;
    }

    // selecting AI number
    var randomNumber = Random().nextInt(3);
    var aiMove = Move.values[randomNumber];

    print('your move is: $playerMove');
    print('ai move: $aiMove');

    //game logic

    if ((playerMove == Move.rock && aiMove == Move.scissors) ||
        (playerMove == Move.paper && aiMove == Move.rock) ||
        (playerMove == Move.scissors && aiMove == Move.paper)) {
      print('----{ you win !! :) }---- \n ');
      print('Do you want play again ? y/n  ');
    } else if (playerMove == 'n') {
    } else if (playerMove == aiMove) {
      print('----{ Draw }---- \n ');
      print('Do you want play again ! y/n  ');
    } else {
      print('----{ you lose! :( }---- \n ');
      print('Do you want play again ! y/n  ');
    }
  }
}
