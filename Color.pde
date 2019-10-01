final int intro = 0;
final int game = 1;
final int gameover = 2;
boolean start=false;
boolean ans;
int score;
int record;
int word = int(random(0, 5));
int colour = int(random(0, 5));
int coin;
int mode = 0;
int speed;
float time;
float arc;
float over=100;
color red = #DF151A;
color orange = #FD8603;
color yellow = #F4F328;
color green = #00DA3C;
color blue = #00CBE7;
String[] words = {"red", "orange", "yellow", "green", "blue"};
color[] colors = {red, orange, yellow, green, blue};
PFont font;
int bg;
ArrayList<PImage> gif = new ArrayList<PImage>();
int count=0;
int n;
boolean change;

void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);
  font = createFont("Comic Sans MS", 30);
  bg=-600;
  while(count<10)
  { 
    if(count%3==1){
      PImage p =loadImage("frame_00"+count+"_delay-0.06s.gif");
      p.resize(width,height);
      gif.add(p);
      count++;
    }
    else{
      PImage p =loadImage("frame_00"+count+"_delay-0.07s.gif");
      p.resize(width,height);
      gif.add(p);
      count++;
    }
  }
  while(count>=10&&count<100)
  {
    if(count%3==1){
      PImage p =loadImage("frame_0"+count+"_delay-0.06s.gif");
      p.resize(width,height);
      gif.add(p);
      count++;
    }
    else{
      PImage p =loadImage("frame_0"+count+"_delay-0.07s.gif");
      p.resize(width,height);
      gif.add(p);
      count++;
  }
  }
  while(count>=100&&count<226)
  {
    if(count%3==1){
      PImage p =loadImage("frame_"+count+"_delay-0.06s.gif");
      p.resize(width,height);
      gif.add(p);
      count++;
    }
    else{
      PImage p =loadImage("frame_"+count+"_delay-0.07s.gif");
      p.resize(width,height);
      gif.add(p);
      count++;
    }
  }
  
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
