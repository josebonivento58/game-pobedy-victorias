void loadGamePlay(){
  disableNoGameSounds();
  background(#24FFEB);
  text("Vidas:",550,50);
  text("Puntaje:   "+player.score,550,100);
   btn[5].backplace(500,500,5);
  
  for(int i=0;i<player.lives;i++){
    image(live,600+30*i,35,25,25);
  }
  player.play();
  player.update();
  for (b = bullets.size()-1; b >= 0; b--) {
    Bullet bullet = bullets.get(b);
    bullet.update();
}

cen.EnemyPlace();
cen.disparar();
cen.update();
}
void gamePaused(){
  
  btn[5].backplace(500,500,6);
  
}
void disableNoGameSounds(){
 if(s[10].isPlaying()){
  s[10].pause(); 
 }
  
  
}
