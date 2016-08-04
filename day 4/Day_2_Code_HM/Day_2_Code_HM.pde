boolean button = false;
int x, y;
int w = 200;
int h = 80;
int  x1, y1, x2, y2; 

void setup(){
  size(500, 500);
  
  x = width/2;
  y = width/2;
}


void draw(){
  background(22, 166, 185);
  
  rectMode(CENTER);
  
  noStroke();
  
  fill(255, 195, 154);
  
  rect(x, y, w, h);
  
  if(mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2){
        button = true;
        }else{
        button = false;
        }
        
 if(button == true){
     background(255);
     }else{
     background(22, 150, 230);
  
  fill(250, 214, 165, 220);
  
  ellipse(width/2, height/2, 150, 150);
  
  triangle(width/2, height/2, 20, 80, 15, 20);
  
  triangle(width/2, height/2, 15, 20, 20, 80);
  
  triangle(width/2, height/2, 58, 20, 30, 95);
  
  triangle(width/2, height/2, 90, 70, 86, 75);
  
  for(int a =0; a<=360; a+=20){
      x1 = (int)(cos(radians(a)))*600 + width/2;
      y1 = (int)(sin(radians(a)))*600 + width/2;
      
      line(width/2, height/2, x1, y1); 
  }
  
  }

     noStroke();


}