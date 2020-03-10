//� A+ Computer Science  -  www.apluscompsci.com
//Name -
//Date -  
//Class -
//Lab  -

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;



public void setup()
{
  Acronyms a=new Acronyms();
  String[] map=loadStrings("acro.txt");
  String[] para=loadStrings("acro2.txt");
  
  for(String s: map)
    a.putEntry(s);
    
  for(String s: para)
    a.convert(s);
    
  for(String s: map)
    print(s);
  for(String s: para)
    print(s);
}
