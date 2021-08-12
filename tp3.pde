/* 

TP3 - Recuperatorio 12/8
Alumna: Catalina Victoria Morel 88333/6
TECNO 1 - UNLP
Docente: Jauregui Lorda
Diseño Multimedial - FDA 2021

https://youtu.be/IB8tOLSfns0

*/


int anchoElipse, rotacion, diametro;



void setup() {
  size(800, 800);
  noFill();
  ellipseMode( CENTER );
  anchoElipse = 0;
  rotacion = 0;
  diametro = 500;
  noCursor();
}

void draw() {

  background(random(50, 100), 44, 216);


  translate(mouseX, mouseY);

  for (int x = 5; x+anchoElipse < diametro; x+=10) {
    rotate(map(rotacion, 0, 100, 0, PI/2));
    ellipse(0, 0, x+anchoElipse, diametro); 
  }

  circle (0, 0, diametro); 
 
  
  if (mousePressed == true) {
    rotacion+=5; 
    anchoElipse+=5; 

    fill(random(0, 255), 216, 180, 5);
  }
}


void keyPressed() {
  rotacion=0;
  anchoElipse=0;
  diametro = 500;
  noFill();
}
