import 'dart:io';

class Pagamento{
  double valor;

  Pagamento({required this.valor});

  void processar (){
    print("Processando o pagamento");
  }
}

class Pix extends Pagamento{
  Pix({required double valor}):super(valor:valor);

  @override
  void processar() {
    print("Pagamento no valor de R\$ ${valor.toStringAsFixed(2)} realizado no Pix");
  }
}

class CartaoCredito extends Pagamento{
  CartaoCredito({required double valor}):super(valor: valor);

  @override
  void processar() {
    print("Pagamento no valor de R\$ ${valor.toStringAsFixed(2)} realizado no cartão de crédito");
  }
}

class Boleto extends Pagamento{
  Boleto({required double valor}):super(valor: valor);

  @override
  void processar() {
    print("Pagamento no valor de R\$ ${valor.toStringAsFixed(2)} realizado no boleto");
  }
}

void main () {
  Pix compraPix = Pix(valor: 20.90);
  compraPix.processar();

  CartaoCredito compraCartao = CartaoCredito(valor: 60);
  compraCartao.processar();

  Boleto compraBoleto = Boleto(valor: 130.87);
  compraBoleto.processar();
}