void introDraw() {
  image(gif.get(n), 0, 0);
  if (frameCount%2==0) {
    if (n==0){
      change=true;
    }
    if (n==225) {
      change=false;
    }
    if (change) {
      n++;
    } else {
      n--;
    }
  }  

  fill(255);
  textFont(font);
  textSize(100);
  text("COLOR GAME", 400, 300);
}
void introClick() {
  mode++;
}
