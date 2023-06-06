import 'dart:io';

import 'package:dart_application_6/dart_application_6.dart' as dart_application_6;

void main(List<String> arguments) {
  print("Bem vindo ao inferno, vamos jogar?");

  int pieces = int.parse(stdin.readLineSync()!);
  int maxPieces = int.parse(stdin.readLineSync()!);

  Game(pieces, maxPieces);
}

void Game(int pieces, int maxPieces){
  while (true) {
    print("Há ${pieces} palitos");
    print("Retire uma quantidade de palitos");
    int val = int.parse(stdin.readLineSync()!);
    if (val <= maxPieces && val > 0 && val <= pieces) {
      pieces -= val;
      print("Há ${pieces} palitos");
      print("--------------------------------------------------------");
    } else if (val > pieces){
      print("Valor maior que a quantidade de palitos");
    } else {
      print("Valor maior que o limite");
    }
    if (pieces == 0){
      print("Jogo acabou");
      break;
    }
  }
}
