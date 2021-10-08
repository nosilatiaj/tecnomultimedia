
//Font

void Texto (PFont Fuente, int Tam, color c){

textFont(Fuente);
textSize(Tam);
fill(c);
}

//cuadro de dialogo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii

void Cuadro (color c, float posX, float posY, float tamX, float tamY) {
  
fill(c);
 stroke(255);
 strokeWeight(5);
rect( posX, posY, tamX, tamY);

}

//boton opcion siono

boolean boton( float x, float y, String t, color col){
  int a = 30;
  int h = 10;
  rect(x, y, a, h);
  fill(col);
  text(t, x, y+10);
  fill(255);
boolean p;
if( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h){
p = true;
} else{
  p = false;
}
return p;

}
