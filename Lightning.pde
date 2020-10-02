// create variables
int startX = 350;
int startY = 0;
int endX = 350;
int endY = 0;


void setup()
{
  size(700,700);
  background(0);
}
  
void draw()
{
  //replace background
  background(0);
  // Create a bolt of random yellow color that moves randomly across screen
  strokeWeight((int)(Math.random()*5)+3); //adjusts width of each bolt
  stroke((int)(Math.random()*10)+255, (int)(Math.random()*60)+205,(int)(Math.random()*10),(int)(Math.random()*65)+200);
  while (endY<700){
    endY = startY + (int)(Math.random()*10);
    endX = startX + (int)(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  //set values equal to original values
  startX = 350;
  startY = 0;
  endX = 350;
  endY = 0;

}
