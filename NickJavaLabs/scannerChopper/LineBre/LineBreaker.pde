import java.util.Scanner;
import static java.lang.System.*;

public class LineBreaker
{
   private String line;
   private int breaker;

   public LineBreaker()
   {
     this("",0);
   }

   public LineBreaker(String s, int b)
   {
     setLineBreaker(s,b);
   }

  public void setLineBreaker(String s, int b)
  {
    line=s;
    breaker=b;
  }

  public String getLine()
  {
    return line;
  }

  public String getLineBreaker()
  {
    int count=0;
    String box ="";
    Scanner scan = new Scanner(line);
    while(scan.hasNext()){
      if(count<breaker){
        box+=scan.next();
        count++;
      }
      else {
        box+="\n";
        count=0;
      }
    }
    scan.close();
    return box;
  }

  public String toString()
  {
    return getLineBreaker();
  }
}
