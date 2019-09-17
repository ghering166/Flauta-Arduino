import processing.sound.*;
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

SoundFile C4;  //Do
SoundFile D4;  //Re
SoundFile F4;  //Fa
SoundFile E4;  //Mi
SoundFile G4;  //So
SoundFile A4;  //La
SoundFile B4;  //Si
SoundFile CB4; //Dó

SoundFile C5;  //Do
SoundFile D5;  //Re
SoundFile F5;  //Fa
SoundFile E5;  //Mi
SoundFile G5;  //So
SoundFile A5;  //La
SoundFile B5;  //Si

boolean toggle = false;
boolean is_agudo= false; 

boolean flag = false;

int s;  //cronometro em segundos

int s_c4;
int s_d4;
int s_e4;
int s_f4;
int s_g4;
int s_a4;
int s_b4;
int s_cb4;

int s_c5;
int s_d5;
int s_e5;
int s_f5;
int s_g5;
int s_a5;
int s_b5;

int c4_p ;
int d4_p ;
int e4_p ;
int f4_p ;
int g4_p ;
int a4_p ;
int b4_p ;
int cb4_p ;
int escala;
int iniciou = 0;

int sopro;
float volume;


void setup() {
  size(400, 400);
  background(0);


  arduino = new Arduino(this, Arduino.list()[2], 57600);
  arduino.pinMode(0, Arduino.INPUT);
  arduino.pinMode(8, Arduino.INPUT_PULLUP);
  arduino.pinMode(7, Arduino.INPUT_PULLUP);
  arduino.pinMode(6, Arduino.INPUT_PULLUP);
  arduino.pinMode(5, Arduino.INPUT_PULLUP);
  arduino.pinMode(4, Arduino.INPUT_PULLUP);
  arduino.pinMode(3, Arduino.INPUT_PULLUP);
  arduino.pinMode(2, Arduino.INPUT_PULLUP);
  arduino.pinMode(9, Arduino.INPUT_PULLUP);

  C4 = new SoundFile(this, "Do_teste.wav");
  D4 = new SoundFile(this, "Re_teste.wav");
  F4 = new SoundFile(this, "Fa_teste.wav");
  E4 = new SoundFile(this, "Mi_teste.wav");
  G4 = new SoundFile(this, "So_teste.wav");
  A4 = new SoundFile(this, "La_teste.wav");
  B4 = new SoundFile(this, "Si_teste.wav");
  CB4 = new SoundFile(this, "Dó_teste.wav");
  
  C5 = new SoundFile(this, "Dó_Agudo_teste.wav");
  D5 = new SoundFile(this, "Ré_Agudo_teste.wav");
  F5 = new SoundFile(this, "Fa_Agudo_teste.wav");
  E5 = new SoundFile(this, "Mi_Agudo_teste.wav");
  G5 = new SoundFile(this, "Sol_Agudo_teste.wav");
  A5 = new SoundFile(this, "La_Agudo_teste.wav");
  B5 = new SoundFile(this, "Si_Agudo_teste.wav");

  c4_p = arduino.digitalRead(8);
  d4_p = arduino.digitalRead(7);
  e4_p = arduino.digitalRead(6);
  f4_p = arduino.digitalRead(5);
  g4_p = arduino.digitalRead(4);
  a4_p = arduino.digitalRead(3);
  b4_p = arduino.digitalRead(2);
  cb4_p = arduino.digitalRead(1);
  escala = arduino.digitalRead(9);

  sopro = arduino.analogRead(0);
  volume = map(sopro, 58, 120, 0.1, 1.0);
}

