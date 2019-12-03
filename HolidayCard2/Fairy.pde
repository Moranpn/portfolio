class Fairy{
  PImage fairy=loadImage("fairy.png");
  PVector pos;
  
  ArrayList<Points> points1;
  ArrayList<Points> points2;
  ArrayList<Points> points3;
  
  boolean first=true,second=true;
  
 Fairy(){
   pos=new PVector(650,145);
    
   points1 = new ArrayList<Points>();
   points2 = new ArrayList<Points>();
   points3 = new ArrayList<Points>();
  }
  
  void show(){
    image(fairy,pos.x,pos.y);
  }
  
  void move(){
    if(millis()>1000 &&  millis()<1500)
      drawLeft();
    else if(millis()>2000 && millis()<2500){
      drawRight();
      if(first){
        pos.x=750;
        pos.y=145;
        first=false;
      }
    }
    else if(millis()>4000){
      drawSmile();
      if(second){
        pos.x=560;
        pos.y=250;
        second=false;
      }
    }
    
    for(Points p:points1){
      textSize(p.txtSize);
      text("*",p.pos.x,p.pos.y);
    }
    for(Points p:points2){
      textSize(p.txtSize);
      text("*",p.pos.x,p.pos.y);
    }
    for(Points p:points3){
      textSize(p.txtSize);
      text("*",p.pos.x,p.pos.y);
    }
    
  }
  
  void drawLeft(){
    points1.add(new Points(new PVector(pos.x+(float)random(-3,3),pos.y),(int)random(25,35)));   
    pos.y+=5;
  }
  
  void drawRight(){
    points2.add(new Points(new PVector(pos.x+(float)random(-3,3),pos.y),(int)random(25,35)));   
    pos.y+=5;
  }
  
  void drawSmile(){
    points3.add(new Points(new PVector(pos.x+(float)random(-3,3),pos.y),(int)random(25,35)));   
    pos.x+=5;
    pos.y=250+sqrt(18225-((pos.x-675)*(pos.x-675)));
  }
  
}
