'use strict';

//create global vars here

var startX=mouseX;
var startY=mouseY;
var endX=0;
var endY=150;

function setup() {
  createCanvas(500,500);
  strokeWeight(5);
  background(0);
  frameRate(60);
}


function draw() {
  //move();
  background(0);
  stroke((Math.random()*256));
  console.log("yousif");
  while(endX<width)
  {
    endX=startX+(Math.random()*10);
    endY=startY+(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
    console.log("eats poo poo");
  }
}

function mousePressed()
{
  startX=mouseX;
  startY=mouseY;
  endX=0;
  endY=150;
}

function mouseDragged()
{
  startX=mouseX;
  startY=mouseY;
  endX=0;
  endY=150;
}

//function move (){
//   if(mousePressed){
//     startX=mouseX;
//      startY=mouseY;
//      endX=0;
//      endY=150;
//  }
//}