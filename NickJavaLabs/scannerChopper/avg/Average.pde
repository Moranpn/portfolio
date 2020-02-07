import java.util.Scanner;
import static java.lang.System.*;

public class Average
{
   private String line;

   public Average()
   {
   }

   public Average(String s)
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
    while(scan.hasNextInt()){
      count++;     
    }
    scan.close();  
    return count;
  }


  public int getSum()
  {
    int sum=0;
    Scanner scan=new Scanner(line);
    while(scan.hasNext())
      sum+=scan.nextInt();     
    scan.close();  
    return sum;
  }

  public double getAverage()
  {
    double avg=1.000;
    avg= getSum()/getCount();
    return avg;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    println("wtf");
    println("oof"+getSum()+" ");
    return "Average: "+getAverage();
  }
}
