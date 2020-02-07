public class MovieList{
  
  List<Movie> movies;
  
  public MovieList(){
    movies=new ArrayList<Movie>();
  }
  
  public void loadMovies(){
    String[] str = loadStrings("movies.txt");
    Scanner scan;
    for(String s:str){
      scan=new Scanner(s);
      movies.add(new Movie(scan.nextInt(),scan.nextLine()));
    }
    //for(Movie m:movies)
      //println(m);
  }
  
  public int countWords(String str){
    int count=0;
    for(Movie m:movies)
      if(m.getReview().contains(str))
        count++;
    return count;
  }
  
  public void sortMoviesByCount(){
    Collections.sort(movies);
  }
  
  public String toString(){
    String rtn="";
    for(Movie m:movies)
      rtn+=m+"\n";
    return rtn;
  }
  
}
