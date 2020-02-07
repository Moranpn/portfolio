import java.util.Scanner;
import static java.lang.System.*;

public class OddEvenCounter
{
  private String line;

   public OddEvenCounter()
   {
   }

   public OddEvenCounter(String s)
   {
     setLine(s);
   }

  public void setLine(String s)
  {
    line=s;
  }

  public int getEvenCount()
  {
    int count= 0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext())
      if(scan.nextInt()%2==0)
        count++;
    scan.close();
    return count;
  }

  public int getOddCount()
  {
    int count= 0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext())
      if(scan.nextInt()%2==1)
        count++;
    scan.close();
    return count;
  }

  public String toString( )
  {
    return "Even count: "+getEvenCount()+" Odd count: "+getOddCount();
  }
}
