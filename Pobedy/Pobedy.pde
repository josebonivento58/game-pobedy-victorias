int window = 0,level=0, b;
int enemy[] ={8,4};
ArrayList<Bullet> bullets;
mButton[] btn;
Enemy[][] enm;
callEnemy cen;
PImage menup, about, live, pl1;
boolean win=false;
Player player;
void setup(){
 size(800,600);
 menup = loadImage("data/menup.png");
 about = loadImage("data/about.png");
 live = loadImage("data/gameplay/live.png");
 pl1 = loadImage("data/gameplay/pl1.png");
 btn = new mButton[7];
 cen = new callEnemy();
 enm = new Enemy[enemy[0]][enemy[1]];
 bullets = new ArrayList<Bullet>();
 for(int i=0;i<enemy[0];i++){
  for(int j=0;j<enemy[1];j++){
   enm[i][j] = new Enemy(50*(1+i),50*(1+j)); 
  }
 }
 player = new Player();
 for(int i=0;i<7;i++){
   btn[i] = new mButton(i);
 }
 surface.setTitle("Pobedy - Victory or dead");
  
}

void draw(){
  loadGraphics();
  
}
