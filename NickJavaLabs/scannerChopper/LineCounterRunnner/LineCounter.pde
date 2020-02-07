import java.util.Scanner;
import static java.lang.System.*;

public class LineCounter
{
   private String line;

   public LineCounter()
   {
     setLine("");
   }

   public LineCounter(String s)
   {
     setLine(s);
   }

  public void setLine(String s)
  {
    line=s;
  }

  public int getCount()
  {
    int count=0;  
    Scanner scan=new Scanner(line);
    while(scan.hasNext()){
      scan.nextInt();
      count++;
    }
    scan.close();
    return count;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    return getLine()+" has "+getCount()+" number(s)";
  }
}
