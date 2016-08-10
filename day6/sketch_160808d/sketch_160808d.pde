int numberBalls = 1000; 
int buffer = 10; 

int ballSize  = 5; 
//int eatRadius = 50; 

int [] ballX = new int[numberBalls]; 
int [] ballY = new int[numberBalls]; 

int [] speedX = new int[numberBalls]; 
int [] speedY = new int[numberBalls]; 

int [] radii= new int[numberBalls]; 

color[] baseColor = new int[numberBalls]; 
int [] opacity = new int[numberBalls]; 
color [] drawColor = new int[numberBalls]; 

void setup(){
  size(500,500); 
  noStroke(); 
  
  for(int i = 0; i<numberBalls; i++){
    ballX[i] = int(random(50, 50)); 
    ballY[i] = int(random(50, 50)); 
    
    speedX[i] = int(random(-5, 5));
    speedY[i] = int(random(-5,5)); 
    
    if(speedX[i]==0){
      speedX[i]=1; 
    }
    
    if(speedY[i]==0){
      speedY[i] = 1; 
    }
    
    radii[i] = ballSize; 
    baseColor[i] = color(random(255), random(255), random(255)); 
    opacity[i]= 255; 
    drawColor[i]= color(baseColor[i], opacity[i]); 
  }
}

void draw(){
  background(255); 
  
  for(int i = 0; i< numberBalls; i++){
    ballX[i] = ballX[i] + speedX[i]; 
    ballY[i] = ballY[i] + speedY[i]; 
  }
  
  for(int i = 0; i<numberBalls; i++){
    if(ballX[i]< 0){
      speedX[i] = speedX[i]*-1; 
      ballX[i] = 0; 
    }
      if(ballX[i]> width){
        speedX[i] = speedX[i]*-1; 
        ballX[i] = width; 
      }
      
    if(ballY[i]< 0){
      speedY[i] = speedY[i]*-1; 
      ballY[i] = 0; 
    }
    if(ballY[i]> height){
        speedY[i] = speedY[i]*-1; 
        ballY[i] = height; 
    }   
    }
    
    for(int i = 0; i< numberBalls; i++){
      if(dist(ballX[i], ballY[i], mouseX, mouseY)< eatRadius){
        opacity[i] = 0; 
      }
    }
    
    if(keyPressed){
      for(int i = 0; i<numberBalls; i++){
        opacity[i] =255; 
      }
    }
    
    for(int i = 0; i<numberBalls; i++){
      drawColor[i]= color(baseColor[i], opacity[i]); 
      fill(drawColor[i]); 
      ellipse(ballX[i], ballY[i], radii[i]*2, radii[i]*2); 
    }
  } 


  
  
  
  
  
  
  
  