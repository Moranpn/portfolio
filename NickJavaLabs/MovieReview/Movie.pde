public class Movie implements Comparable<Movie>{
  
  String review;
  int rating;
  
  public Movie( int rating, String review){
    this.review=review;
    this.rating=rating;
  }
  
  public int getRating(){
    return rating;
  }
  
  public String getReview(){
    return review;
  }
  
  public int compareTo(Movie other){
    if(this.rating>other.rating)
      return 1;
    if(this.rating<other.rating)
      return -1;
    return 0;
  }
  
  public String toString(){
    return ""+rating+" "+review;
  }
  
}
