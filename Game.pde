void gameDraw(){
  fill(255);
  rect(0, 0, 400, 600);
  fill(0);
  rect(400, 0, 400, 600);
  textSize(100);
  text("TRUE", 200, 100);
  fill(255);
  text("FALSE", 600, 100);
  fill(125);
  text(record,400,500);
  fill(colors[colour]);
  text(words[word], 400, 300);
  
}

void gameClick(){
  if (mouseX <= 400) {
    ans=true;
  } else {
    ans=false;
  }
  if((word==colour)==ans){
    record++;
  }
  coin = int(random(0, 2));
  word = int(random(0, 5));
  colour = int(random(0, 5));
  while(coin==0&&word!=colour){
    word = int(random(0, 5));
    colour = int(random(0, 5));
  }
  while(coin==1&&word==colour){
    word = int(random(0, 5));
    colour = int(random(0, 5));
  }
}
