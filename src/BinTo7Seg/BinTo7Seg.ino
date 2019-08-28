/* Binary to 7 Segment display (16 bits)
 * Rev A 
 * 2019-08-19 Dominic Thibodeau
 * 
 * Modes: Hex / Signed Decimal / Unsigned Decimal
 *        Latched / Live
 *        
 * Target: ATmega8535
 */

/*
 * IN0-IN7:  PB0-PB7
 * IN8-IN15: PC0-PC7
 * 
 * D0: PA0
 * D1: PA1
 * D2: PA2
 * D3: PA3
 * D4: PA4
 * D5: PA5
 * 
 * IN_LATCH: PD7
 * 
 * SEGA-SEGG: PD0-PD6
 * 
 * SEL_NUMBERBASE: PA6
 * SEL_LATCHMODE: PA7
 */

#define PA 0
#define PB 1
#define PC 2
#define PD 3

#define SEL_D0 24
#define SEL_D1 25
#define SEL_D2 26
#define SEL_D3 27
#define SEL_D4 28
#define SEL_D5 29

#define SEL_NUMBERBASE A6
#define SEL_LATCHMODE A7

#define IN_LATCH 15

const int digitDelay = 2;

bool triggeredOnce = false;
int lastLatchPinState;
uint16_t latchedInput = 0;

enum DIGIT {
  DIGIT_D0 = SEL_D0,
  DIGIT_D1 = SEL_D1,
  DIGIT_D2 = SEL_D2,
  DIGIT_D3 = SEL_D3,
  DIGIT_D4 = SEL_D4,
  DIGIT_D5 = SEL_D5,
};

enum LATCHMODE {
  LATCH_LH,
  LATCH_HL,
  LATCH_LIVE
};

enum NUMBERBASE {
  NB_SIGNED_DEC,
  NB_UNSIGNED_DEC,
  NB_HEX
};

LATCHMODE getLatchMode() {
  int value = analogRead(SEL_LATCHMODE);
  if (value < 300)
    return LATCH_LH;
  else if (value > 700)
    return LATCH_HL;
  else 
    return LATCH_LIVE;  
}

NUMBERBASE getNumberBase() {
  int value = analogRead(SEL_NUMBERBASE);
  if (value < 300)
    return NB_SIGNED_DEC;
  else if (value > 700)
    return NB_UNSIGNED_DEC;
  else 
    return NB_HEX;      
}

uint16_t readInput() {
  return (portRead(PC) << 8) + portRead(PB);
}

void setup() {
  // Segments
  portMode(PD, OUTPUT);
  
  // Inputs
  portMode(PB, INPUT);
  portMode(PC, INPUT);

  pinMode(SEL_D0, OUTPUT);
  pinMode(SEL_D1, OUTPUT);
  pinMode(SEL_D2, OUTPUT);
  pinMode(SEL_D3, OUTPUT);
  pinMode(SEL_D4, OUTPUT);
  pinMode(SEL_D5, OUTPUT);  

  pinMode(IN_LATCH, INPUT_PULLUP); //TODODT: remove pullup in prod  
  lastLatchPinState = digitalRead(IN_LATCH);
}

const PROGMEM byte digits[17] = {
  0b00111111, // 0
  0b00000110, // 1
  0b01011011, // 2  
  0b01001111, // 3
  0b01100110, // 4
  0b01101101, // 5
  0b01111101, // 6
  0b00000111, // 7 
  0b01111111, // 8
  0b01101111, // 9 
  0b01110111, // A
  0b01111100, // b
  0b00111001, // C
  0b01011110, // d
  0b01111001, // E
  0b01110001, // F
  0b01000000  // -
};

void outputBlank() {
  portWrite(PD, 0);
}

void outputMinus() {
  portWrite(PD, ~pgm_read_byte_near(digits +16));
}

void outputDigit(const byte digit) {
  if (digit > 15) return;
  portWrite(PD, ~pgm_read_byte_near(digits +digit));
}

void clearDigits() {
  digitalWrite(SEL_D0, LOW);
  digitalWrite(SEL_D1, LOW);
  digitalWrite(SEL_D2, LOW);
  digitalWrite(SEL_D3, LOW);
  digitalWrite(SEL_D4, LOW);
  digitalWrite(SEL_D5, LOW);  
}

void selectDigit(DIGIT digit) {
  digitalWrite(SEL_D0, digit==DIGIT_D0);
  digitalWrite(SEL_D1, digit==DIGIT_D1);
  digitalWrite(SEL_D2, digit==DIGIT_D2);
  digitalWrite(SEL_D3, digit==DIGIT_D3);
  digitalWrite(SEL_D4, digit==DIGIT_D4);
  digitalWrite(SEL_D5, digit==DIGIT_D5);
}

void outputNumberHex(const uint16_t number) {
  outputDigit(number >> 12);
  selectDigit(DIGIT_D2);
  delay(digitDelay);

  outputDigit((number >> 8) & 0x0F);
  selectDigit(DIGIT_D3);
  delay(digitDelay);
  
  outputDigit((number >> 4) & 0x0F);
  selectDigit(DIGIT_D4);
  delay(digitDelay);

  outputDigit(number&0x0F);
  selectDigit(DIGIT_D5);
  delay(digitDelay);
}

void outputNumberUnsignedDecimal(uint16_t number) {
  if (number > 9999) {
    outputDigit(number/10000);
    selectDigit(DIGIT_D1);
    delay(digitDelay);  
  }
  if (number > 999) {
    outputDigit((number/1000)%10);
    selectDigit(DIGIT_D2);
    delay(digitDelay);      
  }
  if (number > 99) {
    outputDigit((number/100)%10);
    selectDigit(DIGIT_D3);
    delay(digitDelay);  
  }
  if (number > 9) {
    outputDigit((number/10)%10);
    selectDigit(DIGIT_D4);
     delay(digitDelay);
  }

  outputDigit(number%10);
  selectDigit(DIGIT_D5);
  delay(digitDelay);
}

void outputNumberSignedDecimal(uint16_t number) {
  if (number > 32767) {
    int16_t unsignedValue = -(int16_t)number;

    if (unsignedValue > 9999)
      selectDigit(DIGIT_D0);
    else if (unsignedValue > 999)
      selectDigit(DIGIT_D1);
    else if (unsignedValue > 99)
      selectDigit(DIGIT_D2);
    else if (unsignedValue > 9)
      selectDigit(DIGIT_D3);
    else 
      selectDigit(DIGIT_D4);
      
    outputMinus();
    delay(digitDelay);

    outputNumberUnsignedDecimal(unsignedValue);  
  } else {
    outputNumberUnsignedDecimal(number);
  }
}

void outputNumber(uint16_t number) {
  switch(getNumberBase()) {
    case NB_SIGNED_DEC:
      outputNumberSignedDecimal(number);
      break;
    case NB_UNSIGNED_DEC:
      outputNumberUnsignedDecimal(number);
      break;
    default:
      outputNumberHex(number);
  }
}

void loop() { 
  clearDigits();
  
  LATCHMODE latchMode = getLatchMode();

  if (latchMode != LATCH_LIVE) {
    bool triggered = false;
    int currLatchState = digitalRead(IN_LATCH);
    triggered = ((latchMode == LATCH_LH) && !lastLatchPinState && currLatchState) || 
      ((latchMode == LATCH_HL) && lastLatchPinState && !currLatchState);
    lastLatchPinState = currLatchState;

    if (triggered) {
      triggeredOnce = true;
      latchedInput = readInput();;
    }
    if (triggeredOnce) {
      outputNumber(latchedInput);
    }
  } else {   
    outputNumber(readInput());
  }
}
