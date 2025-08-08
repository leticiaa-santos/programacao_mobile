import 'dart:io';

void main () {// principal
  int valor_funcao = soma(2, 6);
  int valor_final = valor_funcao * 2;

  print("Valor da função $valor_funcao");

  print("Valor final $valor_final");
  
}

int soma(int num1, int num2){
  int valor = num1 + num2;
  return valor;
}