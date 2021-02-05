class Bullet{
 PVector pos;
 int speed = 10;
 int tp;
 Bullet(int type){
  pos= new PVector(player.pos2d.x+25,player.pos2d.y);
 tp=type;
 }

 void update(){
    pos.y = pos.y - cos(10/180*PI)*speed;
   ellipse(pos.x, pos.y, 10, 10);
   if (pos.x > 0 && pos.x < width && pos.y > 0 && pos.y < height) {
     
    }
    else {
      bullets.remove(b);
    }
   if(tp==1){
     
   }
 }
  
}
