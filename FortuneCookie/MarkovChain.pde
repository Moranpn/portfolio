
class MarkovChain {

  Map<String, ArrayList<String>> map; 

  List<String> words;
  List<String> startingWords;

  public MarkovChain(String[] words) {
    map=new HashMap<String, ArrayList<String>>();
    this.words = Arrays.asList(words);
    startingWords = new ArrayList<String>();

  }

  void trainMap(String[] str) {
    println("cool");
    println(str.length-1);
    for(int i=0; i < str.length-1; i++){
      println(i);
      if (map.containsKey(str[i])) {
        map.get(str[i]).add(str[i+1]);
        println("added");
      } else {
        map.put(str[i], new ArrayList());
        println("new");
      }
      
    }
  }

  String generateText(String str) {
    String newString="";
    int randomIndex;
    if (map.containsKey(str)&&map.get(str)!=null)
      while(map.get(str).size()!=0){
        //println(map.get(str).size());
        randomIndex=getRandomIndex(str); //println(randomIndex);
        newString+=map.get(str).get(randomIndex)+" ";
        str=map.get(str).get(randomIndex);
        if(map.get(str)==null)
          break;
      }
    //println(newString);
    newString=newString.length()==0?newString:newString.substring(0,newString.length()-1)+".     ";
    //println(newString);
    return newString;
  }

  int getRandomIndex(String str) { 
    return  (int)(Math.random()*map.get(str).size());
  }
}
