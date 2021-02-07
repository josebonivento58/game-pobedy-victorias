class Bullet{
 PVector pos;
 int speed = 10;
 boolean tp;
 Bullet(float x, float y,boolean type){
   if(type){
   x=x+25; 
  }else{
   speed=2; 
  }
  pos= new PVector(x,y);
  
  
 tp=type;
 }

 void update(){
  if(tp && player.alive){
    pos.y = pos.y - speed;
   ellipse(pos.x, pos.y, 10, 10);
    }else if(!tp && player.alive){
      pos.y = pos.y + speed;
      rect(pos.x,pos.y,5,10);
    }
   if (pos.x > 0 && pos.x < width && pos.y > 0 && pos.y < height) {
     
    }
    else {
      bullets.remove(b);
    }

   
     
  
 }
  
}
