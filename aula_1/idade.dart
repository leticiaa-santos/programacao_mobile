import 'dart:io';

void main(){
  print("Digite a sua idade: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); // ! só converte o valor do input se houver dados

  if(idade >= 18){
    print("Você pode digirir");
  }
  else {
    print("Você pode beber toddynho e pegar um uber");
  }

}