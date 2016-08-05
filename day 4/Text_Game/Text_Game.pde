float yPos; 
float vel; 
float size; 
int state = 0;
PFont f;


void setup(){
  size (600, 600); 
  background(0); 
  f = createFont("Arial", 16, true);
  
  yPos = 0; 
  vel = 5; 
  size = 10; 
}

void draw(){
    fill(0, 50); 
    rect(0, 0, width, height); 
    
    moveDrop();  
    makeDrop(width/2, size+5); 
    
     
    //textAlign(CENTER); 
    //textFont(f, 30); 
    //fill(255); 
    //text("press A to explore, press B to hide", width/2, height/2); 
    String s = "Just pretending that processing has a sort of magic power can bring you back to the past~!Press A: learning processing, Press B: do nothing";
    fill(255);
    text(s, 200, 200, 200, 200);
}


void keyPressed(){
  if(state == 1) {
    if( key == 'a'){
      state = 2; 
    }else if (key == 'b'){
      state = 3; 
    }
  }
  
  if(state == 5){
    if(key == 'a'){
      println("something happens"); 
      
    }else if (key == 'b'){
      println("something else happens"); 
    }
  }
}

void moveDrop(){
  yPos += vel; 
  
  if(yPos< 0 || yPos > height){
    vel *= -1; 
  }
}
void makeDrop(float xPos, float size){
    int r = (int) xPos; 
    int g = (int) yPos; 
    
    if(r>255){
      r = 100; 
    }
    
    if(g> 255){
      g = 100;  
    }
    noStroke(); 
    fill(r, g, 227); 
    ellipse(xPos, yPos, size, size); 
}  

float calculateSize(float x1, float y1){
    float s = x1+y1; 
    return s; 
}