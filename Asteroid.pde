class Asteroid extends Floater {
  private int rotation;
  public Asteroid() {
    //myCenterX = 0;
    //myCenterY = 0;
    rotation = (int)(Math.random() * 7 - 3); 
    corners = 8;
    int[] xAr = {(int)myCenterX+(int)(Math.random() * 9 - 4), (int)myCenterX+(int)(Math.random() * 9 - 4), (int)myCenterX+(int)(Math.random() * 9 - 4), (int)myCenterX+(int)(Math.random() * 9 - 4), (int)myCenterX+(int)(Math.random() * 9 - 4)}; 
    int[] yAr = {(int)myCenterX+(int)(Math.random() * 9 - 4), (int)myCenterX+(int)(Math.random() * 9 - 4), (int)myCenterX+(int)(Math.random() * 9 - 4), (int)myCenterX+(int)(Math.random() * 9 - 4) ,(int)myCenterX+(int)(Math.random() * 9 - 4)};
    xCorners = xAr;
    yCorners = yAr;
  }
  
  public void move() {
    myPointDirection += rotation;
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    
    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }
  
  
  public void setX(int x) { myCenterX = x; }  
  public int getX() { return (int)myCenterX; }   
  public void setY(int y) { myCenterY = y; }   
  public int getY() { return (int)myCenterY; }   
  public void setDirectionX(double x) { myDirectionX = x; }   
  public double getDirectionX() { return myDirectionX; }   
  public void setDirectionY(double y) { myDirectionY = y; }   
  public double getDirectionY() { return myDirectionY; }   
  public void setPointDirection(int degrees) { myPointDirection = degrees; }   
  public double getPointDirection() { return myPointDirection; }
}
