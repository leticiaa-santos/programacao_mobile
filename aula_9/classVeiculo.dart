import 'dart:io';

class Veiculo{
  String modelo;
  String cor;
  String marca;

  Veiculo({required this.modelo, required this.cor, required this.marca});

  void mover (bool cnh) {
    if (cnh) {
      print("Movendo veículo");
    } else {
      print("Você não tem CNH");
    }
  }

  String toString () {
    return "$modelo, $cor, $marca";
  }
}

class Carro extends Veiculo{
  Carro ({required String modelo, required String cor, required String marca}):super(modelo: modelo, cor: cor, marca: marca);

  @override
  void mover (bool cnh) {
    if (cnh) {
      print("Virar a chave");
      print("Engatar a marcha");
      print("Soltar o pé da embreagem");
      print("Acelerar");
    } else {
      print("Você não tem CNH");
    }
  }
}

class Moto extends Veiculo{
  Moto ({required String modelo, required String cor, required String marca}):super(modelo: modelo, cor: cor, marca: marca);

  @override
  void mover (bool cnh) {
    if (cnh) {
      print("Virar a chave");
      print("Colocar no neutro e ligar");
      print("Acelerar");
    } else {
      print("Você não tem CNH");
    }
  }
}



void main () {
  Carro Bugatti = Carro(modelo: "Veyron", cor: "Azul", marca: "Bugatti/Volks");

  Bugatti.mover(true);

  print(Bugatti);

  print("====================================");

  Moto motoFran = Moto(modelo: "motoMoto", cor: "vermelha", marca: "motooo");

  motoFran.mover(false);

  print(motoFran);
}  