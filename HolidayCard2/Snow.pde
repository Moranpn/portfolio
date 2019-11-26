
public class Snow{
float x, y, xSpeed, ySpeed, size;

  public Snow() {
    x=(int)(Math.random()*width);
    y=(int)(Math.random()*500)-200;
    xSpeed=(int)(Math.random()*4)-3;
    ySpeed=(int)(Math.random()*2)+3;
    size=(int)(Math.random()*20)+10;
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
  void sendAway() {
    for (int i=0; i<=100; i++){
    xSpeed+=.01;
  }
  }
  void resetSnow() {
    xSpeed=(int)(Math.random()*4)-3;
    x=(int)(Math.random()*width);
    y=(int)(Math.random()*500)-200;
  }
}
