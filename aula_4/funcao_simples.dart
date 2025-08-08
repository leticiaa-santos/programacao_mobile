import 'dart:io';

void main () { // principal
  menu();
}

void menu () { // sem parâmetro e sem retorno
  print("Bem a biblioteca da leticia");
  print("Escolha as opções: ");
  print("""
  1 - Emprestar
  2 - Devolver
  3 - Consultar
  4 - Comprar
  """);
}