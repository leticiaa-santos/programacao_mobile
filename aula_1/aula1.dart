import 'dart:io'; //importa a biblioteca com as funções da linguagem

void main(){ // função principal pro código
	print("Digite seu nome"); // mensagem do input, precisa ter para o programa não ter loop infinito
	String? nome = stdin.readLineSync(); // input ? indica que a variável pode ser nula

	String nome2 = nome!.toLowerCase(); // transforma o valor da variável tudo minusculo, assim funciona para o toUpperCase também 

	
	print("Olá, seu nome é $nome2");

	if (nome2 == "junin"){
		print("Você é o cara");
	}
	else if(nome2 == "gabi"){
		print("oiee ermãzinha");
	} 
	else {
		print("Saia daqui, você não é o cara");
	}
}