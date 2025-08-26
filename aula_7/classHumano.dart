import 'dart:io';
import 'classeCachorro.dart';

void main () {
    //Criando o objeto
    Humano Vinicius = Humano("Azul", "Vinicius", 20, "Topete");

    print("- Nome: ${Vinicius.nome}");
    print("- Olho: ${Vinicius.cor_olho}");  
    print("- Idade: ${Vinicius.idade}");
    print("- Cabelo: ${Vinicius.cabelo}");

    print("===========================================");

    Cachorro Toto = Cachorro("Totó de Melo Freitas");
    print("- cachorrinho: ${Toto.nome}");

}

class Humano {
    String cor_olho = "";
    String nome = "";
    int idade = 0;
    String cabelo = "";
    Humano(this.cor_olho, this.nome, this.idade, this.cabelo);
}