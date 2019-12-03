
Snow[] snow;
Fairy fairy;
Elsa elsa;
PImage bg;
float m=1000;


void setup(){
  size(1000,500);
  bg=loadImage("frozenbg.jpg");
  fairy=new Fairy();
  elsa=new Elsa();
  snow=new Snow[150];
  for(int i=0;i<100;i++){
    snow[i]=new BiggerSnow();
  }
  for(int i=100;i<150;i++){
    snow[i]=new SmallerSnow();
  }
  
}

void draw(){
  println(mouseX+" "+mouseY);
  println(millis());
  background(0);
  image(bg,-100,-100);
  fairy.show();
  fairy.move();
  elsa.move();
  elsa.show();
  elsa.path();
  for(Snow s:snow){
    s.move();
    s.show();
  }
  drawMerry();
}

void mousePressed(){
 noLoop(); 
}

void drawMerry() {
  textSize(50);
  fill(0, 0, 255);
  text("Happy Holidays!", m, 100);
  if (m<-400) {
    m=1000;
  }
  m-=2;
}
