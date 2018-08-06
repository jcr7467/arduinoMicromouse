

#include <NewPing.h>

#define LED_PIN 13 // Pin with LED attached.

void setup() {
  pinMode(LED_PIN, OUTPUT);
  NewPing::timer_ms(500, toggleLED); // Create a Timer2 interrupt that calls toggleLED in your sketch once every 500 milliseconds.
}

void loop() {
  // Do anything here, the Timer2 interrupt will take care of the flashing LED without your intervention.
}

void toggleLED() {
  digitalWrite(LED_PIN, !digitalRead(LED_PIN)); // Toggle the LED.
}