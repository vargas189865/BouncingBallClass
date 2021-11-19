/** Global Variables
  * This is where you need to declare the variables used 
  * in the setup and draw methods
  */

/** setup method 
  * you need to set up the following methods:
  *     size
  *     background
  *     stroke
  *     strokeWeight (optional)
  *     color    (optional)
  * 
  * This is where you initialize your variables 
  * the same variables you declared above
  */
  
  ArrayList<Ball> bArray;
  
public void setup()
{
  size(800, 800);
  stroke(255);
  strokeWeight(5);
  background(120);
  bArray = new ArrayList<Ball>();
  for(int i = 0; i < 5; i++)
     bArray.add(new Ball((int)(Math.random()*width), (int)(Math.random()*height)));
  
  
}


/** draw method
  * This will loop through until you hit stop or encounters noLoop() 
  * Do you need to reset the background ? If so include 
  *     background
  * You need to update the drawing of the ellipse or other figures.
  */
public void draw()
{
  background(120);
  for(Ball b : bArray)
  {
    b.checkEdges();
    b.update();
    b.drawBall();  
  }

  
}


public class Ball
{
  // Instance variables
  private int x;
  private int y;
  private int xD = 5;
  private int yD = 5;
  private int diameter;
  
  // Constructor(s)
  public Ball()
  {
    x = 50;
    y = 50;
    diameter = 50;
  }
  
  public Ball(int x, int y)
  {
    this.x = x;
    this.y = y;
    diameter = 50;
  } 
  
  public Ball(int x, int y, int diameter)
  {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
  } 
  // Getter methods (Accessor methods)
  public void drawBall()
  {
    ellipse(x, y, diameter, diameter);
  }
  
  public void update()
  {
    x += xD;
    y += yD;
  }
  
  public void checkEdges()
  {
    if(x - diameter/2 < 0 || x + diameter/2 > width)
      xD = -1*xD;
    if(y - diameter/2 < 0 || y + diameter/2 > height)
      yD = -1*yD;
  }
  
  // Setter methods
 
 
 // 

}
