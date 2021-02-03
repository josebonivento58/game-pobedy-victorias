boolean mouseInLeftC(float x, float y, float dx, float dy){
 if(mouseX>x && mouseX<dx && mouseY>y && mouseY<dy && mousePressed && mouseButton == LEFT){
  return true; 
 }else{
  return false; 
 }
}
