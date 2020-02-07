import java.util.List;
import java.util.Scanner;
import java.util.Arrays;
import java.util.Collections;

MovieList ml= new MovieList();
void setup(){
  ml.loadMovies();
  println(ml.countWords("terrible"));
  ml.sortMoviesByCount();
  println(ml);
  
}
