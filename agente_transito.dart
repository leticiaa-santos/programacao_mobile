import 'dart:io';

void main () {
  print("Informe o nome do motorista: ");
  String? nome = stdin.readLineSync();

  print("Velocidade do motorista na via: ");
  double velocidade = double.parse(stdin.readLineSync()!);

  bool pagar_multa = true;
  double multa = 0;

  if (velocidade <= 60) {
    print("Sem infração");
    pagar_multa = false;
  }

  else if (velocidade > 60 && velocidade <= 80) {
    print("Infração leve");
    print("O valor da sua multa é 80,00");
  }

  else if (velocidade > 80 && velocidade <= 100) {
    print("Infração média");
    print("O valor da sua multa é 100,00");
  }

  else {
    print("Infração grave");
    print("Sua multa é de 150,00");
  }

  if (pagar_multa) {
    print("Opções de pagamento");
    print("""
      1 - Pagar à vista (10% de desconto)
      2 - Parcelar em 2x (sem juros)
      3 - Parcelar em 3x (com 10% de juros)""");

    print("Escolha como deseja realizar o pagamento da multa: ");
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        multa = 80 - (80 * 0.1);
        print("O valor da sua multa com desconto é R\$ ${multa.toStringAsFixed(2)}");
        break;
      
      case 2:
        multa = 100 / 2;
        print("O valor da sua multa parcelada em 2x é R\$ ${multa.toStringAsFixed(2)}");
        break;
      
      case 3:
        multa = (150 + (150 * 0.1)) / 3;
        print("O valor da sua multa parcelada em 3x com juros de 10% é R\$ ${multa.toStringAsFixed(2)}");
        break;

      default:
        print("Opção errada");
        break;
    }

    
  }


}