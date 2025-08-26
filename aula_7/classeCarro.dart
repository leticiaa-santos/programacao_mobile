import 'dart:io';

void main () {
  Carro Mustang = Carro("Azul", "Ford", "Mustang Manual", "AJA1800", 4, 170);
  Carro Ferrari = Carro("Vermelha", "Ferrari", "La Ferrari", "ACA7657", 4, 0);

  print("Antes de acelerar o Mustang: ${Mustang.velocidade}");
  print("Antes de acelerar a Ferrari: ${Ferrari.velocidade}");

  Mustang.acelerar();
  Ferrari.acelerar();

  print("Depois de acelerar o Mustang: ${Mustang.velocidade}");
  print("Depois de acelerar a Ferrari: ${Ferrari.velocidade}");
}

class Carro{
  String cor = "";
  String placa = "";
  String marca = "";
  String modelo = "";
  int qtd_roda = 0;
  int velocidade = 0;

  Carro(this.cor, this.marca, this.modelo, this.placa, this.qtd_roda, this.velocidade);

  void acelerar () {
    velocidade += 10;
  }
}