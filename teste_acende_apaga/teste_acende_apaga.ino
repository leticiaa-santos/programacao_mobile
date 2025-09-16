
const int ledPin = 18;       // Pino do LED
const int buttonPin = 14;    // Pino do botão

bool ledState = false;      // Estado do LED
bool lastButtonState = HIGH;

void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT_PULLUP); // Pull-up interno
}

void loop() {
  bool buttonState = digitalRead(buttonPin);
  
  // Detecta borda de descida (aperto do botão)
  if (lastButtonState == HIGH && buttonState == LOW) {
    ledState = !ledState;         // Alterna estado do LED
    digitalWrite(ledPin, ledState ? HIGH : LOW);
    
    // Aqui você chamaria a função que envia o estado para o Google Sheets
    // enviarParaGoogleSheets(ledState);
  }
  
  lastButtonState = buttonState;
  delay(50); // Pequeno debounce
}
