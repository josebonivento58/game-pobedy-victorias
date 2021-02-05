int window = 0,level=0, b;
ArrayList<Bullet> bullets;
mButton[] btn;
PImage menup, about, live, pl1;
Player player;
void setup(){
 size(800,600);
 menup = loadImage("data/menup.png");
 about = loadImage("data/about.png");
 live = loadImage("data/gameplay/live.png");
 pl1 = loadImage("data/gameplay/pl1.png");
 btn = new mButton[7];
 bullets = new ArrayList<Bullet>();
 player = new Player();
 for(int i=0;i<7;i++){
   btn[i] = new mButton(i);
 }
 surface.setTitle("Pobedy - Victory or dead");
  
}

void draw(){
  loadGraphics();
  
}
