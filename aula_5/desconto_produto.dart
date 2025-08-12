import 'dart:io';

void main () {
  stdout.write("Informe o preço do produto: ");
  double valor_produto = double.parse(stdin.readLineSync()!);

  stdout.write("Informe a porcentagem de desconto do produto: ");
  double porcentagem_desconto = double.parse(stdin.readLineSync()!);

  double preco = calcularDesconto(valor_produto, porcentagem_desconto);

  print("O preço final com desconto é: R\$ ${preco.toStringAsFixed(2)}");
}

double calcularDesconto (double preco, double porcentagem) {
  double desconto = preco * (porcentagem/100);
  double preco_final = preco - desconto;

  return preco_final;
}