boolean mouseInLeftC(float x, float y, float dx, float dy){
 if(mouseX>x && mouseX<dx && mouseY>y && mouseY<dy && mousePressed && mouseButton == LEFT){
  return true; 
 }else{
  return false; 
 }
}
void mousePressed(){
  
  
  
}
void mouseReleased(){
  
  
  
}
void presume(){
 if(canpresume && window == 4){
   window = 1;
 }else if(canpresume && window ==1){
  window = 4;
 }
  
}
