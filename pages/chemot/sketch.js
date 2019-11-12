//declare bacteria variables here  
var b;
var names = [];

function preload(){
		names = loadStrings("assets/names.txt");
}

function setup()   
{     
  createCanvas(800, 600);
  b = [];
	//console.log(names);
  //initialize bacteria variables here   
  for (let i=0; i<22; i++)
    b.push(new Bacteria(width/2, height/2,grabName()));
  
}   

function draw()   
{    
  background(0);

  //land
  fill('#63A20B');
  rect(200, 100, 400, 400);

  //mud
  fill('#7C500F');
  rect(500, 200, 50, 50);

  //river
  fill('#3E5AF5');
  rect(300, 100, 50, 400);

  //bridge
  fill('#5A4700');
  rect(300, 250, 50, 50);

  //text
  fill(255);
  textSize(20);
  text("Number of Bacteria: "+b.length, 10, 20);
  text("Time: "+Math.trunc(millis()/1000),10,40);


  //move and show the bacteria   
  for (let i=0; i<b.length; i++) {
    b[i].move();
    b[i].show();
    kill();
  }
  
  //if(b.size()>0)
  //  redraw();
  //else
  //  noLoop();
  
}  

 
function grabName() {
  return names.splice(random(names.length),1);
}


function kill() {
  for (let i=0; i<b.length; i++) {
    if (b[i].x<0 || b[i].x>800 || b[i].y<0 || b[i].y>600)
      b.splice(i,1);
  }
}

//Bacteria getSelected(){
//  if(mousePressed)
//    for(Bacteria x:b)
//      if(mouseX+5<x.x  &&  mouseX-5>x.x)
//        return x;
//}

function keyPressed() {
  switch(keyCode) {
  case 38: 
    for (let i=0; i<b.length; i++) { 
      b[i].y-=40;
    } 
    break;
  case 40: 
    for (let i=0; i<b.length; i++) { 
      b[i].y+=40;
    } 
    break;
  case 39: 
    for (let i=0; i<b.length; i++) { 
      b[i].x+=40;
    } 
    break;
  case 37: 
    for (let i=0; i<b.length; i++) { 
      b[i].x-=40;
    } 
    break;
  }
}

 class Bacteria    
 {     
   //lots of java!   
   
   constructor (x, y, name){
     this.x=x;
     this.y=y;
     this.name=name;
     this.c1=color(random(255),random(255),random(255));
   }
   
   move(){    
     
     //land
     if(this.x<200){
       this.x+=(int)(Math.random()*7)-3; this.x-=5;
     }
     else if(this.x>600){
       this.x+=(int)(Math.random()*7)-3; this.x+=5;
     }
     else if(this.y<100){
       this.y+=(int)(Math.random()*7)-3; this.y-=5;
     }
     else if(this.y>500){
       this.y+=(int)(Math.random()*7)-3; this.y+=5;
     }
     //mud
     else if(this.x>500&&this.x<550&&this.y>200&&this.y<250)
     {
       this.x+=(int)(Math.random()*3)-1;
       this.y+=(int)(Math.random()*3)-1;
     }
     //river
     else if((this.x>300 && this.x<350)  &&  ((this.y>100 && this.y<250) || (this.y>300 && this.y<500)))
     {
       this.x+=(int)(Math.random()*7)-3;
       this.y+=(int)(Math.random()*7)-3; this.y+=1;
     }
     else{
       this.x+=(int)(Math.random()*7)-3;
       this.y+=(int)(Math.random()*7)-3;
   }
     
   }
   
   show(){
     fill(this.c1);
     circle(this.x,this.y,10);
     textSize(15);
     text(this.name,this.x-10,this.y-10);
   }
 }    