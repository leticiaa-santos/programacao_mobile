import 'dart:io';

void main () {

  print("Bem vindo ao menu");

  print("1 - arroz");
  print("2 - feijão");
  print("3 - carne");

  print("Digite a sua opção: ");
  int opcao = int.parse(stdin.readLineSync()!);


  switch(opcao){
    case 1:
      print("Arroz adicionado na sua sacola");
      break;
    case 2:
      print("Feijão adicionado na sua sacola");
      break;
    case 3:
      print("Carne adicionada na sua sacola");
      break;
    default:
      print("Opção inválida!");
      break;
  }
}