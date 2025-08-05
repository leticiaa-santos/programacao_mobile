import 'dart:io';

void main () {
  List<String> frutas = [];

  for(int i = 0; i < 3; i++) {
    stdout.write("Informe uma fruta: ");
    String? fruta = stdin.readLineSync();

    frutas.add(fruta!);
  }
  for(String i in frutas) {
    print("$i");
  }
}