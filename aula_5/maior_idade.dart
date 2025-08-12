import 'dart:io';

void main () {
  stdout.write("Informe a idade: ");
  int idade_usuario = int.parse(stdin.readLineSync()!);

  bool entrada = ehMaiorIdade(idade_usuario);

  if (entrada == true) {
    print("Você é maior de idade");
  } else {
    print("Você não é maior de idade");
  }
}

bool ehMaiorIdade (int idade) {
  if (idade >= 18){
    return true;
  } else {
    return false;
  }
}