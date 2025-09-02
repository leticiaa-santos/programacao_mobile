import 'dart:io';

class Conta{
  String nome_titular;
  double saldoInicial;
  double? investimento;

  Conta({
    required this.nome_titular, 
    required this.saldoInicial, 
    this.investimento});
}

class ContaCorrente extends Conta{
  double? chequeEspecial;

  ContaCorrente({
    required String nome_titular,
    required double saldoInicial,
    double? investimento,
    this.chequeEspecial
  }):super(nome_titular: nome_titular, saldoInicial: saldoInicial, investimento: investimento);
}

class ContaPoupanca extends Conta{
  double taxaRendimento;

  ContaPoupanca({
    required String nome_titular,
    required double saldoInicial,
    double? investimento,
    required this.taxaRendimento
  }):super(nome_titular: nome_titular, saldoInicial: saldoInicial, investimento: investimento);

  void atualizaSaldo () {

    double valor_atualizado = saldoInicial + (saldoInicial * (taxaRendimento/100));
    print("O saldo com a taxa de rendimento é: R\$ ${valor_atualizado}");
  }

}

void main () {
  ContaCorrente conta_corrente = ContaCorrente(nome_titular: "Gabriela", saldoInicial: 10, investimento: 500, chequeEspecial: 200);
  print("Conta Corrente:");
  print("Titular: ${conta_corrente.nome_titular}");
  print("Saldo inicial: R\$ ${conta_corrente.saldoInicial}");
  print("Investimento: R\$ ${conta_corrente.investimento}");
  print("Cheque especial: R\$ ${conta_corrente.chequeEspecial}");

  print("===================================");

  ContaPoupanca conta_poupanca = ContaPoupanca(nome_titular: "Francisca", saldoInicial: 160, taxaRendimento: 15);
  print("Conta Poupança:");
  print("Titular: ${conta_poupanca.nome_titular}");
  print("Saldo inicial: R\$ ${conta_poupanca.saldoInicial}");
  print("Taxa de rendimento: ${conta_poupanca.taxaRendimento}%");

  conta_poupanca.atualizaSaldo();
}