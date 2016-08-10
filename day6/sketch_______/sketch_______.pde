int numPos = 50;
int [] xPos = new int[numPos];
int [] yPos = new int[numPos];

void setup(){
  size(500,500);
  smooth();
  noStroke();
  
  for(int i =0; i<numPos; i++){
    xPos[1] = 0;
    yPos[1] = 0;
  }
}

void draw(){
  
  fill(0,40);
  rect(0,0,width,height);
  
  background(0);
  
  for(int i = 0; i < numPos - 1; i++){
    xPos[i] = xPos[i+1];
    yPos[i] = yPos[i+1];
    
  }
  xPos[numPos-1] = mouseX;
  yPos[numPos-1] = mouseY;
  
  for(int i = 0; i <numPos; i++){
  fill(random(255),random(255), random(255));
  ellipse(xPos[i], yPos[i], 50, 50);
            }
}