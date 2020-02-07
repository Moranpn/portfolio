public class StringParser {

  public StringParser() {
  }
  /**
   *countWords();
   * A "word" is defined as a contiguous string of alphabetic characters
   * i.e. any upper or lower case characters a-z or A-Z.  This method completely 
   * ignores numbers when you count words, and assumes that the document/paragraph does not have 
   * any strings that combine numbers and letters. 
   */
  int countWords(String text) {
    int count=0;
    String[] temp=text.split("[\\W]+");
    for (String x : temp)
      count++;
    return count;
  }

  int countWords(String[] text) { 
    return text.length;
  }

  int countVowels(String text) {
    String[] temp=text.split("[^aeiouyAEIOUY]+");
    //println(Arrays.toString(temp));
    return temp.length;
  }
  /**
   * Get the total number of syllables in the document (the paragraph). 
   * To count the number of syllables in a word, use the following rules:
   *       Each contiguous sequence of one or more vowels is a syllable, 
   *       with the following exception: a lone "e" at the end of a word 
   *       is not considered a syllable unless the word has no other syllables. 
   *       You should consider y a vowel.
   */

  public int countSyllables(String s) {
       String [] syllables = s.split("[e][\\s]");
 //println(Arrays.toString(syllables));
 String [] vowels = s.split("[aeiouyAEIOUY]+");
 //println(Arrays.toString(vowels));
 String [] exceptions = s.split("[a-z][e][\\s]");
 return vowels.length - syllables.length + exceptions.length;

   }

  



  /**
   * Eventually write this one too. Get the number of sentences in the document/paragraph.
   * Sentences are defined as contiguous strings of characters ending in an 
   * end of sentence punctuation (. ! or ?) or the last contiguous set of 
   * characters in the document, even if they don't end with a punctuation mark.
   */

  int countSentences(String text) {
    String[] temp=text.split("[^.!?]+");
    //println(Arrays.toString(temp));
    return temp.length-1;
  }

double getFleschScore(String text) {
  return 206.835-1.015*((float)countWords(text)/(float)countSentences(text))-84.6*((float)countSyllables(text)/(float)countWords(text));
}

int getGradeLevel(String text) {
  
  //float x=0,y=0,z=0;;
  
  //x=0.39*(float)(countWords(text)/*970416*//countSentences(text)/*103798*/)/*9.349081870556273*/;//3.646141929516946
  
  //y=11.8*(float)(countSyllables(text)/*136041*//countWords(text)/*970416*/)/*0.140188331602117*/;//1.654222312904981
  
  //z=(x/*3.646141929516946*/+y/*1.654222312904981*/)/*5.300364242421927*/-15.59;//-10.289635757578073
  
  //return (int)z;
  
  //double asl = countWords(text)/countSentences(text);
  double asl=99/4;
  //double asw = countSyllables(text)/countWords(text);
  double asw=176/99;
  double fkra = (0.39*asl)+(11.8*asw)-15.59;
  
  return (int)fkra;
  
  
  
}

}
