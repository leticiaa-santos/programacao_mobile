import 'dart:io';

void main () {
  stdout.write("Informe seu nome completo: ");
  String? nome = stdin.readLineSync();

  while (nome == null || nome.trim().isEmpty) {
    print("Entrada inválida! o campo não pode estar vazio.");
    print("Informe o seu nome completo");

    nome = stdin.readLineSync();
  }

  print("Obrigada por informar seu nome para o cadastro!");
}