import 'dart:io';

void main () {

  stdout.write("Informe o valor da compra: ");
  double valor = double.parse(stdin.readLineSync()!);

  stdout.write("Informe a quantidade de parcelas: ");
  int parcela = int.parse(stdin.readLineSync()!);

  double valor_parcelado = valor / parcela;

  for (int i = 1; i <= parcela; i++) {
    print("O valor da parcela $i é R\$ ${valor_parcelado.toStringAsFixed(2)}");
  }

}