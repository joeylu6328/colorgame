void gameDraw(){
  noStroke();
  fill(255);
  rect(0, 0, 400, 600);
  fill(0);
  rect(400, 0, 400, 600);
  textFont(font);
  textSize(100);
  text("TRUE", 200, 100);
  fill(255);
  text("FALSE", 600, 100);
  noFill();
  stroke(255,0,0);
  strokeWeight(10);
  time++;
  arc = map(time, 0, over, 0, PI*2);
  arc(400,520,130,130,0,arc);
  fill(125);
  text(score,400,500);
  fill(colors[colour]);
  text(words[word], 400, 300);
  if(score<0||time>=over)
  {
    mode++;
  }
  if(score/10>speed){
    over-=10;
    speed++;
  }
  
  
  
}

void gameClick(){
  time=0;
  if (mouseX <= 400) {
    ans=true;
  } else {
    ans=false;
  }
  if((word==colour)==ans){
    score++;
  }
  else{
    mode++;
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
