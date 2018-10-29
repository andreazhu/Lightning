/** Lightning Project using Random Walk
  * Animation 
  * @author Andrea Zhu
  * @date 2018-10-29
  */

int startX = 0;
int startY = 250;
int endX = 0;
int endY = 250;

void setup()
{
  size(1000,500);
  strokeWeight(1);
  background(255,255,255);
  frameRate(15);
}

void draw()
{ 
  float r = (int)(Math.random()*255); //[0,255]
  float g = (int)(Math.random()*255); //[0,255]
  float b = (int)(Math.random()*255); //[0,255]
  float radius = (int)(Math.random()*50 + 10);  //[10,60]
  float cx = (int)(Math.random()*1000);  //[0,1000]
  float cy = (int)(Math.random()*500);  //[0,500]
  background(255,255,255);
  while (endX <= 1000) {
    stroke(r,g,b);
    endX = startX + (int)(Math.random()*20); //[0,20]
    endY = startY + (int)(Math.random()*40 - 20); //[-20,20]
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  fill(r,g,b);
  ellipse(cx, cy, radius, radius);
  fill(255,255,255);
  ellipse(cx, cy, radius + 3, radius + 3);
  startX = 0;
  startY = 250;
  endX = 0;
  endY = 250;
}
