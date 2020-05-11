import java.io.File;
import java.util.List;
import java.util.Map;


//used for colors https://www.rapidtables.com/web/color/RGB_Color.html 

int len=450, r = 0, g = 155, b = 200;
String text;
Map<String, String> colorsMap;
color c;

public void setup() {
  size(800, 500);
  background(0);
  
  text="";
  List<String> colorsList = new ArrayList<String>();
  List<String> colorsNames = new ArrayList<String>();
  colorsMap = new HashMap<String, String>();
  String colorsString="";
  String[] colorsArray = loadStrings("colors.txt"); //([0-9]+,[0-9]+,[0-9]+)
  for (String s : colorsArray)
    colorsList.add(s);

  for (String s : colorsArray)
    colorsNames.add(s);


  for (int i=0; i<colorsList.size(); i++)
    colorsList.set(i, colorsList.get(i).substring(colorsList.get(i).indexOf("(")));

  //for (int i=0; i<colorsList.size(); i++)
  //  colorsList.set(i, colorsList.get(i).substring(0, colorsList.get(i).indexOf("(")));  

  for (int i=0; i<colorsNames.size(); i++)
    colorsNames.set(i, colorsNames.get(i).substring(0, colorsNames.get(i).indexOf("#")));

  for (int i=0; i<colorsList.size(); i++)
    colorsMap.put(colorsNames.get(i), colorsList.get(i));

  println(colorsList);  
  println(colorsList.size());

  println(colorsNames);  
  println(colorsNames.size());

  println(colorsMap);  
  println(colorsMap.size());
  
  
  String x = "#FF0000";
  color y = #FF0000;
  
  String s1="(255, 0, 0)";
  s1.replaceAll(""," ");
  println(s1);
  int[] i = new int[3];
  println(i[0]=parseInt(s1));
  println(i);
}

public void draw() {
  background(0);
  sierpinski(300, 475, len);
  len-=-1;
  r=r==255?0:r+1;
  g=g==255?0:g+1;
  b=b==255?0:b+1;

  textSize(20);
  text("Click to reset the triangle.", 10, 20);
  text("Type in a color: "+text, 10, 45);
  //println(text);
  
  //checkColor();
  
  
  
}

public void sierpinski(int x, int y, int len) {
  stroke(c);
  fill(0);
  if (len<=10) {
    triangle(x+len/2, y-len, x, y, x+len, y);
    //rect(x, y, len, len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

public void mouseClicked() {
  background(0);
  len=450;
}

public void keyPressed(){
  if(key==8&&text.length()>0)
    text=text.substring(0,text.length()-1);
  else
    text+=key;
}

void checkColor(){
  int[] colorsInt = new int[3];
  for(String s:colorsMap.keySet())
    if(text.equals(s))
      colorsInt[0]=parseInt(colorsMap.get(s));
  //println(colorsInt);
}
