import 'dart:io';

void main () {// principal
  int valor_funcao = soma();
  int valor_final = valor_funcao * 2;

  print("Valor final $valor_final");
  
}

int soma(){
  int valor = 1 + 2;
  return valor;
}