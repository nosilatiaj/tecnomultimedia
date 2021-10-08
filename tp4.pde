
PImage [] Fondo = new PImage [5];
PImage [] Perso = new PImage [3];

PFont LetraPapiro, LetraSans;
int pantalla; 
boolean opcion;

void setup() {
  size( 700, 400 );

  pantalla = 0;

  for (int i = 0; i < Fondo.length; i++) {
    Fondo[i] = loadImage("fondo_00" + i + ".jpg");
  }
  for (int z = 0; z < Perso.length; z++) {
    Perso[z] = loadImage("perso00" + z + ".png");
  }


  LetraPapiro = createFont("PAPYRUS.TTF", 1);
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
    opcion = boton(width-600, height/3, "SI", color(0));

    opcion =  boton(width-150, height/3, "NO", color(0));
  }
  if (pantalla == 4) {
    background( Fondo[3]);
    
    Cuadro(color(0,150), 10, 10, 680, 150);
    Texto(LetraSans, 20, color(255));
    text("Te das cuenta que no estás para divertirte y te vas por donde viniste.", 30, 50, color(255));
    text("Presiona D para volver a empezar.", width-400, height/3);

  }
   if (pantalla == 5) {
    background( Fondo[4]);
    image(Perso[2], 0, 0);
    Cuadro(color(0), 10, 10, 680, 150);
    Texto(LetraPapiro, 20, color(255));
    text("A VER, A VER, A VER QUE TENEMOS POR ACÁ", 30, 50, color(255));

  }
}

void mouseClicked(){
if (pantalla == 3 && opcion){
  pantalla = 4;
}
else if (pantalla==3 && !opcion){
pantalla = 5;
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
  if (key == 'd' && pantalla == 4){
    pantalla = 0;
  }
}
