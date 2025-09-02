import 'dart:io';

class Animal{
  String nome;
  int idade;

  Animal({
    required this.nome,
    required this.idade
  });
  
  void fazerSom () {
    print("");
  }
}

class Cachorro extends Animal{
  String? raca;

  Cachorro({
    required String nome, 
    required int idade, 
    this.raca}):super(nome: nome, idade: idade);

  @override
  void fazerSom () {
    print("au au");
  }
}

class Gato extends Animal{
  String? cor;

  Gato({
    required String nome, 
    required int idade, 
    this.cor}):super(nome: nome, idade: idade);

  @override
  void fazerSom () {
    print("miau miau");
  }
}

void main () {
  Cachorro Toto = Cachorro(nome: "Totó", idade: 9, raca: "Shitzu");
  Toto.fazerSom();

  Gato michele = Gato(nome: "Michele", idade: 1, cor: "malhado");
  michele.fazerSom();
}