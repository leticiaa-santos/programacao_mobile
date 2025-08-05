// ignore: unused_import
import 'dart:io';

void main(){
  int nota1 = 4;
  int nota2 = 8;
  double nota3 = 3;
  int nota4 = 4;
  int nota5 = 3;

  double media = (nota1 + nota2 + nota3 + nota4 + nota5) / 5;

  print("média: $media");

  if (media >= 5){
    print("aluno aprovado");
  }
  else if(media < 4){
    print("aluno reprovado");
  } else {
    print("aluno em recuperação");
  }
}