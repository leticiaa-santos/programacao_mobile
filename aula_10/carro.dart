import 'dart:io';

class Carro{
  String modelo;
  double _velocidade = 0.0;

  Carro({required this.modelo});

  // função get - para ver o valor do atributo privado
  double get mostrar_velocidade {
    return _velocidade;
  }

  // função set - para alterar o valor do atributo privado
  set alterar_velocidade (double v){
    if (v < 0) {
      print("Velocidade não pode ser menor que zero!");
    } else {
      _velocidade = v;
    }
  }
}