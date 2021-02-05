class Player{
  PVector pos2d;
  boolean left=false,right=false,up=false,down=false;
  int vel2d=5;
  int lives=5;
  int size=50;
  float score=0.0;
  int status=0;
 Player(){
   pos2d = new PVector(375,500);
 }
 void play(){
   if(level==1){
      image(pl1,pos2d.x,pos2d.y,50,64.28);
   
 }
 }
 void moveh(int dir){
   pos2d.x +=vel2d*dir;
   
 }
 void movev(int dir){
   pos2d.y +=vel2d*dir;
   
 }
 void update(){
 //Controles de usuario
  if(left){
   moveh(-1); 
  }else if(right){
   moveh(1); 
  }
  if(up){
   movev(-1); 
  }else if(down){
   movev(1); 
  }
 
 }
  
}
