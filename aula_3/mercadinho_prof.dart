

import 'dart:io'; //importa as bibliotecas e funcoes do dart.


void main() {
  while(true) {
  

  
  List<String> menu = ["Arroz 20.3","Feijao 40.5","Agua 70.6"];
  
  
  List<String> meus_itens = [];
  List<double> meus_valores =[];
  
  
  String continuar = '';
  
  
  double total = 0.0;
  int opcao_pag = 0;
  
  String cpf = '';

  stdout.write("Deseja iniciar o programa?");

  continuar = stdin.readLineSync()!;
  if (continuar != "sim") {
    print("Encerrando programa");
    break;
  }

  print("digite seu CPF");
  cpf = stdin.readLineSync()!;

  while(cpf.length != 11){
        print("Digite um cpf valido");
        cpf = stdin.readLineSync()!;
  }


  do {
  //digita o produto e armazena 
  print("Digite o produto");
  String produto = stdin.readLineSync()!;
  meus_itens.add(produto);

  //digita valor ,armazena e soma no total .
  print("Digite o valor");
  double valor = double.parse(stdin.readLineSync()!);
  meus_valores.add(valor);
  total = total + valor;

  print("Deseja continuar?");
  continuar = stdin.readLineSync()!;
  }while(continuar =="sim");

 //Mostra os dados
  print("Seus itens comprados $meus_itens");
  print("valores $meus_valores");
  print("total $total");


  do{
    print("1 - A VISTA 10% desconto");
    print("2 - Parcelado cartao 10% Juros");
    print("3 - FIado 15% a mais para a proxima compra");

    opcao_pag = int.parse(stdin.readLineSync()!);

    switch(opcao_pag){
      case 1:
        double desconto = total * 0.10;
        total = total - desconto;

        print("O valor a pagar a vista será $total");


      case 2: 
        double juros = total * 0.10;
        total = total + juros;
        double parcelas = total /2;
        print("O valor a pagar em 2 vezes será $total em 2X de $parcelas ");

      case 3: 
      double juros = total * 0.15;
      print("Caso 3 , será adicionado 15% de juros para a proxima conta, o valor sera  acrescentado será $juros  ");



      default:
        print("opcao invalida tente novamente");
        
    }


  }while( opcao_pag < 0 ||opcao_pag >3);


  }


}

