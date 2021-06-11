//ALumna: Catalina Victoria Morel
//TP2 - Comisión 2 - Profesor Matias Jauregui Lorda
//Diseño Multimedial 2021 - UNLP

PImage escena1, escena2, escena3, escena4, escena5, escena6, puntero, bambi, rcalogo, iatselogo, gracias;

PFont tipografiaCursiva;
PFont tipografiaMayus;

int pantalla; 

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
}


void draw() {

  background(0);
  println( frameCount);
  println("La posición del mouse es: " + mouseX, mouseY);
  //image(escena1, 0, 0);

  //textFont(tipografiaCursiva);
  //text("Walt Disney", 500, 250);

  //textFont(tipografiaMayus);
  //text("PRESENTS", 660, 450);

  if ( pantalla == 0 ) {
    image(escena1, 0, 0);
    textFont(tipografiaCursiva);
    textSize(170);
    text("Walt Disney", 500, 250);
    textFont(tipografiaMayus);
    textSize(70);
    text("PRESENTS", 680, 450);

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
    text( "FROM THE STORY BY", 350, 200 );
    textSize( 80 );
    text( "TECHNICOLOR", 500, 390 );
    textSize(15);
    text( "COPYRIGHT MCMXLII", 450, 500);
    text( "WALT DISNEY PRODUCTIONS", 450, 515);
    text( "ALL RIGHTS RESERVED", 450, 530);
    textFont( tipografiaCursiva );
    textSize( 100 );
    text( "Felix Salten", 500, 255 );
    image( rcalogo, 750, 600 );
    image( iatselogo, 650, 500 );

    if (frameCount > (15*60) ) {
      pantalla = 3;
    }
  } else if ( pantalla == 3) {
    image(escena3, 0, 0);
    textFont(tipografiaMayus);
    textSize(40);
    text("SUPERVISING DIRECTOR", 400, 250);
    textFont(tipografiaCursiva);
    textSize(120);
    text("David D. Hand", 550, 400);

    if ( frameCount > (20*60) && pantalla < 6 ) {
      pantalla = 4;
    }
  } else if ( pantalla == 4) {
    image(escena5, 0, 0);
    textFont(tipografiaCursiva);
    textSize(70);
    text("To", width/2, 200);
    textSize(100);
    text("Sidney A. Franklin-", width/2, 290);
    textSize(70);
    text("our  sincere  appreciation  for  his", width/2, 460);
    text("inspiring  collaboration ", 410, 530);

    if (mouseX >400 && mouseX < 600 && mouseY >300 && mouseY < 500){
      
      image(gracias, width/2, height/2);
    } 
    }
  

}
