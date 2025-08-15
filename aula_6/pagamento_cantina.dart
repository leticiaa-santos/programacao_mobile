import 'dart:io';

void main () {

  double valor_numero;

  while (true) {
    stdout.write("Informe o valor da compra: ");
    String? entrada = stdin.readLineSync();

    
    if (entrada == null || entrada.trim().isEmpty) {
      print("É necessário informar o valor da compra");
      continue;
    }
    
    try{

      valor_numero = double.parse(entrada);
      

      if (valor_numero <= 0) {
        print("O valor deve ser maior que zero");
      }
      break;
      
    } on FormatException {
      print("O valor da compra só pode ser números");
    }
  }

  print("O valor da compra é R\$ ${valor_numero.toStringAsFixed(2)}");

  print("Escolha a forma de pagamento: ");
  stdout.write("""
1 - Cartão de crédito
2 - Cartão de débito
3 - Dinheiro
4 - Pix
""");
  String? opcao = stdin.readLineSync();

  switch(opcao) {
    case "1":
      print("Pagamento em crédito");
      break;
    
    case "2": 
      print("Pagamento em débito");
      break;

    case "3":
      print("Pagamento em dinheiro");
      break;
    
    case "4":
      print("Pagamento em Pix");
      break;

    default:
      print("Opção inválida!");
      break;
  }


}