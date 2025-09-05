import 'dart:io';

class Forma{

  double medida1;
  double medida2;

  Forma({required this.medida1, required this.medida2});

  void calcularArea () {
    print("Calculando a área");
  }
}

class Quadrado extends Forma{
  Quadrado({required double medida1, required double medida2}):super(medida1: medida1, medida2: medida2);

  @override
  void calcularArea() {
    double area = medida1 * medida2;

    print("A área do quadrado é: ${area.toStringAsFixed(2)}");  
  }
}

class Retangulo extends Forma{
  Retangulo({required double medida1, required double medida2}):super(medida1: medida1, medida2: medida2);

  @override
  void calcularArea() {
    double area = medida1 * medida2;

    print("A área do retângulo é: ${area.toStringAsFixed(2)}");
  }
}

class Circulo extends Forma{
  Circulo({required double pi, required double raio}):super(medida1: pi, medida2: raio);

  @override
  void calcularArea() {
    double area = medida1 * (medida2 * medida2);

    print("A área do circulo é: ${area.toStringAsFixed(2)}");
  }
}

void main () {
  Quadrado quadrado = Quadrado(medida1: 20, medida2: 20);
  quadrado.calcularArea();

  Retangulo retangulo = Retangulo(medida1: 34.5, medida2: 28.7);
  retangulo.calcularArea();

  Circulo circulo = Circulo(pi: 2.14, raio: 26);
  circulo.calcularArea();
}