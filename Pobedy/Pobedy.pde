  
import ddf.minim.*;

int window = 0,level=0, b,ss, plsprite=1, frame;
int enemy[] ={5,6};
ArrayList<Bullet> bullets;
PImage[] pl, en;
spriteAnim anim;
Minim minim;
AudioPlayer[] s;
mButton[] btn, pbtn;
Enemy[][] enm;
callEnemy cen;
PImage menup, about, live;
boolean win=false, canpresume=true;
Player player;
void setup(){
 size(800,600);
  prechargeGraphics(); //Precarga la parte grafica y la interfaz del juego.
  prechargeGameplay(); //Aqui carga la parte funcional como los enemigos y el jugador.
  prechargeSounds();
 surface.setTitle("Pobedy - Victory or dead");
 for(int i=0; i<2;i++){
   
 }
  
}

void draw(){
  loadGraphics(); 

}
