import 'dart:io';

void main () {
  int opcao = 0;

  do{
    print("Escolha uma opção de pagamento");
    opcao = int.parse(stdin.readLineSync()!);
    print("1 - cartão");
    print("2 - pix");
    print("3 - dinheiro");
  } while (opcao > 3);

}