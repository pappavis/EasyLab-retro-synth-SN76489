# EasyLab Muziek Editie #

Dit is 'n [Arduino][] shield vir [KiCad][] om muziek mee af te speel met gebruik van [SN76489][] geluids chip. <br/>
Die Sn76489 gebruik 'n 4.0000Mhz clock wat, of hardware clock osscilator kan wees, of gegenereerd met <a href="https://github.com/maxint-rd/FastPwmPin" target="_blank">FastPwmPin</a> van Maxint-RD.<br/>
<br/>
Features;<br/>
 - I2C aansluiting.<br/>
 - Gebruik arduino as clock op IO-poort 8.<br/>
 - Speel musiek af met MmlMusicPWM ook van MaxInt-RD.<br/>
 - Werkt met Arduino Nano, mega, Attiny85, D-MOS1 WiFi, Digispark USB, ESP8266-01 WiFi enz.

<img src="https://github.com/pappavis/EasyLab-retro-synth-SN76489/blob/master/KiCAD/SN76489%20arduino%20nano%20shield/plaatje/EasyLabMuziek%20editie_SN76489.jpg?raw=true" width="40%" height="40%">

[KiCad]: http://www.kicad-pcb.org
[Arduino]: http://arduino.cc/
[SN76489]: https://nl.wikipedia.org/wiki/SN76489

## Hoe om te gebruik ##
 * Download Arduino IDE
 * Download en installeer Arduino biblioteek https://github.com/maxint-rd/mxUnifiedSN76489
 * Download en installeer Arduino biblioteek https://github.com/maxint-rd/mxUnifiedPCF8574
 * Met Arduino IDE. open voorbeeld Arduino/SN76489_met_PCF8574_arduino_clock_20180131.ino
  
## In deze argief ##

* KiCAD ontwerp
    * Die skema  en KiCAD model om 'n SN76489 geluidschip te gebruik.
* Printplaat schema
    * TODO -- gerber vir produksie
* 3D model
    * Voorbeeld van die model
* Bill of Materials
    * TODO
    
## License ##

Dit is 'n projek met GNU GPL version 3-lisensie.
usage of this PCB design should credit me as author. Thanks!

## Ontwikkelaar ##
2017-12-07 Origineel release<br/>
2017-06-02 Standalone I2C versie gebruikt.<br/>

<br/>\
#EasyLabMuziek #s4kdenhaag<br/>

