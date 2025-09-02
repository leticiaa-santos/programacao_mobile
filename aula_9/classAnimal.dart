import 'dart:io';

class Animal{
  void falar(){
    print("");
  }
}

class Cachorro extends Animal{
  @override
  void falar() {
    print("Au au!");
  }
}

class Gato extends Animal{
  @override
  void falar() {
    print("Miau, miau!");
  }
}

class Papagaio extends Animal{
  @override
  void falar() {
    print("Piu, piu!");
  }
}

void main () {
  Cachorro toto = Cachorro();

  Gato marie = Gato();

  Papagaio ricardo = Papagaio();

  List<Animal> animais = [];

  
}