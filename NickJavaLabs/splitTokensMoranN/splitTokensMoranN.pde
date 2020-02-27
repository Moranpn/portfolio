    import java.util.List;
import java.util.Arrays;

///////////////splitTokens
String[] w;
String s;
String[]words;
String all;
//WordList wList; 
StringParser sp;                                    //beep boop bop beep beep boop 

void setup() {
  size(400, 200);
  //all=loadFile("data/book.txt")
  w=loadStrings("data/cnn.txt");
  s=join(w, " ");
  words=splitTokens(s, ",.!?- ");
  //wList=new WordList(words);
  sp=new StringParser();
  //println(Arrays.toString(words));
  println(sp.countWords(words)+" words");
  println(sp.countSentences(s)+" sen");
  println(sp.countSyllables(s)+" syl");
  println(sp.countVowels(s)+" vo");
  println(sp.getFleschScore(s)+" fl");
  println(sp.getGradeLevel(s)+" gr");
}



/////////////////split (uses regex)
//String [] fileContents ;
//String rawText;
//String [] tokens;
//WordList wList;

//void setup() {
//  size(400, 200);
//  fileContents = loadStrings("data/speech1.txt");
//  rawTest = join(fileContents, " ");
//  rawText = rawText.toLowerCase();
//  tokens=rawText.split("[^\\w]+");
//  wList=new WordList(tokens);
//}

//////wordlist class constructor...uses an arraylist of word objects
//public class WordList {
//  public List<Word> myList;
  
//  public WordList(String []tokens) {
//    myList=new ArrayList<Word>();
//    for (String s : tokens) {
//      myList.add(new Word(s));
//    }
//  }
//}
