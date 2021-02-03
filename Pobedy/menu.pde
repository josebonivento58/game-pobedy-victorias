void loadMenu(){
  background(#FF2424);
  menuButtons();
  
}
void menuButtons(){
 for(int i=0;i<3;i++){
   
 }
  
}
class mButton{
  PVector pos;
  mButton(int id){
    pos = new PVector();
  }
   void load(float x, float y){
     pos.x = x;
     pos.y = y;
      place();
      command();
   }
  void place(){
   rect(pos.x,pos.y,100,30); 
  }
  void command(){
   
  }
  
}
