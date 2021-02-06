class Enemy{
  PVector pos;
  int size = 30;
  boolean alive = true;
  Enemy(int px,int py){
    pos = new PVector(px,py);
    
  }
  void place(){
    if(alive){
    rect(pos.x,pos.y,30,30); 
    }
    }
    void shoot(float sr, float x, float y){
      print(sr);
      if(random(0,1) < sr ) {
            bullets.add(new Bullet(x,y,false));
        }
    }
  
  void update(){
    for (b = bullets.size()-1; b >= 0; b--) {
        
  }
  }
  
}
class callEnemy{
  int enmspeed = 1, bajas=0;
  PVector pos;
  float pr, prshoot=0.059;
  callEnemy(){
   pos = new PVector(0,0); 
  }
  void reset(){
    for(int i=0;i<enemy[0];i++){
      for(int j=0;j<enemy[1];j++){
       enm[i][j].pos.x = 50*(1+i); 
       enm[i][j].pos.y = 50*(1+j); 
      }
    } 
    
  }
  void EnemyPlace(){
   for(int i = 0; i < enm.length; i++) {
            for(int j = 0; j < enm[i].length; j++) {
              
                enm[i][j].place();
            }
        } 
    
  }
 void update(){
   boolean borde = false;
   pr = prshoot/(enemy[0]*enemy[1]-bajas);
    if(player.score == 100){
     win=true; 
    }
    if(player.lives<=0){
     window=10; // Game Over
    }if(player.score==45){
     enmspeed=0; 
      
    }
         for(int i = 0; i < enm.length; i++) {
            for(int j = 0; j < enm[i].length; j++) {
                enm[i][j].pos.x += enmspeed;
                
                if(enm[i][j].pos.y + enm[i][j].size > height - player.size*2 || enm[i][j].pos.y +enm[i][j].size == player.pos2d.y && enm[i][j].alive) {
                    player.lives -=1;
                    pos.x=0;
                    pos.y=0;
                    reset();
                    player.pos2d.y=500;
                    player.pos2d.x=375;
                    
                }
                
                
                if((enm[i][j].pos.x + enm[i][j].size > width-250 || enm[i][j].pos.x - enm[i][j].size < 0)) {
                    borde = true;
                }
            }
        }
  if (borde) {
            for(int i = 0; i < enm.length; i++) {
                for(int j = 0; j < enm[i].length; j++) {
                    enm[i][j].pos.y += 15;
                }
            }
            enmspeed *= -1;
            pos.y += 15;
        }
        for(int i=0;i<enm.length;i++){
         for(int j=0;j<enm[i].length;j++){
          for (b = bullets.size()-1; b >= 0; b--) {
            Bullet bullet = bullets.get(b);
            if(bullet.tp &&bullet.pos.y > enm[i][j].pos.y && bullet.pos.y<enm[i][j].pos.y+15 && bullet.pos.x >enm[i][j].pos.x && bullet.pos.x <enm[i][j].pos.x+30 && enm[i][j].alive){
              bullets.remove(b);
              enm[i][j].alive = false;
              player.score +=1;
            }else if(!bullet.tp &&bullet.pos.y > player.pos2d.y-25 && bullet.pos.y<player.pos2d.y+25 && bullet.pos.x >player.pos2d.x-30 && bullet.pos.x <player.pos2d.x+30){
              bullets.remove(b);
              player.lives -=1;
            }
         }
        }
        }
   
 }
    void disparar(){
        for(int i = 0; i< enm.length; i++) {
            for(int j = 0; j <enm[i].length; j++) {
                if(enm[i][j].alive) {
                    enm[i][j].shoot(pr,enm[i][j].pos.x,enm[i][j].pos.y+15);
                }
            }
        }
    }
  
}
