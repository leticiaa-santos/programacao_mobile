import 'dart:io';

void main () {
  stdout.write("Digite a sua senha: ");
  String? senha = stdin.readLineSync();

  while (senha != "1234") {
    print("Tente novamente");
    senha = stdin.readLineSync()!;
  }

  print("Acesso liberado");
}