void draw() 
{
  println(c4_p + " " +d4_p + " " +e4_p + " " +f4_p + " " +g4_p + " " +a4_p + " " +b4_p + " " + sopro + " " + volume + " " + s_c4);
  c4_p = arduino.digitalRead(8);
  d4_p = arduino.digitalRead(7);
  e4_p = arduino.digitalRead(6);
  f4_p = arduino.digitalRead(5);
  g4_p = arduino.digitalRead(4);
  a4_p = arduino.digitalRead(3);
  b4_p = arduino.digitalRead(2);
  escala = arduino.digitalRead(9);
  if( iniciou == 0 && escala == 1)
  {
    iniciou = 1;
  }
  else if(iniciou == 1)
  {
    if(escala == 0 && flag == false)
    {  
      flag = true;
      toggle = !toggle;
    }
    if(escala == 1 && flag == true)
    {
     flag = false; 
    }
  }

  sopro = arduino.analogRead(0);
  volume = map(sopro, 58, 170, 0.1, 1.0);
  //sopro = 60; // para fins de debug
  if (volume>1.0)
    volume = 1.0;
  if (volume<0.0)
    volume = 0.0;


  if (c4_p == 0 && sopro>57) 
  {
    if(toggle == false)
    {
      imagem(123, 24, 12,"Dó");
     
      if (C4.isPlaying() == false) {
        s_c4 = millis();
        C4.amp(volume);
        C4.play();
      } else {
        C4.amp(volume);
        if (millis() - s_c4 >= 400) {
          s_c4 = millis()-300;
          C4.jump(0.3);
          C4.amp(volume);
        }
      }
    }
    else
    {
      imagem(123, 24, 12,"Dó agudo");
     
      if (C5.isPlaying() == false) {
        s_c5 = millis();
        C5.amp(volume);
        C5.play();
      } else {
        C5.amp(volume);
        if (millis() - s_c5 >= 400) {
          s_c5 = millis()-300;
          C5.jump(0.3);
          C5.amp(volume);
        }
      }
    }
  }

  if (d4_p == 0 && sopro>57) 
  {
    if(toggle == false)
    {
      imagem(13, 24, 112,"Ré");
     
      if (D4.isPlaying() == false) {
        s_d4 = millis();
        D4.amp(volume);
        D4.play();
      } else {
        D4.amp(volume);
        if (millis() - s_d4 >= 600) {
          s_d4 = millis()-300;
          D4.jump(0.2);
          D4.amp(volume);
        }
      }
    }
    else
    {
      imagem(13, 24, 112,"Ré agudo");
     
      if (D5.isPlaying() == false) {
        s_d5 = millis();
        D5.amp(volume);
        D5.play();
      } else {
        D5.amp(volume);
        if (millis() - s_d5 >= 600) {
          s_d5 = millis()-300;
          D5.jump(0.2);
          D5.amp(volume);
        }
      }
    }
  }

  if (f4_p == 0 && sopro>57) 
  {
    if(toggle == false)
    {
      imagem(135, 15, 12,"Fá");
      
      if (F4.isPlaying() == false) {
        s_f4 = millis();
        F4.amp(volume);
        F4.play();
      } else {
        if (millis() - s_f4 >= 400) {
          s_f4 = millis()-300;
          F4.jump(0.3);
          F4.amp(volume);
        }
      }
    }
    else
    {
      imagem(135, 15, 12,"Fá agudo");
      
      if (F5.isPlaying() == false) {
        s_f5 = millis();
        F5.amp(volume);
        F5.play();
      } else {
        if (millis() - s_f5 >= 500) {
          s_f5 = millis()-400;
          F5.jump(0.4);
          F5.amp(volume);
        }
      }
    }
  }

  if (e4_p == 0 && sopro>57) 
  {
    if(toggle == false)
    {
      imagem(155, 68, 92,"Mi");
     
      if (E4.isPlaying() == false) {
        s_e4 = millis();
        E4.amp(volume);
        E4.play();
      } else {
        if (millis() - s_e4 >= 400) {
          s_e4 = millis()-300;
          E4.jump(0.3);
          E4.amp(volume);
        }
      }
    }
    else
    {
      imagem(155, 68, 92,"Mi agudo");
     
      if (E5.isPlaying() == false) {
        s_e5 = millis();
        E5.amp(volume);
        E5.play();
      } else {
        if (millis() - s_e5 >= 400) {
          s_e5 = millis()-300;
          E5.jump(0.3);
          E5.amp(volume);
        }
      }
    }
  }

  if (g4_p == 0 && sopro>57) 
  {
    if(toggle == false)
    {
      imagem(29, 100, 22,"Sol");
    
      if (G4.isPlaying() == false) {
        s_g4 = millis();
        G4.amp(volume);
        G4.play();
      } else {
        if (millis() - s_g4 >= 400) {
          s_g4 = millis()-300;
          G4.jump(0.3);
          G4.amp(volume);
        }
      }
    }
    else
    {
      imagem(29, 100, 22,"Sol agudo");
    
      if (G5.isPlaying() == false) {
        s_g5 = millis();
        G5.amp(volume);
        G5.play();
      } else {
        if (millis() - s_g5 >= 400) {
          s_g5 = millis()-300;
          G5.jump(0.3);
          G5.amp(volume);
        }
      }
    }
  }

  if (a4_p == 0 && sopro>57) 
  {
    if(toggle == false)
    {
      imagem(35, 34, 62,"Lá");
     
      if (A4.isPlaying() == false) {
        s_a4 = millis();
        A4.amp(volume);
        A4.play();
      } else {
        if (millis() - s_a4 >= 400) {
          s_a4 = millis()-300;
          A4.jump(0.3);
          A4.amp(volume);
        }
      }
    }
    else
    {
      imagem(35, 34, 62,"Lá Agudo");
     
      if (A5.isPlaying() == false) {
        s_a5 = millis();
        A5.amp(volume);
        A5.play();
      } else {
        if (millis() - s_a5 >= 400) {
          s_a5 = millis()-300;
          A5.jump(0.3);
          A5.amp(volume);
        }
      }
    }
  }

  if (b4_p == 0 && sopro>57) 
  {
    if(toggle == false)
    {
      imagem(145, 94, 12,"Si");
      
      if (B4.isPlaying() == false) {
        s_b4 = millis();
        B4.amp(volume);
        B4.play();
        // println(B4.duration());
      } else 
      {
        if (millis() - s_b4 >= 400) 
        {
          s_b4 = millis()-300;
          B4.jump(0.3);
          B4.amp(volume);
        }
      }
    }
    else
    {
      imagem(145, 94, 12,"Si Agudo");
      
      if (B5.isPlaying() == false) {
        s_b5 = millis();
        B5.amp(volume);
        B5.play();
        // println(B4.duration());
      } else 
      {
        if (millis() - s_b5 >= 400) 
        {
          s_b5 = millis()-300;
          B5.jump(0.3);
          B5.amp(volume);
        }
      }
    }
  }

  if (cb4_p == 7 && sopro>57) 
  {
    imagem(145, 94, 12,"Dó Agudo");
   
    if (CB4.isPlaying() == false) {
      s_cb4 = millis();
      CB4.amp(volume);
      CB4.play();
    } else {
      if (millis() - s_cb4 >= 400) {
        s_cb4 = millis()-300;
        CB4.jump(0.3);
        CB4.amp(volume);
      }
    }
  }
  DoisBotoes(toggle);
}
