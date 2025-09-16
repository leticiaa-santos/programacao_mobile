#include <WiFi.h>
#include <WiFiClientSecure.h>

// === CONFIGURAÇÃO DE REDE ===
const char* ssid = "WIFI_EDUC_CFP501";
const char* password = "SENAICAMPINAS501";

// === CONFIGURAÇÃO DO GOOGLE APPS SCRIPT ===
const char *GScriptId = "AKfycbyPWvHhCl9C2dChrAH9NtHLRIEoA8FRXXddDgU7cH8J0F72ELFXEQO3jmHIs1cyooBNAA";

String payload_base = "{\"command\": \"insert_row\", \"sheet_name\": \"Sheet1\", \"values\": ";
String payload = "";

const char* host = "script.google.com";
const int httpsPort = 443;
String url = String("/macros/s/") + GScriptId + "/exec";

// === VARIÁVEIS ===
const int ledPin = 18;       // Pino do LED
const int buttonPin = 14;    // Pino do botão

bool ledState = false;      // Estado do LED
bool lastButtonState = HIGH; // Estado anterior do botão

unsigned long lastDebounceTime = 0;  // O tempo do último acionamento do botão
unsigned long debounceDelay = 50;    // O tempo de debounce (em milissegundos)

WiFiClientSecure client;

void setup() {
  Serial.begin(9600);
  delay(1000);

  pinMode(ledPin, OUTPUT);      // Configura o pino do LED como saída
  pinMode(buttonPin, INPUT_PULLUP);  // Configura o pino do botão com resistor pull-up interno

  WiFi.begin(ssid, password);
  Serial.print("Conectando-se à rede: ");
  Serial.println(ssid);

  // Espera até o ESP32 se conectar à rede Wi-Fi
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }

  Serial.println("\nConectado!");
  Serial.print("Endereço IP: ");
  Serial.println(WiFi.localIP());

  client.setInsecure();  // Desativa a verificação de certificado SSL (não recomendado em produção)
}

void loop() {
  bool buttonState = digitalRead(buttonPin); // Lê o estado do botão

  // Detecta a borda de descida (quando o botão é pressionado)
  if (buttonState == LOW && lastButtonState == HIGH && (millis() - lastDebounceTime) > debounceDelay) {
    ledState = !ledState;  // Alterna o estado do LED
    digitalWrite(ledPin, ledState ? HIGH : LOW); // Atualiza o estado do LED

    // Formata os dados para enviar ao Google Sheets
    String ledStatus = ledState ? "Ligado" : "Desligado";
    //String time_now = getTimeString();

    payload = payload_base + "\"" + ledStatus + "\"}";

    // Envia os dados para o Google Sheets
    sendToGoogleSheets(payload);

    // Atualiza o tempo do debounce
    lastDebounceTime = millis();
  }

  lastButtonState = buttonState;  // Atualiza o estado anterior do botão
}

//String getTimeString() {
 // unsigned long epochTime = millis() / 1000;   Obtém o tempo desde o início do programa (em segundos)
  //return String(epochTime);
//}

void sendToGoogleSheets(String data) {
  if (!client.connect(host, httpsPort)) {
    Serial.println("Falha na conexão");
    return;
  }

  String request = String("POST ") + url + " HTTP/1.1\r\n" +
                   "Host: " + host + "\r\n" +
                   "Content-Type: application/json\r\n" +
                   "Content-Length: " + data.length() + "\r\n\r\n" +
                   data;

  client.print(request);

  while (client.connected()) {
    String line = client.readStringUntil('\n');
    if (line == "\r") break;  // Finaliza a leitura do cabeçalho HTTP
  }

  String response = client.readString();
  Serial.println("Resposta:");
  Serial.println(response);

  client.stop();
}
