float yPos; 
float vel; 
float size; 
int state = 0;
PFont f;


void setup(){
  size (600, 600);  
  f = createFont("Arial",50, true);
  
  yPos = 0; 
  vel = 5; 
  size = 10; 
}

void draw(){
        
  //fill(0, 50); 
  //      rect(0, 0, width, height); 
  //      moveDrop();  
  //      makeDrop(width/2, size+5); 
  
  if(state == 0){  
    
     background(0);
     moveDrop();  
     makeDrop(width/2,  size+5); 
      
     String s = "Just pretending that processing has a sort of magic power can bring you back to the past~!---------------------------------------------------Press A: learning processing, Press B: do nothing";
     fill(255);
     text(s, 200, 200, 200, 200);
     
    //state = 1;
  }
  
    if(state == 2){  
      background(0);
     moveDrop();  
     makeDrop(width/2, size+5); 
      String s = "Congrats, you are back to the past, now you have second chance to enroll your grad school, but you have only two choices, either DT or ITP------------------------------------------------------Press A: DT, Press B: ITP";
      fill(255);
      text(s, 200, 200, 200, 200);
      
     state = 5;
  }
    if(state == 3){
       background(0);
       String s = "You are murdered by SubCommander Sven~! -------Please restart Your Game~!";
      fill(255,0,0);
      text(s, 200, 200, 200, 200);
       state = 100; 
   }
     if(state == 4){  
      
      String s = "Great choice, you are accepet by DT student commitment do you wanna attend DT BOOTCAMP?------Press A: Yes, Press B: No";
      fill(255);
      text(s, 200, 200, 200, 200);
      
     state = 8;
   }
     if(state == 6){  
      background(0);
      String s = "You are murdered by SubCommander Sven~! -------Please restart Your Game~!";
      fill(255,0,0);
      text(s, 200, 200, 200, 200);
      
     state = 100;
   }
     if(state == 9){  
        background(0);
        fallDrop(); 
        for(int i = 0; i<20; i++){
          makeDrop(i*50, 10); 
        }
        
        String s = "Welcome, You win a game without any reward";
        fill(124,252,0);
        text(s, 200, 200, 200, 200);
        
      //state = 100;
   }
     if(state == 10){  
        background(0);
        String s = "You are murdered by SubCommander Sven~! -------Please restart Your Game~!";
        fill(255,0,0);
        text(s, 200, 200, 200, 200);
        
       state = 100;
   }
         
       fill(0, 50); 
      rect(0, 0, width/5+10, height); 
      
        
      }


void keyPressed(){
  if(state == 0) {
    if( key == 'a'){
      state = 2; 
    }else if (key == 'b'){
      state = 3; 
    }
  }
   if(state == 5) {
    if( key == 'a'){
      state = 4; 
    }else if (key == 'b'){
      state = 6; 
    }
    if(state == 4) {
    if( key == 'a'){
      state = 9; 
    }else if (key == 'b'){
      state = 10; 
    }
  }
   }
  
  
  //if(state == 5){
  //  if(key == 'a'){
  //    println("something happens"); 
  //  }else if (key == 'b'){
  //    println("something else happens"); 
  //  }
  //}
}

void moveDrop(){
  yPos += vel; 
  
  if(yPos< 0 || yPos > height){
    vel *= -1; 
  }
}

void fallDrop(){
  yPos += vel; 
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