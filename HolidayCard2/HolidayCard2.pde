
Snow[] snow;
Elsa elsa;
PImage bg;


void setup(){
  size(1000,500);
  bg=loadImage("frozenbg.jpg");
  elsa=new Elsa();
  snow=new Snow[100];
  for(int i=0;i<snow.length;i++){
    snow[i]=new Snow();
  }
  
}

void draw(){
  background(0);
  image(bg,-100,-100);
  elsa.move();
  elsa.show();
  elsa.path();
  for(Snow s:snow){
    s.move();
    s.show();
  }
}

void mousePressed(){
 noLoop(); 
}
