class Elsa{
  PImage elsa=loadImage("elsa2.png");
  PVector pos;
  ArrayList<Lines> lines;
  ArrayList<Curves> curves;
  
  Elsa(){
    
    pos=new PVector(40,20);
    
    lines=new ArrayList<Lines>();
    curves=new ArrayList<Curves>();
  }
  
  void show(){
    image(elsa,pos.x,pos.y);
  }
  
  void move(){
    pos.x+=2;
    pos.y++;
    if(pos.x>width+30){
      pos.x=40;
      pos.y=20;
      lines.clear();
    }
  }
  
  void path(){

    strokeWeight(3);
    
    curves.add(new Curves(pos.x+50,pos.y+20,pos.x+80,pos.y+30,pos.x+90,pos.y+60,pos.x+90,pos.y+90,255));
    
    lines.add(new Lines(pos.x+70+((float)Math.random()*10),pos.y+180+((float)Math.random()*10),pos.x+110+((float)Math.random()*10),pos.y+200+((float)Math.random()*10),(int)random(255)));
    
    //curve(pos.x+50,pos.y+20,pos.x+80,pos.y+30,pos.x+90,pos.y+60,pos.x+90,pos.y+90);
    //for(Curves c:curves){
    //  curve(c.x,c.y,c.x2,c.y2,c.x3,c.y3,c.x4,c.y4);
    //  println(c.c);
    //  stroke(c.c,240,255);
    //}
    
    for(Lines l:lines){
      line(l.x,l.y,l.x2,l.y2);
      println(l.c);
      stroke(l.c,240,255);
    }
    
    //line(pos.x+70,pos.y+180,pos.x+110,pos.y+200);
  }
}
