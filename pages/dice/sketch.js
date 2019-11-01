class Die //models one single dice cube
{
  //variable declarations here


  constructor(x,y) //constructor
  {
    this.x=x;
    this.y=y;
    this.pips=0;
  }
  
  roll()
  {
    this.pips=(int)(Math.random()*6)+1;
  }
  
  show()
  {
    switch (this.pips) {
      case 1:
        //face
        stroke("#FF0000");
        fill("#FF0000");
        rect(this.x, this.y, 50, 50, 5);
  
        //pip
        noStroke();
        fill(255);
        ellipse(this.x+25, this.y+25, 10, 10);
        break;
        
      case 2:
        //face
        stroke("#FF0000");
        fill("#FF0000");
        rect(this.x, this.y, 50, 50, 5);
  
        //pips
        noStroke();
        fill(255);
        ellipse(this.x+12.5, this.y+37.5, 10, 10);
        ellipse(this.x+37.5, this.y+12.5, 10, 10);
        break;
        
      case 3:
        //face
        stroke("#FF0000");
        fill("#FF0000");
        rect(this.x, this.y, 50, 50, 5);
  
        //pips
        noStroke();
        fill(255);
        ellipse(this.x+25, this.y+25, 10, 10);
        ellipse(this.x+12.5, this.y+37.5, 10, 10);
        ellipse(this.x+37.5, this.y+12.5, 10, 10);
        break;
        
      case 4:
        //face
        stroke("#FF0000");
        fill("#FF0000");
        rect(this.x, this.y, 50, 50, 5);
  
        //pips
        noStroke();
        fill(255);
        ellipse(this.x+12.5, this.y+12.5, 10, 10);
        ellipse(this.x+12.5, this.y+37.5, 10, 10);
        ellipse(this.x+37.5, this.y+12.5, 10, 10);
        ellipse(this.x+37.5, this.y+37.5, 10, 10);
        break;
        
      case 5:
        //face
        stroke("#FF0000");
        fill("#FF0000");
        rect(this.x, this.y, 50, 50, 5);
  
        //pips
        noStroke();
        fill(255);
        ellipse(this.x+25, this.y+25, 10, 10);
        ellipse(this.x+12.5, this.y+12.5, 10, 10);
        ellipse(this.x+12.5, this.y+37.5, 10, 10);
        ellipse(this.x+37.5, this.y+12.5, 10, 10);
        ellipse(this.x+37.5, this.y+37.5, 10, 10);
        break;
        
      case 6:
        //face
        stroke("#FF0000");
        fill("#FF0000");
        rect(this.x, this.y, 50, 50, 5);
  
        //pips
        noStroke();
        fill(255);
        ellipse(this.x+12.5, this.y+37.5, 10, 10);
        ellipse(this.x+12.5, this.y+25, 10, 10);
        ellipse(this.x+12.5, this.y+12.5, 10, 10);
        ellipse(this.x+37.5, this.y+37.5, 10, 10);
        ellipse(this.x+37.5, this.y+25, 10, 10);
        ellipse(this.x+37.5, this.y+12.5, 10, 10);
        break;
        
    }
  }
}

var dice = []/*[3][3]*/;

//Die die1;
var x,y;
var numPressed;

function setup()
{
  noLoop();
  createCanvas(500, 500);
  
    console.log('yes');
  for(var r=0;r<3;r++){
      console.log('yes2');
    for(var c=0;c<3;c++){
        console.log('yes3');        
      dice[r*3+c]=new Die(r*75+125,c*75+125);
        //console.log(dice[r][c]);
    }
  }
  //die1=new Die(50, 50);
}
function draw()
{
  background("#0E7E00");
  
  for(var r=0;r<3;r++){
    for(var c=0;c<3;c++){
      dice[r*3+c].roll();
      dice[r*3+c].show();
    }
  }
  
  numPressed=keyCode-96;
  
  displayValues();
  
  //die1.roll();
  //die1.show();
}

function mousePressed()
{
  redraw();
}

var codeKey;

function keyPressed(){
    
  if(keyCode==ENTER){
    numPressed=codeKey-96;
    displayValues();
    console.log("yes");
  }else{
    codeKey=keyCode;
    console.log("no");
  }
}

function displayValues(){
  textSize(12);
  text("Number of Dice : "+this.getTotalDice(),10,20);
  text("Number of Pips : "+this.getTotalPips(),10,35);
  text("Number of "+this.numPressed+"'s : "+this.getNumOf(this.numPressed),10,50);
  
  textSize(20);
  text("Enter a number and click",200,30);
  text(this.numPressed,200,60);
}

function getTotalDice(){
  var count=0;
  for(var r=0;r<3;r++){
    for(var c=0;c<3;c++){
      count++;
    }
  return count;
  }
}

function getTotalPips(){
  var sum=0;
  for(var r=0;r<3;r++){
    for(var c=0;c<3;c++){
      sum+=dice[r*4+c].pips;
    }
  return sum; 
  }
}

function getNumOf(num){
  var count=0;
  for(var r=0;r<3;r++){
    for(var c=0;c<3;c++){
      if(dice[r*4+c].pips==num){
        count++;
      }
    }
  return count;
  }
}