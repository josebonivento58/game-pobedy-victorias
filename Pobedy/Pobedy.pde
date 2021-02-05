int window = 0,level=0;
mButton[] btn;
PImage menup, about, live;
Player player;
void setup(){
 size(800,600);
 menup = loadImage("data/menup.png");
 about = loadImage("data/about.png");
 live = loadImage("data/gameplay/live.png");
 btn = new mButton[5];
 player = new Player();
 for(int i=0;i<5;i++){
   btn[i] = new mButton(i);
 }
 surface.setTitle("Pobedy - Victory or dead");
  
}

void draw(){
  loadGraphics();
  
}
