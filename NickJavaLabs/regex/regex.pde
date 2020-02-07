import java.util.Arrays;

void setup(){ 
  String one="Hello, I am nine syllables long. And it is great!";
  String[] text=one.split("[\\W]+");
  println(Arrays.toString(text));
  println(countWords(text));
  println(countVowels(one));
  println(countSentences(one));
}

int countWords(String text){
  int count=0;
  String[] temp=text.split("[\\W]+");
  for(String x:temp)
    count++;
  return count;
}

int countWords(String[] text){ return text.length; }

int countVowels(String text){
  String[] temp=text.split("[^aeiouyAEIOUY]+");
  println(Arrays.toString(temp));
  return temp.length;
}

int countSentences(String text){
  String[] temp=text.split("[^.!?]+");
  println(Arrays.toString(temp));
  return temp.length-1;
}
