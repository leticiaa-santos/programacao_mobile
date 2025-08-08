// import 'dart:io';

// void main () {// principal
//   double valor_funcao = multiplica();
//   double valor_final = valor_funcao / 2;

//   print("Valor final $valor_final");
  
// }

// double multiplica(){
//   double valor = 20 * 2;
//   return valor;
// }


// import 'dart:io';

// void main () {// principal
//   dividir(20, 4);
// }

// void dividir(double num1, double num2){
//   double valor = num1 / num2;

//   print(valor);
// }

// import 'dart:io';

// void main () { // principal
//   menu();
// }

// void menu () { // sem parâmetro e sem retorno
//   print("Bem a biblioteca da leticia");
//   print("Escolha as opções: ");
//   print("""
//   1 - Emprestar
//   2 - Devolver
//   3 - Consultar
//   4 - Comprar
//   """);
// }

import 'dart:io';

void main () {// principal
  int valor_funcao = multiplicacao(2, 6);
  int valor_final = valor_funcao * 10;

  print("Valor da função $valor_funcao");

  print("Valor final $valor_final");
  
}

int multiplicacao(int num1, int num2){
  int valor = num1 * num2;
  return valor;
}