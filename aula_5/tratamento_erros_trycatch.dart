import 'dart:io';

void main () {
  // try {
  //   stdout.write("Digite seu número: ");
  //   int numero = int.parse(stdin.readLineSync()!);

  // } catch(e) {
  //   print("Esse é o seu erro: $e");
  // }finally { // independente do que aconteça, execute:
  //   print("Encerrando o programa...");
  // }

  try {
    stdout.write("Digite seu número: ");
    int numero = int.parse(stdin.readLineSync()!);

  } on FormatException { // mostrar respostas personalizadas para cada tipo de erro
    print("Digite apenas números");
  } on TypeError {
    print("Conversão de dados inválida");
  }
}