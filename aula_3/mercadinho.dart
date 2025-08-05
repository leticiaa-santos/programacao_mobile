import 'dart:io';

void main () {
  List<String> itens = [];
  String continuar = '';
  double total = 0.0;
  String pagamento = '';
  double pagar = 0.0;

  stdout.write("Informe o seu CPF: ");
  String? cpf = stdin.readLineSync();

  do{
    print("Bem vindo ao mercadinho!");

    print("Esses são alguns itens que temos disponíveis pra você hoje:");
    print("""
    - banana
    - uva
    - maracuja
    - pêra
    - laranja
    - limão
    """);

    stdout.write("Informe o nome do item que deseja comprar: ");
    String? nome = stdin.readLineSync();
    itens.add(nome!);
    
    stdout.write("Informe o valor do produto: ");
    double valor = double.parse(stdin.readLineSync()!);
    total = total + valor;

    print("Deseja incluir mais itens na sua compra? sim/nao: ");
    continuar = stdin.readLineSync()!;

    } while(continuar == "sim");

    
    print("Você finalizou a sua compra!");
    print("Os itens comprados foram: ");
    print(itens);

    print("O valor total da sua compra foi de ${total.toStringAsFixed(2)}");



  do{
    print("Essas são as opções de pagamento:");
    print("""
    1 - À vista (com 10% de desconto)
    2 - Parcelado no cartão (com 10% de juros)
    3 - Fiado (com 15% a mais na próxima compra)
    """);
    print("Escolha sua opção de pagamento");
    pagamento = stdin.readLineSync()!;

    switch(pagamento){
      case '1':
        pagar = total - (total * 0.10);
        print("Você escolheu pagar à vista, o total com desconto de 10% é: R\$ ${pagar.toStringAsFixed(2)}");
        break;
      
      case '2':
        stdout.write("Digite a quantidade de parcelas que deseja: ");
        int parcelas = int.parse(stdin.readLineSync()!);
        pagar = (total + (total * 0.10)) / parcelas;

        print("O valor da compra parcelado em ${parcelas} vezes é de R\$ ${pagar.toStringAsFixed(2)}");
        break;

      case '3':
        print("Você escolheu pagar fiado, será acrescido mais 15% na próxima compra");
        pagar = total * 0.15;

        print("O valor de acrescimo será de R\$ ${pagar.toStringAsFixed(2)}");
        break;

      default:
        print("Opção inválida");
        break;

    }

  }while(pagamento != '1' && pagamento != '2' && pagamento != '3');


}