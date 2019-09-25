void gameoverDraw(){
  if(score>record){
    record=score;
  }
  fill(0,0,0,5);
  noStroke();
  rect(0,bg,800,600);
  if(bg<0){
    bg+=12;
  }
  fill(250,0,0);
  textSize(100);
  text("GAMEOVER", 400, bg+300);
  if(bg>=0){
    fill(255);
    textSize(30);
    text("Score: "+score, 400,480);
    text("Record: "+record, 400,520);
  }
}

void gameoverClick(){
  mode=0;
  score=0;
  time=0;
  bg=-600;
  word = int(random(0, 5));
  colour = int(random(0, 5));
  
}
