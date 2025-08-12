import 'dart:io';

void main () {
  stdout.write("Informe uma temperatura em celsius: ");
  double temperatura = double.parse(stdin.readLineSync()!);

  double temp_convertida = celsiusParaFahrenheit(temperatura);

  print("A temperatura $temperatura em Fahrenheit é $temp_convertida");
}

double celsiusParaFahrenheit (double celsuis) {
  double fahrenheit = (celsuis * 1.8) + 32;

  return fahrenheit;
}