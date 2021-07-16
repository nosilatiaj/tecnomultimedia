//Catalina Victoria Morel
//TP3 - Comisión 2 - Profesor Matias Jauregui Lorda
//Tecno1 - Diseño Multimedial 2021 - UNLP

//https://youtu.be/cmrm61C-FFE

float m;
int x,y;


void setup(){
size(800,800);
noFill();
ellipseMode( CENTER );

float m  = 0;
int x = 0;
int y = 0;

}

void draw(){
  
  translate(width/-190, height/-100);
    rotate(map(mouseX,0,width,0,PI/25));

  background(100);

for(int x = 4; x < 500; x+=8){
  for(int y = 2; y < 100; y*=2){
  
    if(x*3 >= 2 && y*2 >= 5){
      
      float m = map(mouseX, 0, width/2, 0, 700);
      rotate(map(mouseY, 0, height/-100,PI/2, PI/2));
      translate(map(mouseX, 0, width/-190, 60*10, 100*5),0);
      
    }
      
      {
         float mov = (width/3)+ x+y/2;

    ellipse(width/2, height/2, x, mouseY);
      }
      
      
   if (mousePressed == true){
      fill(random(50,255),50, 122, 2);
      
      
    

}

}
    
      
   
    
    }
    }
  
    
 
    
    
