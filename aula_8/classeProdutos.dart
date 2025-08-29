import 'dart:io';

class Products{
  String name;
  double price; //Atributo obrigatório
  String? description; //Atributo opcional

  Products({
    required this.name, 
    required this.price, 
    this.description
    });
}

void main () {
  Products coquinha = Products(name: "coquinha gelada", price: 14);
  Products pepsi = Products(name: "pepsinha gelada", price: 14, description: "Pepsi gelada é muito bom!");
  
}