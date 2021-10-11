//Catalina Victoria Morel
//TECNO_1_Comision_2
//2021
//https://youtu.be/azBr3FZWdl4

PImage [] Fondo = new PImage [11];
PImage [] Perso = new PImage [9];

PFont LetraPapiro, LetraSans;
int pantalla; 
boolean opcion1, opcion2;

void setup() {
  size( 700, 400 );

  pantalla = 0;

  for (int i = 0; i < Fondo.length; i++) {
    Fondo[i] = loadImage("fondo_00" + i + ".jpg");
  }
  for (int z = 0; z < Perso.length; z++) {
    Perso[z] = loadImage("perso00" + z + ".png");
  }


  LetraPapiro = createFont("papyrus-let-bold.ttf", 1);
  LetraSans = createFont("comic-sans-ms_[allfont.es].ttf", 1);
  noStroke();
}


void draw() {

  if (pantalla == 0) {
    background( Fondo[0] );

    Texto(LetraSans, 20, color(0));
    text("Presiona A para entrar a Snowdin", width/2, height-30);
  }
  if (pantalla == 1) {
    background( Fondo[1]);
    image(Perso[0], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);

    Texto(LetraSans, 20, color(255));
    text("Asi que has caido en las profundidades.", 30, 50, color(255));
    text("Ahora mismo te encuentras en Snowdin, y junto con mi hermano", 30, 80, color(255));
    text("tenemos la tarea de impedir que entren Humanos", 30, 110, color(255));
    Texto(LetraSans, 15, color(255));
    text("Presiona B para seguir hablando con Sans", width-350, height-248);
  }
  if (pantalla == 2) {
    background( Fondo[2]);
    image(Perso[0], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraSans, 20, color(255));
    text("Pero vos me caes piola asi que te dejaré pasar con una condición", 30, 70, color(255));
    Texto(LetraSans, 15, color(255));

    text("Presiona C para conocer la condición", width-400, height/3);
  }
  if (pantalla == 3) {
    background( Fondo[2]);
    image(Perso[1], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraSans, 20, color(255));
    text("A mi realmente no me importa atrapar a nadie, pero a mi hermano si", 30, 50, color(255));
    text("El es inofensivo, ¿que tal si te dejas capturar", 30, 70, color(255));
    text("para que él se entretenga un rato?", 30, 90, color(255));
    Texto(LetraSans, 15, color(255));

    text("¿Aceptas?", width-400, height/3);

    opcion1 = boton(width-600, height/3, "SI", color(0));
    opcion2 =  boton(width-150, height/3, "NO", color(0));
  }
  if (pantalla == 4) {
    background( Fondo[4]);
    image(Perso[2], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraPapiro, 15, color(255));
    text("A VER, A VER, A VER QUE TENEMOS POR ACÁ.   UN HUMANO!!", 25, 50, color(255));
    text("YO NO PUEDO CREER LO QUE VEO.   ¿TE DAS CUENTA QUE ", 25, 80, color(255));
    text("NO PUEDO DEJARTE PASAR ASI COMO ASI?", 25, 110, color(255));
    text("Presiona E para seguir hablando con Sans y Papyrus", width-400, height-250);
  }//te volves x la puerta
  if (pantalla == 5) {
    background( Fondo[3]);    
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraSans, 20, color(255));
    text("Te das cuenta que no estás para divertirte y te vas por donde viniste.", 30, 50, color(255));
    text("Presiona D para volver a empezar.", width-400, height/3);
  } //continuacion y decision papyrus y sans
  if (pantalla == 6) {
    background( Fondo [4]);
    image(Perso[2], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraPapiro, 15, color(255));
    text("HUMANO!! NO PASARAS DE ESTA AREA!! YO, EL GRAN PAPYRUS", 25, 50, color(255));
    text("TE DETENDRÉ Y ENTONCES TE CAPTURARE", 25, 80, color(255));
    text("¡¡CONTINUA SOLO SI TE ATREVES!!", 25, 110, color(255));

    text("¿DESEAS CONTINUAR?", width-400, height/3);

    opcion1 = boton(width-600, height/3, "SI", color(0));
    opcion2 =  boton(width-150, height/3, "NO", color(0));
  }
  //decidis ir por helado
  if (pantalla == 7) {
    background(Fondo[5]);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraPapiro, 20, color(255));
    text("Ya te estaba estresando tanta cháchara, decidiste ir por helado.", 30, 50, color(255));
    text("Presiona D para volver a empezar.", width-400, height/3);
  }
  //continuas y te atreves omg
  if (pantalla == 8) {
    background(Fondo[6]);
    image(Perso[3], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraPapiro, 20, color(255));
    text("NYEHEHE! NUNCA LO RESOLVERÁ! UM, EN QUE ESTABAMOS?", 23, 50, color(255));
    text("AH SI. HUMANO!! RESUELVE ESTE PUZZLE HECHO POR SANS", 23, 80, color(255));
    text("ESTA ESPECIALMENTE DISEÑADO PARA DETENERTE", 23, 110, color(255));

    text("Presiona F para ver el puzzle", width-400, height-250);
  }
  if (pantalla == 9) {
    background(Fondo[7]);
    text("Presiona G para resolver el puzzle", width/2, height-5);
  }
  if (pantalla == 10) {
    background(Fondo[6]);
    image(Perso[4], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);

    pushStyle();
    Texto(LetraPapiro, 20, color(255));
    text("-EHH?? NO HA PASADO NADA!!", 23, 50, color(255));
    popStyle();

    Texto(LetraSans, 20, color(255));
    text("-Ups, sabia que tendria que haber usado el crucigrama de hoy", 23, 80, color(255));
    Texto(LetraPapiro, 20, color(255));

    text("-QUE? CRUCIGRAMA? EN MI OPINION LA SOPA DE LETRAS ES", 23, 110, color(255));
    text(" FACILMENTE LA MAS DIFICIL", 23, 125, color(255));
    textSize(15);
    text("Presiona H para seguir hablando con Sans y Papyrus", width-400, height-250);
  } /////////////////////resolver disputa
  if (pantalla == 11) {
    background(Fondo[6]);
    image(Perso[4], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    pushStyle();
    Texto(LetraSans, 20, color(255));
    text("-Que? En serio? Ese revoltijo de letras es superfácil", 23, 50, color(255));
    popStyle();
    Texto(LetraPapiro, 20, color(255));

    text("-NO ES TAN FACIL COMO CREES! ", 23, 80, color(255));
    text("-HUMANO!! RESUELVE ESTA DISPUTA", 23, 110, color(255));
    textSize(15);
    text("¿Cual es más dificil? ", width-400, height/3);
    text("Opcion 1: SOPA. Opcion 2: CRUCIGRAMA ", width-470, height-250);

    opcion1 = boton(width-600, height/3, "1", color(0));
    opcion2 =  boton(width-150, height/3, "2", color(0));
  } //ofrecer cena
  if (pantalla == 12) {
    background(Fondo[6]);
    image(Perso[5], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraPapiro, 15, color(255));
   text("PERO CLARO QUE ESA ES LA RESPUESTA CORRECTA NYEHEHE!", 23, 50, color(255));
   text("HE DECIDIDO DEJARTE EN PAZ Y DARTE UNA CENA.", 23, 80, color(255));
   text("UN HUMANO TAN INTELIGENTE DEBE SER PREMIADO! ", 23, 110, color(255));
   text("SEGUINOS A NUESTRA CABAÑA, COMEREMOS AHI", 23, 130, color(255));
textSize(15);
    text("Presiona I para seguirles a la cabaña", width-300, height-250);

  }
  if (pantalla == 13) {
    background(Fondo[8]);
    image(Perso[6], 0, 0);
    Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraPapiro, 15, color(255));
   text("-TOMA SANS, VOS TAMBIÉN COME.", 23, 50, color(255));
      text("-HUMANO, ¿POR QUE NO TE QUEDAS Y PASAS LA NOCHE ACA?", 23, 80, color(255));
      text("-HAY UNA CAMA DE MÁS EN EL CUARTO DE HUESPEDES", 23, 95, color(255));
         Texto(LetraSans, 15, color(255));
      text("-*susurra* Si, mi hermano ha decidido dejar la idea de atraparte, que suertudo sos.", 23, 120, color(255));

    text("Presiona J para terminar la aventura con Papyrus y Sans", width-450, height-250);

} //carcel 
  if (pantalla == 14){
  background(Fondo[6]);
  image(Perso[7], 0, 0);
      Cuadro(color(0, 180), 10, 10, 680, 150);
    Texto(LetraPapiro, 15, color(255));
   text("K-K-KHEE????? *se laguea* ¿NO ME ESTAS DANDO LA RAZON?", 23, 50, color(255));
   text("¡¡YO NO TE LO PUE' CREER!! REALMENTE NO QUERIA LLEGAR A ESTO PERO ", 23, 80, color(255));
   text("¡¡YA ESTA!! ¡¡NO QUIERO PENSARLO MAS!! MARCHE PRESO", 23, 100, color(255));
   text("A PASAR LA NOCHE EN EL GALPÓN A PAN Y AGUA HASTA QUE MAÑANA TE LLEVE ", 23, 115, color(255));
   text("CON UNDYNE, LA LIDER DE LA GUARDIA REAL. ELLA SABRÁ QUE HACER CON VOS", 23, 130, color(255));

    text("Presiona K para aceptar tu destino", width-300, height-245);
} //galpon
if (pantalla == 15){
background(Fondo[9]);
image(Perso[8], 0, 0);
    text("Presiona J para terminar la aventura con Papyrus y Sans", width-450, height-40);
}
if (pantalla == 16){
background(Fondo[10]);
 
        text("Presiona D para volver a jugar.", width-600, height-30);

}
}

