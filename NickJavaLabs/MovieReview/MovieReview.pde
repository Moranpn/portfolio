import java.util.List;
import java.util.Scanner;
import java.util.Arrays;
import java.util.Collections;
String keyWord="";

MovieList ml= new MovieList();
void setup(){
  keyWord="amazing";
  
  ml.loadMovies();
  println(ml.countWords(keyWord));
  ml.sortMoviesByCount();
  //println(ml);
  println(ml.getAverageScore(keyWord));
  println(ml.getOverallComment(keyWord));  
}

void draw(){
  println(keyWord);
}

void keyPressed(){
  keyWord=key!=8?keyWord+=key:keyWord.substring(0,keyWord.length()-1);
}
