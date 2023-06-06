import 'dart:io';
int option = 0;
int pieces = 12;
int maxPieces = 3;
void main(List<String> arguments) {
  print("Bem vindo ao inferno, vamos começar?");
  Menu(option, pieces, maxPieces);
}

void Menu(option, pieces, maxPieces) {
  do {
    print("""O que você quer fazer?
  
  [1] INICIAR JOGO
  [2] OPÇÕES DE JOGO
  [3] COMO JOGAR NIM?
  [0] DESLIGAR""");
    option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      Game(pieces, maxPieces);
    } else if (option == 2) {
      do {
        print("Escolha uma quantidade de peças");
        pieces = int.parse(stdin.readLineSync()!);
        if (pieces <= 1) {
          print("Valor inválido, digite outro");
        }
      } while (pieces <= 1);

      do {
        print(
            "Escolha um limite maximo para o quanto de peças que podem ser retiradas");
        maxPieces = int.parse(stdin.readLineSync()!);
        if (maxPieces <= 0) {
          print("Valor inválido, digite outro");
        }
      } while (maxPieces < 1);
    } else if (option == 3) {
      print("--------------------------------------------------------");
      print(
          """No jogo NIM, você ira ter uma quantidade de Palitos e terá que retirar a maior quantidade possivel deles sem retirar o ultimo. 
    Competindo com uma máquina, perde aquele que tirar o ultimo palito do monte. 
    Há como escolher a quantidade de palitos que podem ser tirados, porém ela nunca poderá ser zero, assim como não se pode jogar NIM com 1 ou 0 palitos
    Tenha um bom jogo!""");
      print("--------------------------------------------------------");    
    }
  } while (option != 0);
}

void Game(pieces, maxPieces) {
  while (pieces != 0) {
    print("Há ${pieces} palitos");
    print("Retire uma quantidade de palitos");
    int val = int.parse(stdin.readLineSync()!);
    if (val <= maxPieces && val > 0 && val <= pieces) {
      pieces -= val;
      print("--------------------------------------------------------");
    } else if (val > pieces) {
      print("""Valor maior que a quantidade de palitos""");
    } else if (val > maxPieces) {
      print("""Valor maior que o limite de retirada""");
    } else {
      print("""Valor inválido""");
    }
    if (pieces == 0) {
      print("Jogo acabou");
    }
  }
}