void mouseClicked() {
  if (pantalla == 3 && opcion1) {
    pantalla = 4;
    opcion1 = false;
  } else if (pantalla==3 && opcion2) {
    pantalla = 5;
    opcion2 = false;
  }

  if (pantalla == 6 && opcion1) {
    pantalla = 8;
    opcion1 = false;
  } else if (pantalla== 6 && opcion2) {
    pantalla = 7;
    opcion2 = false;
  }
  if (pantalla == 11 && opcion1) {
    pantalla = 12;
    opcion1 = false;
  } else if (pantalla == 11 & opcion2) {
    pantalla = 14;
    opcion2 = false;
  }
}

void keyPressed() {
  if (key == 'a' && pantalla == 0) {
    pantalla = 1;
  }
  if (key == 'b' && pantalla == 1) {
    pantalla = 2;
  }
  if (key == 'c' && pantalla == 2) {
    pantalla = 3;
  }
  if (key == 'd' && pantalla == 5 || pantalla == 7 || pantalla == 16) {
    pantalla = 0;
  }
  if (key == 'e' && pantalla == 4) {
    pantalla = 6;
  }
  if (key == 'f' && pantalla == 8) {
    pantalla = 9;
  }
  if (key == 'g' && pantalla == 9) {
    pantalla = 10;
  }
  if (key == 'h' && pantalla == 10) {
    pantalla = 11;
  }
  if (key == 'i' && pantalla == 12) {
  pantalla = 13; 
}
if (key == 'j' && pantalla == 13 || pantalla == 15){
pantalla = 16;
}
if (key == 'k' && pantalla == 14){
pantalla = 15;
}
}
