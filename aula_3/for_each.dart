import 'dart:io';

void main () {
  List<int> numeros = [1,3,5];
  numeros.forEach((int i) {
    i += 1;
    print(i);
  });

  print(numeros);
  
}