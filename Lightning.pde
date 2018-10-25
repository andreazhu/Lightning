int startX = 0;
int startY = 200;
int endX = 0;
int endY = 200;

void setup()
{
  size(400,400);
  strokeWeight(1);
  background(255,255,255);
  frameRate(30);
}

void draw()
{ 
  float r = (int)(Math.random()*255); //[0,255]
  float g = (int)(Math.random()*255); //[0,255]
  float b = (int)(Math.random()*255); //[0,255]
  stroke(r,g,b);
  endX = startX + (int)(Math.random()*20); //[0,20]
  endY = startY + (int)(Math.random()*40 - 20); //[-20,20]
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
}

void mousePressed()
{
  
  startX = 0;
  startY = (int)(Math.random()*400); //[0,400]
  endX = 0;
  endY = (int)(Math.random()*400); //[0,400]
}
