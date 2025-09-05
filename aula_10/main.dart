import 'dart:io';
import 'carro.dart';

void main () {
  Carro uptesla = Carro(modelo: "UPTESLA");

  uptesla.alterar_velocidade = 20;
  print(uptesla.mostrar_velocidade);
}