import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.Arrays;
import java.util.Scanner;
import java.io.File;

//fortunes from https://www.geckoandfly.com/16647/20-wise-chinese-fortune-cookie-sayings/ (40)
// and https://quotes.yourdictionary.com/articles/funny-fortune-cookie-sayings.html (54)

MarkovChain mc;
PImage cookie;
String finalWords;
float x,y;

void setup() {
  //List<String> words3 = new ArrayList<String>();
  String[] words3;
  String words2="";

  String[] words = loadStrings("fortune.txt");
  
  String[] firstWords = new String[words.length];
  
  for(String s:words)
    words2+=s.replaceAll("[.?!;]"," ");
    
  String[] temp = new String[words.length];
  
  for(int i=0;i<words.length;i++){
    temp=words[i].split(" ");
    firstWords[i]=temp[0];   
  }
  
  String firstWords2="";
  for(String s:firstWords)
    firstWords2+=s.replaceAll("[.?!;]","")+" ";
    
  firstWords2 = firstWords2.toLowerCase();
      //if(words[i].matches("[A-Z]\\w+")){
    //  firstWords[i]=words[i];
    //}
    
  firstWords = firstWords2.split(" ");
    
  //println(firstWords.length);
  //println(firstWords); 
  //println();
  //println(firstWords2);
  
  words2 = words2.toLowerCase();
  
  words3 = words2.split(" ");
    
  //println(words2);
  //println();
  //println(words3);

  mc=new MarkovChain(words3);

  //println();
  //println(words);

  mc.trainMap(words3);
  println(mc.map);
  println();
  
  //mc.trainMap(words3);
  //println(mc.map);
  //println();

  //for (String str : firstWords){
  //  print(str+" ");
  //  println(mc.generateText(str));
  //}
  
  finalWords="";
  
  int random;
  for(int i=0;i<100;i++){
    random=(int)(Math.random()*firstWords.length); //println(random);
    finalWords+=firstWords[random]+" "+mc.generateText(firstWords[random]);    
  }
  
  println(finalWords);
  
  cookie = loadImage("fortuneCookie.png");
    size(800,447);
    x=280;
    y=100;

}

void draw(){
  //println(mouseX+" "+mouseY); //BL 280,185 BR 560,185 TL 280,100
  
  image(cookie,0,0);
  textSize(85);
  textAlign(LEFT,TOP);
  fill(0);
  text(finalWords,x,y);
  //"This is a fortune"
  
  x-=5;
}


/*sample output

the rain.
the real.
if a shell,.
because 
you can always find.
patience 
all other.
he who can't.
actions 
success 
nothing one hour.
don't behave.
that way  i got out of thinking.
don’t care.
it’s an outside.
a person who can’t.
avoid taking.
it is gained.
don’t care.
fear all fortunes.
the rainbow,.
do if you want.
we don't eat.
don’t pursue.
ask 
flattery 
success 
change is to his mind,.
never runs.
don’t need is interest.
you love.
never forget a debt.
the future,.
if you to let statistics.
you can always have a whole.
actions 
don’t worry about time i forget a number.
only listen.
don't let statistics.
if you think it's a closed.
never forget a foolish.
the desire.
actions 
may not why you do a conclusion.
the fortune cookie  don't forget that cookie contains.
you are always have the cheese.
may not afraid only listen.
hard 
fear all other.
the wise man listens to let statistics.

*/
