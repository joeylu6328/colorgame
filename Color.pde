boolean start=false;
boolean ans;
int record;
int word;
int colour;
int coin;
int mode = 0;
final int intro = 0;
final int game = 1;
final int gameover = 2;
color red = #DF151A;
color orange = #FD8603;
color yellow = #F4F328;
color green = #00DA3C;
color blue = #00CBE7;
String[] words = {"red", "orange", "yellow", "green", "blue"};
color[] colors = {red, orange, yellow, green, blue};
void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);
}
void draw() {
  if (mode==intro) {
    introDraw();
  } else if (mode==game) {
    gameDraw();
  } else if (mode==gameover) {
    gameoverDraw();
  } else {
    println("Mode error");
  }
  
}
void mouseReleased() {
  if (mode==intro) {
    introClick();
  } else if (mode==game) {
    gameClick();
  } else if (mode==gameover) {
    gameoverClick();
  } else {
    println("Mode error");
  }

}
