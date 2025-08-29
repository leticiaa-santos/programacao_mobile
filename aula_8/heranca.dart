import 'dart:io';

class Veiculo {
  String modelo;
  String marca;
  int ano;

  Veiculo({
    required this.modelo, 
    required this.marca, 
    required this.ano
    });
}

class Carro extends Veiculo{
  int? qtd_portas;
  Carro({
    required String modelo, 
    required String marca, 
    required int ano,
    this.qtd_portas
    }):super(modelo:modelo, marca:marca, ano:ano);
}

class Moto extends Veiculo{
  bool? bau;
  Moto({
    required String modelo, 
    required String marca, 
    required int ano, 
    this.bau
    }):super(modelo:modelo, marca:marca, ano:ano);
}

void main () {
  Carro Ferrari = Carro(modelo: "Ferrari", marca: "Ferrari", ano: 2023);

  Carro Celta = Carro(modelo: "Celtinha", marca: "Chevrolet", ano: 2008, qtd_portas: 2);

  Moto motoDaFran = Moto(modelo: "Twister", marca: "Honda", ano: 2018, bau: true);
}