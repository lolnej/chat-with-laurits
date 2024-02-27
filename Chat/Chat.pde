ArrayList<String> log;

String msg;

void setup(){
  
  size(600, 600);
 background(0);
  
  log = new ArrayList<String>();
  
  msg = "";
}

void draw(){
  textSize(32);
  text(msg, 100, 100);
  
  int index = 0;
  for (String s : log){
    text(s, 100, 150+50*index);
    index++;
  }
}

void keyPressed(){
  
  if (key == ENTER){
    log.add(msg);
    msg = "";
  }else{
  
  msg += key;
  
}
}
