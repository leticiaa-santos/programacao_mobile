import 'dart:io';

void main () {
  Produto cafe = Produto("Café", 1.50, 2);

  print("O estoque do produto ${cafe.nome} no momento é: ${cafe.estoque}");

  print("Comprando um ${cafe.nome}...");

  cafe.subtrair_estoque();

  print("O estoque do produto ${cafe.nome} no momento é: ${cafe.estoque}");

  print("=========================================");

  print("Comprando um ${cafe.nome}...");

  cafe.subtrair_estoque();

  print("O estoque do produto ${cafe.nome} no momento é: ${cafe.estoque}");

  print("=========================================");

  print("Comprando um ${cafe.nome}...");

  cafe.subtrair_estoque();
}

class Produto{
  String nome = "";
  double preco = 0.0;
  int estoque = 0;

  Produto(this.nome, this.preco, this.estoque);

  void subtrair_estoque(){
    if (estoque > 0){
      estoque -= 1;
    } else {
      print("Estoque esgotado para o produto $nome");
    }
  }
}