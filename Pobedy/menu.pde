void loadMenu(){
  loadLogo();
  menuButtons();
  menuMusic();
  
}
void menuMusic(){
  s[10].play();
 if(!s[10].isPlaying()){
   s[10].rewind();
 }
}
void loadLogo(){
image(menup,0,0);
}
void menuButtons(){
 for(int i=0;i<4;i++){
   btn[i].load(350,200+100*i);
 }
  
}
class mButton{
  boolean canclick =true;
  PVector pos;
  String btntxt[] = {"Jugar", "Config","Acerca", "Salir", "Volver","Pause","Play"};
  int bid;
  int almacenada=1;
  boolean image=false;
  PImage imagedir;
  mButton(int id, boolean hasimage){
    pos = new PVector();
    bid = id;
    image=hasimage;
  }
   void load(float x, float y){
     pos.x = x;
     pos.y = y;
      
      if(image){
        visualPlace();
        visualCommand();
      }else{
        place();
        command();
      }
        
   }
  void place(){
    fill(#FFFFFF);
   rect(pos.x,pos.y,100,30,50,50,50,50); 
   fill(0);
   text(btntxt[bid],pos.x+30,pos.y+20);
  }
  void visualPlace(){
    if(plsprite==bid){
      noFill();
      rect(pos.x-1,pos.y-1,51,51);
    }
    image(imagedir,pos.x,pos.y,50,50);

    
  }
  void backplace(int x, int y,int id){
    fill(#FFFFFF);
   rect(x,y,100,30,50,50,50,50); 
   fill(0);
   text(btntxt[bid],x+30,y+20);
   pos.x=x;
   pos.y=y;
   bid=id;
   command();
  }
  void command(){
   if(mouseInLeftC(pos.x,pos.y,pos.x+100,pos.y+30)){
     
     if(bid==0){
         window=1;
         level = 1;
     }else if(bid==1){
         window=2;
     }else if(bid==2){
      window=3;
     }else if(bid==3){
      exit(); 
     }else if(bid==4){
      window=0; 
     }else if(bid==5 && canclick){
       if(window!=4){
         almacenada=window;
         window=4;
         canclick=false;
         print(almacenada);
       
         }
       }else if(bid==6 && canclick){
       if(window==4){
         window=almacenada;
         canclick=false;
         }
       }
       

     
       
   }if(mousePressed==false){
         canclick=true;
       }
       
  }
  void visualCommand(){
   if(mouseInLeftC(pos.x,pos.y,pos.x+50,pos.y+50)){
     if(bid==0){
         plsprite=0;
       s[6].rewind();
       s[6].play();
     }else if(bid==1){
         plsprite=1;
       s[7].rewind();
       s[7].play();
     }else if(bid==2){
      window=3;
     }else if(bid==3){
      exit(); 
     }else if(bid==4){
      window=0; 
     }else if(bid==5 && canclick){
       if(window!=4){
         almacenada=window;
         window=4;
         canclick=false;
         print(almacenada);
       
         }
       }else if(bid==6 && canclick){
       if(window==4){
         window=almacenada;
         canclick=false;
         }
       }
       

     
       
   }if(mousePressed==false){
         canclick=true;
       }
       
  }
  
}
