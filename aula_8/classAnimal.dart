import 'dart:io';

class Animal{
  String nome;
  int idade;

  Animal({
    required this.nome,
    required this.idade
  });
}

class Cachorro extends Animal{
  String? raca;

  Cachorro({
    required String nome, 
    required int idade, 
    this.raca}):super(nome: nome, idade: idade);

  void fazerSom () {
    print("Au au!");
  }
}

class Gato extends Animal{
  String? cor;

  Gato({
    required String nome, 
    required int idade, 
    this.cor}):super(nome: nome, idade: idade);

  void fazerSom () {
    print("Miau!");
  }
}

void main () {
  Cachorro Toto = Cachorro(nome: "Totó", idade: 9, raca: "Shitzu");
  print("Cachorro:");
  print("Nome: ${Toto.nome}");
  print("Idade: ${Toto.idade}");
  print("Raça: ${Toto.raca}");

  print("O cachorro ${Toto.nome} faz:");
  Toto.fazerSom();

  print("=============================");

  Gato michele = Gato(nome: "Michele", idade: 1, cor: "malhado");
  print("Gato:");
  print("Nome: ${michele.nome}");
  print("Idade: ${michele.idade}");
  print("Cor: ${michele.cor}");

  print("O gato ${michele.nome} faz:");
  michele.fazerSom();
}