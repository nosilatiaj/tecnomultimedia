//TP FINAL
//Catalina Victoria Morel y Eliana Iguain
//TECNO 1
//Docente: Jauregui 
//VIDEO YOUTUBE: https://youtu.be/KbOwAWi0U4c
//DICIEMBRE 2021


Aventura aventura;
void setup() {
  size(700, 600);
  aventura = new Aventura();
}

void draw() {  
  aventura.dibujarAventura();
}

void mousePressed() {
  aventura.caminoMouse();
  aventura.juego.clickear();
  aventura.juego.recolectarMonedas();
  aventura.juego.recolectarMonedasFalsas();
}

void keyPressed() {
  aventura.caminoTecla();
}
