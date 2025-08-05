import 'dart:io';

void main () {
  // int number = 0;

  // do{
  //   print("Hello");
  // } while (number > 1);

  String continuar = '';

  do{
    print("Bem vindo ao mercado");
    print("1 - carne");
    print("2 - feijão");
    print("3 - arroz");

    print("deseja continuar comprando?");
    continuar = stdin.readLineSync()!;
  } while (continuar == "sim");
}