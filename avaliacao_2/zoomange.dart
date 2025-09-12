import 'dart:io';

class Animal{
  String nome;
  int _idade = 0;

  Animal({required this.nome});

  int get mostrar_idade {
    return _idade;
  }

  set alterar_idade (int nova_idade) {
    if (nova_idade < 0) {
      print("A idade não pode ser menor que zero");
    } else {
      _idade = nova_idade;
    }
  }

  void alimentar () {
    print("O animal se alimenta");
  }
}

class Pequeno extends Animal{
  Pequeno({required String nome}):super(nome: nome);

  @override
  void alimentar() {
    print("O animal $nome está se alimentando");
  }

}

class Medio extends Animal{
  Medio({required String nome}):super(nome: nome);

  @override
  void alimentar() {
    print("O animal $nome está se alimentando");
  }

  @override
  void dormir() {
    print("O animal $nome está dormindo");
  }

}

class Grande extends Animal{
  Grande({required String nome}):super(nome: nome);

  @override
  void alimentar() {
    print("O animal $nome está se alimentando");
  }

  @override
  void dormir() {
    print("O animal $nome está dormindo");
  }

}