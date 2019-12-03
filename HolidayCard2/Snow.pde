interface Snow{
  public void show();
  public void move();
}

class BiggerSnow implements Snow{
float x, y, xSpeed, ySpeed, size;

  public BiggerSnow() {
    x=(int)(Math.random()*width);
    y=(int)(Math.random()*500)-200;
    xSpeed=(int)(Math.random()*4)-3;
    ySpeed=(int)(Math.random()*2)+3;
    size=(int)(Math.random()*10)+20;
  }
  void show() {
    fill(255);
    textSize(size);
    text("*",(float)x, (float)y);

    fill(255, 255, 225);
  }
  void move() {
    x+=xSpeed;
    y+=ySpeed;
    if (y>height) {
      y=((float)Math.random()*100)-100;
      x=(int)(Math.random()*width);
    }
  }
}
class SmallerSnow implements Snow{
float x, y, xSpeed, ySpeed, size;

  public SmallerSnow() {
    x=(int)(Math.random()*width);
    y=(int)(Math.random()*500)-200;
    xSpeed=(int)(Math.random()*4)-3;
    ySpeed=(int)(Math.random()*2)+3;
    size=(int)(Math.random()*15)+5;
  }
  void show() {
    fill(255);
    textSize(size);
    text("*",(float)x, (float)y);

    fill(255, 255, 225);
  }
  void move() {
    x+=xSpeed;
    y+=ySpeed;
    if (y>height) {
      y=((float)Math.random()*100)-100;
      x=(int)(Math.random()*width);
    }
  }
}
