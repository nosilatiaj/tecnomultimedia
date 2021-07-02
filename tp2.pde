//ALumna: Catalina Victoria Morel
//TP2 - Comisión 2 - Profesor Matias Jauregui Lorda
//Tecno1 - Diseño Multimedial 2021 - UNLP

PImage escena1, escena2, escena3, escena4, escena5, escena6, puntero, bambi, rcalogo, iatselogo, gracias;

PFont tipografiaCursiva;
PFont tipografiaMayus;

int pantalla; 

int desv1 = 255;
int desv2 = 255;
int desv3 = 255;
int desv4 = 255; 

float sube;

void setup() {
  
  size(1024, 768); //4:3

  //fill(204, 192, 134);
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
  
  //--------------------------------------------------------

  if ( pantalla == 0 ) {
    
    fill(204, 192, 134, desv1);
    
    image(escena1, random(1, 2.2)+0, random(1, 2.2)+0);
    textFont(tipografiaCursiva);
    textSize(170);
    text("Walt Disney", random(0.10, 0.52)+500, random(0.10, 0.52)+250);
    textFont(tipografiaMayus);
    textSize(70);
    text("PRESENTS", random(0.10, 0.52)+680, random(0.10, 0.52)+450);

    desv1 = desv1-1;

    if (frameCount > (4*60) ) {
      pantalla = 1;
    }

    //-------------------------------------------------------
  } else if ( pantalla == 1 ) {
    image(escena2, random(1, 2.1)+0, random(1, 2.1)+0 );

    image(bambi, random(1, 2.1)+0, random(1,2.1)+0);

    if (frameCount > (9*60 ) ) {
      pantalla = 2;
    }
    //----------------------------------------------------
  } else if ( pantalla == 2) {
    fill(204, 192, 134, desv2);


    image( escena4, random(1.5, 2.2)+0, random(1.5, 2.2)+0 );
    textFont( tipografiaMayus );
    textSize( 40 );
    text( "FROM THE STORY BY", random(0.10, 0.52)+350, random(0.10, 0.52)+200 );
    textSize( 80 );
    text( "TECHNICOLOR", random(0.10, 0.52)+500, random(0.10, 0.52)+390 );
    textSize(15);
    text( "COPYRIGHT MCMXLII", random(0.10, 0.52)+450, random(0.10, 0.52)+500);
    text( "WALT DISNEY PRODUCTIONS", random(0.10, 0.52)+450, random(0.10, 0.52)+515);
    text( "ALL RIGHTS RESERVED", random(0.10, 0.52)+450, random(0.10, 0.52)+530);
    textFont( tipografiaCursiva );
    textSize( 100 );
    text( "Felix Salten", random(0.10, 0.52)+500, random(0.10, 0.52)+255 );
    image( rcalogo, random(1, 2.1)+750, random(1, 2.1)+600 );
    image( iatselogo, random(1, 2.1)+650, random(1, 2.1)+500 );

    desv2 = desv2-1;

    if (frameCount > (13*60) ) {
      pantalla = 3;
    }
    
    //--------------------------------------------------------
    
  } else if ( pantalla == 3) {
    fill(204, 192, 134, desv3);


    image(escena3, random(1, 2.2)+0, random(1, 2.2)+0);
    textFont(tipografiaMayus);
    textSize(40);
    text("SUPERVISING DIRECTOR", random(0.10, 0.52)+400, random(0.10, 0.52)+250);
    textFont(tipografiaCursiva);
    textSize(120);
    text("David D. Hand", random(0.10, 0.52)+550, random(0.10, 0.52)+400);

    desv3 = desv3-1;

    if ( frameCount > (18*60) && pantalla < 6 ) {
      pantalla = 4;
    }
    
    //----------------------------------------------------------
    
  } else if ( pantalla == 4) {

    fill(204, 192, 134, desv4);

    image(escena5, random(1, 2.2)+0, random(1, 2.2)+0);
    textFont(tipografiaCursiva);
    textSize(70);
    text("To", random(0.10, 0.52)+width/2, random(0.10, 0.52)+200);
    textSize(100);
    text("Sidney A. Franklin-", random(0.10, 0.52)+width/2, random(0.10, 0.52)+290);
    textSize(70);
    text("our  sincere  appreciation  for  his", random(0.10, 0.52)+width/2, random(0.10, 0.52)+460);
    text("inspiring  collaboration ", random(0.10, 0.52)+410, random(0.10, 0.52)+530);

    desv4 = desv4-1;
    
    //------------------------------------------------------------
    
    if (mouseX >400 && mouseX < 600 && mouseY >300 && mouseY < 500) {

      image(gracias, width/2, sube);
      sube = sube-1.1;
    }
  }
}

//La idea del texto e imagen de fondo moviendose en random remite a los créditos de las películas de los años 40/50 
//donde se movían ligeramente 
