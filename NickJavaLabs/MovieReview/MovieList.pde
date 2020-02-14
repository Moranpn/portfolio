public class MovieList{
  
  List<Movie> movies;
  int count=0;
  
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
  
  public double getAverageScore(String str){
    int sum=0;
    for(Movie m:movies){
      if(m.getReview().contains(str))
        sum+=m.getRating();
    }
    return countWords(str)>0?sum/countWords(str):-1;
  }
  
  public String getOverallComment(String str){
    if(getAverageScore(str)<=0)
      return "This movie sucks!";
    else if(getAverageScore(str)<=1)
      return "eh, I wouldn't watch it again.";
    else if(getAverageScore(str)<=2)
      return "It had it's good parts.";
    else if(getAverageScore(str)<=3)
      return "Not bad at all.";
    else if(getAverageScore(str)<=4)
      return "I could watch this movie again!";
    else if(getAverageScore(str)<=5)
      return "5/5 best movie ever!!!";
    else
      return "oop";
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
