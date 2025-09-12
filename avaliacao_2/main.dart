import 'dart:io';
import 'zoomange.dart';
import 'metodos.dart';

  //listas para armazenar os animais por porte
  List<Pequeno> pequenoPorte = [];
  List<Medio> medioPorte = [];
  List<Grande> grandePorte = [];

void main () {

  //adicionando animais de pequeno porte
  Pequeno suricato = Pequeno(nome: "Suricato");
  suricato.alterar_idade = 24;
  pequenoPorte.add(suricato);

  Pequeno tartaruga = Pequeno(nome: "Tartaruga");
  tartaruga.alterar_idade = 164;
  pequenoPorte.add(tartaruga);

  Pequeno coruja = Pequeno(nome: "Coruja");
  coruja.alterar_idade = 36;
  pequenoPorte.add(coruja);

  //adicionando animais de médio porte
  Medio canguru = Medio(nome: "Canguru");
  canguru.alterar_idade = 89;
  medioPorte.add(canguru);

  Medio pinguim = Medio(nome: "Pinguim");
  pinguim.alterar_idade = 45;
  medioPorte.add(pinguim);

  Medio flamingo = Medio(nome: "Flamingo");
  flamingo.alterar_idade = 23;
  medioPorte.add(flamingo);

  //adicionando animais de grande porte
  Grande girafa = Grande(nome: "Girafa");
  girafa.alterar_idade = 54;
  grandePorte.add(girafa);

  Grande hipopotamo = Grande(nome: "Hipopótamo");
  hipopotamo.alterar_idade = 12;
  grandePorte.add(hipopotamo);

  Grande elefante = Grande(nome: "Elefante");
  elefante.alterar_idade = 20;
  grandePorte.add(elefante);

  menu();

}

