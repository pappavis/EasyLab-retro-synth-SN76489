// 20170131 michiel uitprobeersel.

// SN76489_test example.
// Example by Maxint R&D for driving the SN76489 via a 74HC595 shift register
// using the mxUnifiedIO libraries.
//
// For more information and used libraries see
//    https://github.com/maxint-rd/mxUnifiedIO
//    https://github.com/maxint-rd/mxUnified74HC595
//    https://github.com/maxint-rd/mxUnifiedSN76489
//
//
#include <mxUnified74HC595.h>   // use the 74HC595 shift-register
#include <mxUnifiedPCF8574.h>    // Use the PCF8574/8575 I/O-expander
#include <mxUnifiedSN76489.h>
#include <FastPwmPin.h>

#if defined(MXUNIFIED_ATTINY)
  // ATtiny85 has no regular hardware serial. You can use TinyDebugSerial (TX=3) or software serial
  // For more info see  http://www.ernstc.dk/arduino/tinycom.html
  //#include <SoftwareSerial.h>
  //SoftwareSerial mySerial(4, 3); // RX, TX

  #include <TinyDebugSerial.h>
  TinyDebugSerial mySerial = TinyDebugSerial();   // Debug TX on PB3, no RX, only 9600, 38400 or 115200
  #define Serial mySerial
#endif

// Hardware SPI pins:
//   ATmega328: SS=10, MOSI=11, SCLK=13
//   ATtiny85:  SS=0, MOSI=1, SCLK=2
//   ESP8266:   SS=15, MOSI=13, SCLK=14
//   Suggested pins ESP-01:   SS=3 (RX), MOSI=2, SCLK=0

// create the 74HC595 output object
//mxUnified74HC595 unio = mxUnified74HC595();                  // use hardware SPI pins, no cascading
//mxUnified74HC595 unio = mxUnified74HC595(2);               // use hardware SPI pins, two cascaded shift-registers (slightly slower, but more pins)
// mxUnified74HC595 unio = mxUnified74HC595(10, 11, 13);      // alternative software SPI pins: SS, MOSI, SCLK, no cascading (slow, but pin-freedom)
//mxUnified74HC595 unio = mxUnified74HC595(10, 11, 13, 2);   // alternative software SPI pins: SS, MOSI, SCLK, two  cascaded shift-registers (even slower, but pin-freedom)
//mxUnified74HC595 unio = mxUnified74HC595(3, 2, 0);      // alternative software SPI pins for ESP-01: SS, MOSI, SCLK, no cascading (slow, but pin-freedom)
//mxUnified74HC595 unio = mxUnified74HC595(0, 1, 2);      // alternative software SPI pins for Attiny85: SS, MOSI, SCLK, no cascading (slow, but pin-freedom)

// Use the PCF8574/8575 I/O-expander
// mxUnifiedPCF8575 unio = mxUnifiedPCF8575(0x38);     // use the PCF875 I2C output expander on address 0x38
mxUnifiedPCF8574 unio = mxUnifiedPCF8574(0x38);     // use the PCF875 I2C output expander on address 0x38
//  Hardware I2C on ESP8266/D1-mini: SCL=GPIO5/D1, SDA=GPIO4/D2

// define the pin used and initialize the mxUnifiedSN76489 object
// mxUnifiedSN76489 sound(&unio);    // use expanded pin 0-7 for data, expanded pin 8 for NotWE
mxUnifiedSN76489 sound(&unio,8);    // use MCU pin 4 for NotWE (eg when using only 8-bit expander)

void setup()
{
  Serial.begin(115200);
  Serial.print(F("mxUnifiedSN76489 SN76489_test"));

  // Generate clock signal on pin D3
  // ATmega328/168 (Uno/Nano/Pro Mini): pin D3 or pin D11 (D11 toggle only)
  FastPwmPin::enablePwmPin(3, 4000000L, 50);

  // initialize the sound chip
  //  unio.setBitOrder(LSBFIRST);   // reverse connections on 74HC595 (could also be done by changing wires)
  unio.begin();     // start using the mxUnified74HC595/I2C expander
  //  unio.begin(1000000L);      // for I2C one can specify fast I2C or when experiencing noise, try slower I2C. Pullups may help too.

  for(int teller1 = 0; teller1 < 8; teller1++)
  {
    unio.digitalWrite(teller1, HIGH);
    delay(100);
    unio.digitalWrite(teller1, LOW);
    delay(100);
  }
  
  sound.begin();    // will call SilenceAllChannels();

  // sound a beep
  Serial.println(F("beep()"));
  sound.beep(100);
  delay(100);
  sound.beep(100);
  delay(100);
  sound.beep(100);
  delay(900);

  // make a two-voice bell sound
  Serial.println(F("bell"));
  sound.tone(440.0f,0,SN76489_CHN0);
  delay(100);
  for(int n=0; n<15; n++)
  {
    sound.volume(n, SN76489_CHN0);
    if(n==8) sound.tone(220.0f,0,SN76489_CHN1);
    delay(50);
  }
  for(int n=0; n<15; n++)
  {
    sound.volume(n, SN76489_CHN1);
    delay(50);
  }
  sound.stop();
  delay(500);
 
  // sound a siren
  Serial.println(F("siren"));
  for(int n=0; n<10; n++)
  {
    for(float ftTone=100.0; ftTone<4000.0; ftTone+=10)
    {
      sound.tone(ftTone, n);
      delay(1);
    }
  }
  sound.stop();

  // sound some noise
  Serial.println(F("noise"));
  for(int n=0; n<10; n+=3)
  {
    for(float ftTone=0.0; ftTone<600.0; ftTone+=10)
    {
      sound.tone(ftTone, n, SN76489_CHN3);
      delay(100);
    }
  }
  sound.stop();
  delay(500);

  Serial.println(F("loop"));
}

void loop()
{
  // lets sound a small tick every second
  // sound.beep(5);

  for(int n=0; n<10; n++)
  {
    for(float ftTone=100.0; ftTone<4000.0; ftTone+=10)
    {
      sound.tone(ftTone, n);
      delay(1);
    }
  }
  sound.stop();
    
  delay(1500);
  
}
