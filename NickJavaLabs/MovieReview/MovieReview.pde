import java.util.List;
import java.util.Scanner;
import java.util.Arrays;
import java.util.Collections;
String keyWord="";

MovieList ml= new MovieList();
void setup(){
  size(650,150);
  
  keyWord="amazing";
  
  ml.loadMovies();
  println(ml.countWords(keyWord));
  ml.sortMoviesByCount();
  //println(ml);
  println(ml.getAverageScore(keyWord));
  println(ml.getOverallComment(keyWord));  
}

void draw(){
  background(0);
  textSize(25);
  
  text("Search: "+keyWord,5,25);
  text("Number of reviews: "+ml.countWords(keyWord),5,55);
  text("Average rating: "+ml.getAverageScore(keyWord),5,85);
  text("Overall comment: "+ml.getOverallComment(keyWord),5,115);
  
  println(keyWord);
}

void keyPressed(){
  keyWord=key!=8?keyWord+=key:keyWord.length()<=1?"":keyWord.substring(0,keyWord.length()-1);
  //keyWord.replaceAll("![a-z]","69");
}
