void keyPressed(){
  if(keyCode == 27){
   window=0; 
  }
  if(window !=0){
 if(player.status ==0){
  switch(keyCode){
   case 'w':
   case UP:
   case 'W':
     player.up=true;
     break;
   case 'a':
   case 'A':
   case LEFT:
     player.left=true;
     break;
   case 's':
   case 'S':
   case DOWN:
     player.down=true;
     break;
   case 'd':
   case 'D':
   case RIGHT:
     player.right=true;
     break;
   case ' ':
     bullets.add( new Bullet(1));
  }
     if(keyCode == 'p'){
      window=4; 
     }
   
 }
 } 
}
void keyReleased(){
    if(window !=0){
 if(player.status ==0){
 
  switch(keyCode){
   case 'w':
   case UP:
   case 'W':
     player.up=false;
     break;
   case 'a':
   case 'A':
   case LEFT:
     player.left=false;
     break;
   case 's':
   case 'S':
   case DOWN:
     player.down=false;
     break;
   case 'd':
   case 'D':
   case RIGHT:
     player.right=false;
     break;

    
  }
     if(keyCode == 'p'){
      window=4; 
     }
   
 }
 }
  
}
