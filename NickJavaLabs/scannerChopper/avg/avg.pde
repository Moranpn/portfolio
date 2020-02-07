
void setup(){
  Average avg = new Average("9 10 5 20");
  println(avg);
  avg.setLine("11 22 33 44 55 66 77");
  println(avg.getCount());
}
