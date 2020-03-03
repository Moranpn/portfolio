//© A+ Computer Science  -  www.apluscompsci.com
//Name -
//Date -
//Class -  
//Lab  -

public class Part implements Comparable<Part>
{
  private String make, model, theRest="";
  private int year;

  public Part(String line) 
  {
    String[] list = line.split(" ");
    make=list[list.length-3];
    model=list[list.length-2];
    year=Integer.parseInt(list[list.length-1]);
    for(int i=0; i<list.length-3; i++){
      theRest+=list[i]+" ";
    }
 



  }

  //have to have compareTo if implements Comparable
  public int compareTo( Part other )
  {
    
    



    return 0;
  }

  public String toString()
  {
    return ""+make+" "+model+" "+year+" "+theRest;
  }
}
