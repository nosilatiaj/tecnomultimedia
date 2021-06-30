//ALumna: Catalina Victoria Morel
//Tecno1
//TP2 - Comisión 2 - Profesor Matias Jauregui Lorda
//Diseño Multimedial 2021 - UNLP

PImage escena1, escena2, escena3, escena4, escena5, escena6, puntero, bambi, rcalogo, iatselogo, gracias;

PFont tipografiaCursiva;
PFont tipografiaMayus;

int pantalla; 
int desvanecer = 255;
float sube;



void setup() {
  size(1024, 768); //4:3

  fill(204, 192, 134);
  textAlign(CENTER, TOP);

  tipografiaCursiva = createFont("Nickainley.ttf", 1);
  tipografiaMayus = createFont("cinzel.regular.otf", 1);


  escena1 = loadImage("bambi.png");
  escena2 = loadImage("bambi2.png");
  escena3 = loadImage("bambi3.png");
  escena4 = loadImage("bambi4.png");
  escena5 = loadImage("bambi5.png");
  escena6 = loadImage("bambi5.png");
  puntero = loadImage("punterobambi.png");
  bambi = loadImage("bambiletra1.png");
  rcalogo = loadImage("RCA.png");
  iatselogo = loadImage("iatselogo.png");
  gracias = loadImage("gracias.png");

  pantalla = 0;

  cursor(puntero, mouseX, mouseY);

  sube = 768;
}


void draw() {

  background(0);
  println( frameCount);
  println("La posición del mouse es: " + mouseX, mouseY);

  if ( pantalla == 0 ) {
    fill(204, 192, 134, desvanecer);
    image(escena1, 0, 0);
    textFont(tipografiaCursiva);
    textSize(170);
    text("Walt Disney", random(0.10, 0.55)+500, random(0.10, 0.55)+250);
    textFont(tipografiaMayus);
    textSize(70);
    text("PRESENTS", random(0.10, 0.55)+680, random(0.10, 0.55)+450);
    
    desvanecer = desvanecer-1;
    
    if (frameCount > (5*60) ) {
      pantalla = 1;
    }

    //-------------------------------------------------------
  } else if ( pantalla == 1 ) {
    image(escena2, 0, 0 );

    image(bambi, 0, 0 );

    if (frameCount > (10*60 ) ) {
      pantalla = 2;
    }
    //----------------------------------------------------
  } else if ( pantalla == 2) {
    image( escena4, 0, 0 );
    textFont( tipografiaMayus );
    textSize( 40 );
    text( "FROM THE STORY BY", random(0.10, 0.55)+350, random(0.10, 0.55)+200 );
    textSize( 80 );
    text( "TECHNICOLOR", random(0.10, 0.55)+500, random(0.10, 0.55)+390 );
    textSize(15);
    text( "COPYRIGHT MCMXLII", random(0.10, 0.55)+450, random(0.10, 0.55)+500);
    text( "WALT DISNEY PRODUCTIONS", random(0.10, 0.55)+450, random(0.10, 0.55)+515);
    text( "ALL RIGHTS RESERVED", random(0.10, 0.55)+450, random(0.10, 0.55)+530);
    textFont( tipografiaCursiva );
    textSize( 100 );
    text( "Felix Salten", random(0.10, 0.55)+500, random(0.10, 0.55)+255 );
    image( rcalogo, 750, 600 );
    image( iatselogo, 650, 500 );
    if (frameCount > (15*60) ) {
      pantalla = 3;
    }
  } else if ( pantalla == 3) {
    image(escena3, 0, 0);
    textFont(tipografiaMayus);
    textSize(40);
    text("SUPERVISING DIRECTOR", random(0.10, 0.55)+400, random(0.10, 0.55)+250);
    textFont(tipografiaCursiva);
    textSize(120);
    text("David D. Hand", random(0.10, 0.55)+550, random(0.10, 0.55)+400);

    if ( frameCount > (20*60) && pantalla < 6 ) {
      pantalla = 4;
    }
  } else if ( pantalla == 4) {
    image(escena5, 0, 0);
    textFont(tipografiaCursiva);
    textSize(70);
    text("To", random(0.10, 0.55)+width/2, random(0.10, 0.55)+200);
    textSize(100);
    text("Sidney A. Franklin-", random(0.10, 0.55)+width/2, random(0.10, 0.55)+290);
    textSize(70);
    text("our  sincere  appreciation  for  his", random(0.10, 0.55)+width/2, random(0.10, 0.55)+460);
    text("inspiring  collaboration ", random(0.10, 0.55)+410, random(0.10, 0.55)+530);

    if (mouseX >400 && mouseX < 600 && mouseY >300 && mouseY < 500) {

      image(gracias, width/2, sube);
      sube = sube-1.2;
    }
  }
}

//La idea del texto moviendose en random remite a los créditos de las primeras peliculas de Disney 
//donde se movían ligeramente 
