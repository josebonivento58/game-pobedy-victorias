void loadGamePlay(){
  background(#24FFEB);
  text("Vidas:",550,50);
  text("Puntaje:   "+player.score,550,100);
  for(int i=0;i<player.lives;i++){
    image(live,600+30*i,35,25,25);
  }
}
