//UC_IOT_AULA2_Prática2 - Ligar Led com pulso no pino D15
//Recursos KIT ESP32 / Resistor / Led
//PROGRAMA 2 : PISCA PISCA
const int PINO_LED = 15; // PINO D15
void setup() {
  pinMode(PINO_LED, OUTPUT); // Define o PINO do LED como saída
}
void loop() {
  digitalWrite(PINO_LED, HIGH); // Liga o LED
  delay(500); // Espera 1 segundo. * Alterar o valor dessa variavel muda o tempo de duração em MILISEGUNDOS que o led permanece LIGADO.
  digitalWrite(PINO_LED, LOW); // Desliga o LED
  delay(500); // Espera 1 segundo. * Alterar o valor dessa variavel muda o tempo de duração em MILISEGUNDOS que o led permanece DESLIGADO.
}
//const int -> declara uma variavel apenas uma vez e a partir daquele momento ela se torna fixa.
//int -> por sua vez quando utilizar somente o "int" é declarada uma variavel inteira que a qualquer momento do código pode ser alterada.