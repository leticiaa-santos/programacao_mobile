import 'dart:io';

void main () {
  print("Informe seu nome");

  String? nome = stdin.readLineSync();


  print("Informe seu salário do mês de maio");
  String? entrada1 = stdin.readLineSync();
  double salario_maio = double.parse(entrada1!);

  print ("Informe seu salário do mês de junho");
  String? entrada2 = stdin.readLineSync();
  double salario_junho = double.parse(entrada2!);

  print ("Informe seu salário do mês de julho");
  String? entrada3 = stdin.readLineSync();
  double salario_julho = double.parse(entrada3!);

  

  if (salario_maio < 0 || salario_junho < 0 || salario_julho < 0){
    print("Olá $nome!");
    print("Insira um valor válido o seu salário não pode ser negativo");
  } 
  else {

    double media_salario = (salario_maio + salario_junho + salario_julho) / 3;

    if (media_salario < 1000){
      print("A sua média salarial desses três meses é de ${media_salario.toStringAsFixed(2)}, analise bem os seus gastos!");
    }

    else if (media_salario >= 1000 && media_salario > 2000){
      print("Sua média salarial é ${media_salario.toStringAsFixed(2)}, seus gastos merecem atenção");
    } 
  
    else {
      print("Sua média salarial é de ${media_salario.toStringAsFixed(2)}, guarde um pouco de dinheiro para o futuro!");
    }
  }
}