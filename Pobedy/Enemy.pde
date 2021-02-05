class Enemy{
  PVector pos;
  int size = 30;
  Enemy(int px,int py){
    pos = new PVector(px,py);
    
  }
  void place(){
    rect(pos.x,pos.y,30,30);  
  }
  void update(){
    for (b = bullets.size()-1; b >= 0; b--) {
        
  }
  }
  
}
class callEnemy{
  int enmspeed = 1;
  PVector pos;
  callEnemy(){
   pos = new PVector(0,0); 
  }
  void EnemyPlace(){
   for(int r = 0; r < enm.length; r++) {
            for(int c = 0; c < enm[r].length; c++) {
                enm[r][c].place();
            }
        } 
    
  }
 void update(){
   boolean borde = false;
   
    if(player.score == 100){
     win=true; 
    }
    if(player.lives<=0){
     window=10; // Game Over
    }
         for(int i = 0; i < enm.length; i++) {
            for(int j = 0; j < enm[i].length; j++) {
                enm[i][j].pos.x += enmspeed;
                
                if(enm[i][j].pos.y + enm[i][j].size > height - player.size*2 || enm[i][j].pos.y + enm[i][j].size == player.pos2d.y) {
                    player.lives -=1;
                    player.pos2d.y=500;
                    player.pos2d.x=350;
                }
                
                if((enm[i][j].pos.x + enm[i][j].size > width-250 || enm[i][j].pos.x - enm[i][j].size < 0)) {
                    borde = true;
                }
            }
        }
  if (borde) {
            for(int i = 0; i < enm.length; i++) {
                for(int j = 0; j < enm[j].length; j++) {
                    enm[i][j].pos.y += 30;
                }
            }
            enmspeed *= -1;
            pos.y += 30;
        }
   
 }
  
}
