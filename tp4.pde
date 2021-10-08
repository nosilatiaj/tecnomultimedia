//TP en construcción debido a que curso 5 materias y no he podido organizarme bien en la realización de tps(toy hasta el cuello con todos).
//Antes del martes 12 estará listo


PImage [] Fondo = new PImage [7];
PImage [] Perso = new PImage [4];

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
    Cuadro(color(0), 10, 10, 680, 150);

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
    Cuadro(color(0), 10, 10, 680, 150);
    Texto(LetraSans, 20, color(255));
    text("Pero vos me caes piola asi que te dejaré pasar con una condición", 30, 70, color(255));
    Texto(LetraSans, 15, color(255));

    text("Presiona C para conocer la condición", width-400, height/3);
  }
  if (pantalla == 3) {
    background( Fondo[2]);
    image(Perso[1], 0, 0);
    Cuadro(color(0), 10, 10, 680, 150);
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
    Cuadro(color(0), 10, 10, 680, 150);
    Texto(LetraPapiro, 15, color(255));
    text("A VER, A VER, A VER QUE TENEMOS POR ACÁ.   UN HUMANO!!", 25, 50, color(255));
    text("YO NO PUEDO CREER LO QUE VEO.   ¿TE DAS CUENTA QUE ", 25, 80, color(255));
    text("NO PUEDO DEJARTE PASAR ASI COMO ASI?", 25, 110, color(255));
    text("Presiona E para seguir hablando con Sans y Papyrus", width-400, height-250);
  }//te volves x la puerta
  if (pantalla == 5) {
    background( Fondo[3]);    
    Cuadro(color(0, 150), 10, 10, 680, 150);
    Texto(LetraSans, 20, color(255));
    text("Te das cuenta que no estás para divertirte y te vas por donde viniste.", 30, 50, color(255));
    text("Presiona D para volver a empezar.", width-400, height/3);
  } //continuacion y decision papyrus y sans
  if (pantalla == 6) {
    background( Fondo [4]);
    image(Perso[2], 0, 0);
    Cuadro(color(0), 10, 10, 680, 150);
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
    Cuadro(color(0, 150), 10, 10, 680, 150);
    Texto(LetraPapiro, 20, color(255));
    text("Ya te estaba estresando tanta cháchara, decidiste ir por helado.", 30, 50, color(255));
    text("Presiona D para volver a empezar.", width-400, height/3);
  }
  //continuas y te atreves omg
  if (pantalla == 8) {
    background(Fondo[6]);
    image(Perso[3], 0, 0);
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
  if (key == 'd' && pantalla == 5 || pantalla == 7) {
    pantalla = 0;
  }
  if (key == 'e' && pantalla == 4) {
    pantalla = 6;
  }
}
