// create variables
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(4); //adjusts width of each bolt
  background(0); //adjusts background color
}
void draw()
{
  // Create a bolt of randoom color that moves randomly across screen
  stroke((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
  while (endX<300){
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  //set values equal to original values
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;

}
