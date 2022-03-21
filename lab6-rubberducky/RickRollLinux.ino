//This DigiSpark script opens up Rick Astley's - Never Gonna Give You Up
#include "DigiKeyboard.h"
void setup() {
  //empty
}

void loop() {
  DigiKeyboard.delay(2000);
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.sendKeyStroke(KEY_F3, MOD_ALT_LEFT);
  DigiKeyboard.delay(2000);
  DigiKeyboard.print("terminal");
  DigiKeyboard.delay(600);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(3000);
  DigiKeyboard.print("open https://youtu.be/dQw4w9WgXcQ?t=43s");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(5000);
  for(;;){ /*empty*/ }
  exit(0);
}
