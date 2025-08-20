import 'dart:io';

// stdout.write('\x1B[2J\x1B[0;0H');

void main () {

  bool continuar = true;

  while (continuar) {

    
    String cpf = "";

    print("Essa é a Letícia Manicure! É um prazer te receber aqui!");
    print("Vamos começar com um cadastro");

    stdout.write("\nInforme o seu nome: ");
    String? nome = stdin.readLineSync();
    
    while(nome == null || nome.trim().isEmpty){
      print("\nÉ necessário informar o seu nome. Por favor insira o seu nome");
      nome = stdin.readLineSync();
    
    }

    stdout.write("\nInforme seu cpf: ");
    cpf = stdin.readLineSync()!;

    while(cpf.length != 11 || cpf.trim().isEmpty){
      print("\nDigite um cpf valido: ");
      cpf = stdin.readLineSync()!;
    }

    exibirServicos();

    var carrinho = adicionarCarrinho();

    processaPagamento(nome, carrinho);

    
    stdout.write("\nDeseja contratar outro serviço? s/n: ");
    String? entrada = stdin.readLineSync();
    stdout.write('\x1B[2J\x1B[0;0H');

    if (entrada == null || entrada.toLowerCase().trim() != "s"){
      print("Obrigada por comprar, estamos finalizando...");
      continuar = false;
    }
  
  }
}

void exibirServicos () {
  List<String> servicos = [
    "1 - Esmaltação - 50,00", 
    "2 - Unha postiça - 45,00", 
    "3 - Esmaltação + decoração - 60, 00", 
    "4 - Alongamento - 150, 00"
    ];

  print("\nVeja os serviços disponíveis:\n");

  servicos.forEach((String i) {
    print(i);
  });
}

Map<String, dynamic> adicionarCarrinho () {

  List<String> carrinhoServico = [];
  List<double> carrinhoPreco = [];
  double valor = 0.0;

  while(true){
    stdout.write("\nEscolha o serviço de 1 a 4: ");
    int escolha = int.parse(stdin.readLineSync()!);

    switch(escolha){
      case 1:
        print("\nVocê escolheu esmaltação");
        carrinhoServico.add("Esmaltação");
        carrinhoPreco.add(50.00);
        break;

      case 2:
        print("\nVocê escolheu unha postiça");
        carrinhoServico.add("Unha postiça");
        carrinhoPreco.add(45.00);
        break;

      case 3:
        print("\nVocê escolheu esmaltação + decoração");
        carrinhoServico.add("Esmaltação + decoração");
        carrinhoPreco.add(60.00);
        break;

      case 4:
        print("\nVocê escolheu alongamento");
        carrinhoServico.add("Alongamento");
        carrinhoPreco.add(150.00);
        break;

      default:
        print("\nEssa opção não é válida");
        break;
    }
    
    stdout.write("\nDeseja adicionar mais um serviço? s/n: ");
    String? decisao = stdin.readLineSync();

    if (decisao == null || decisao.trim().toLowerCase() != "s"){

      stdout.write('\x1B[2J\x1B[0;0H');
      print("Vamos seguir para o pagamento...");

      for(int i = 0; i < carrinhoServico.length; i++){
        print("-> ${carrinhoServico[i]}");
        valor += carrinhoPreco[i];
      }

      print("O valor total do seu carrinho: R\$ ${valor.toStringAsFixed(2)}");
      break;
    }

  }
  return {
    'servicos': carrinhoServico,
    'precos': carrinhoPreco,
    'valorTotal': valor,
  };
}

void processaPagamento (String nome, Map<String, dynamic> carrinho) {
    double totalCarrinho = carrinho['valorTotal'];
    List<String> servicos = carrinho ['servicos'];
    List<double> precos = carrinho['precos'];
    double troco = 0.0;
    String formaPagamento = "";
    double valorDinheiro = 0.0;


    print("""Escolha a sua forma de pagamento:
    1 - Pix
    2 - Débito
    3 - Crédito - 3x sem juros
    4 - Dinheiro
    """);

    int pagamento = int.parse(stdin.readLineSync()!);

    switch(pagamento){
      case 1:
        formaPagamento = "Pix";
        print("Compra de R\$ ${totalCarrinho.toStringAsFixed(2)} feita no Pix com sucesso");
        break;
      
      case 2:
        formaPagamento = "Débito";
        print("Compra de R\$ ${totalCarrinho.toStringAsFixed(2)}");
        break;

      case 3:
        formaPagamento = "3 - Crédito - 3x sem juros";
        totalCarrinho = totalCarrinho / 3; // colocar o valor da parcela no recido, além do valor total
        print("Compra realizada! O valor da sua parcela é R\$ ${totalCarrinho.toStringAsFixed(2)}");
        break;

      case 4:
        formaPagamento = "Dinheiro";
        print("Compra de R\$ ${totalCarrinho.toStringAsFixed(2)}");

        stdout.write("Informe o valor em dinheiro que vai pagar: ");
        valorDinheiro = double.parse(stdin.readLineSync()!);

        if(valorDinheiro < totalCarrinho){
          print("Valor informado não é válido para essa compra. Qual valor em dinheiro deseja pagar? ");
          valorDinheiro = double.parse(stdin.readLineSync()!);
        }

        troco = valorDinheiro - totalCarrinho;
        print("Troco a pagar: R\$ ${troco.toStringAsFixed(2)}");
        break;

      default:
        print("Opção de pagamento inválida");
        return;
    }

    mostrarRecibo(nome, servicos, precos, totalCarrinho, formaPagamento, troco, valorDinheiro);
}

void mostrarRecibo(String nome, List<String> servicos, List<double> precos, double valorTotal, String formaPagamento, double troco, double valorDinheiro){
  stdout.write('\x1B[2J\x1B[0;0H');
  print("========================================");
  print("Seu recibo: ");
  print("Cliente: $nome");
  print("Seus itens: ");

  for(int i = 0; i < servicos.length; i++){
    print("-> ${servicos[i]}: R\$ ${precos[i].toStringAsFixed(2)}");
  }

  print("Forma de pagamento: $formaPagamento");
  print("Total pago: R\$ ${valorTotal.toStringAsFixed(2)}");

  if(troco > 0){
    print("Valor em dinheiro: R\$ ${valorDinheiro.toStringAsFixed(2)}");
    print("Troco: R\$ ${troco.toStringAsFixed(2)}");
  }
  print("=========================================");
}