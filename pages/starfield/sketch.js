'use strict';


var nps=[];
var jps=[];
var op;

function setup(){
  createCanvas(800,800);
  //frameRate(10);
  
  for(let i=0;i<10;i++)
    nps[i]=new NormalParticle();
    
  for(let i=0;i<10;i++)
    jps[i]=new JumboParticle();
    
  op=new OddballParticle();  
}

function draw(){
  background(0);
  
  for(let x of nps) {
    x.move();
    x.show();
  }
	
//	for(let i=0;i<10;i++) {
//    nps[i].move();
//    nps[i].show();
//  }
  
  for(let x of jps) {
    x.move();
    x.show();
  }
  
  op.move();
  op.show();
  
  if(nps[0].x>width || nps[0].x<0 || nps[0].y>width || nps[0].y<0)
    reset();
    
  if(jps[0].x>width || jps[0].x<0 || jps[0].y>width || jps[0].y<0)
    reset();
    
  //if(op.x>width || op.x<0 || op.y>width || op.y<0)
  //  reset();
}

function mousePressed(){
  reset();
}

function keyPressed(){
  switch(keyCode){
     
  }
}

function reset(){
  for(let x of nps){
      x.x=width/2;
      x.y=height/2;
      x.speed=0;
  }
  for(let x of jps){
      x.x=width/2;
      x.y=height/2;
      x.speed=0;
  }
  op.x=width/2-100;
  op.y=height/2+100;
  op.speed=0;
}

class NormalParticle {
  
  constructor(){
		this.x=width/2
		this.y=height/2
    this.angle=random(60);
    this.speed=random(2);
    this.c=color(random(255),random(255),random(255));
  }

  move(){ 
    this.x+=cos(this.angle)*this.speed;
    this.y+=sin(this.angle)*this.speed;
    this.angle+=2;
    this.speed+=random(5);
  }
  
  show(){
    fill(this.c);
    ellipse(this.x,this.y,10,10);
  }
  
}

class JumboParticle extends NormalParticle {
  
  constructor(){ //using NormalParticles constructor
    super();
  }

  move(){ //using NormalParticles move
    super.move();
  }
  
  show(){ 
    fill(this.c);
    ellipse(this.x,this.y,50,50);
  }

}

class OddballParticle {
  
  constructor(){
		 this.x=width/2-100
		 this.y=height/2+100
     this.angle=random(60);
     this.speed=random(2);
  }

  move(){ 
    this.x+=cos(this.angle)*this.speed;
    this.y+=sin(this.angle)*this.speed;
    this.angle+=2;
    this.speed+=random(5);
  }
  
  show(){
    fill(255);
    rect(this.x,this.y,10,10);
  }
  

}