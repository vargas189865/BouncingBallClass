//Global Variables
int x = 400;
int y = 400;
int xD = 5;
int yD = 5;
int diameter = 100;
int x2 = 400;
int y2 = 400;
int xD2 = 5;
int yD2 = 5;
int diameter2 = 100;
//Setup Method
public void setup()
{
  background(150);
  size(800,800);
  ellipse(x,y,diameter, diameter);
  x = (int)(Math.random()  * width);
  y = (int) (Math.random() * height);
  ellipse(x2, y2, diameter2, diameter2);
  x2 = (int)(Math.random() * width);
  y2 = (int)(Math.random() * height);
}

//draw method
public void draw()
{
  background(150);
  ellipse(x,y,diameter, diameter);
  x += xD;
  y += yD;
  if(x > 800 || x < 0)
    xD = -1 * xD;
  if(y > 800 || y < 0)
    yD = -1 * yD;
  ellipse(x2, y2, diameter2, diameter2);
  x2 += xD2;
  y2 += yD2;
    if(x2 > 800 || x2 < 0)
    xD2 = -1 * xD2;
  if(y2 > 800 || y2 < 0)
    yD2 = -1 * yD2;
    if( collision(x,y,x2,y2) < diameter/2 + diameter/2)
    {
      xD = -1*xD;
      xD2 = -1 * xD2;
      yD = -1 * yD2;
      yD2 = -1 * yD2;
      diameter = 20;
      diameter2 = 20;
    }
}
public int collision(int x, int y, int x2, int y2)
{

  //return the distance between both balls
  return (int)(Math.sqrt((x2 - x)*(x2 - x) + (y2 -y)*(y2 - y)));
}
