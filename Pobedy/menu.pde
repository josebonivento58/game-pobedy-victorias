void loadMenu(){
  background(#FF2424);
  menuButtons();
  
}
void menuButtons(){
 for(int i=0;i<3;i++){
   btn[i].load(350,200+100*i);
 }
  
}
class mButton{
  PVector pos;
  String btntxt[] = {"Jugar", "Config", "Salir"};
  int bid;
  mButton(int id){
    pos = new PVector();
    bid = id;
  }
   void load(float x, float y){
     pos.x = x;
     pos.y = y;
      place();
      command();
   }
  void place(){
    fill(#FFFFFF);
   rect(pos.x,pos.y,100,30,50,50,50,50); 
   fill(0);
   text(btntxt[bid],pos.x+30,pos.y+20);
  }
  void command(){
   if(mouseInLeftC(pos.x,pos.y,pos.x+100,pos.y+30)){
     print(btntxt[bid]);
     if(bid==0){
      window=1;
      level = 1;
     }else if(bid==1){
       window=2;
     }else if(bid==2){
      exit();
     }
       
   }
  }
  
}
