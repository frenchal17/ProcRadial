void setup(){
  size(500,500);
  background(255,255,255);
}

  float x = 0.5;
  float r = 0;
  float comp = 10;
  

void draw(){
 
 if (mousePressed){
   r = r + x;
   point(mouseX + r, mouseY + r);
   point(mouseX - r, mouseY - r);
   point(mouseX + r, mouseY - r);
   point(mouseX - r, mouseY + r);
   point(mouseX, mouseY + r);
   point(mouseX, mouseY - r);
   point(mouseX + r, mouseY);
   point(mouseX - r, mouseY);  
   
   if (r / comp >= 1){
     x = x + 0.5;
     comp = comp + 10;
   }
   
  }
 
 else {
  r = 0;
  x = 1;
  comp = 10;
}

}

void keyPressed(){
  if (key == ' '){
    background(255,255,255);
  }
}
