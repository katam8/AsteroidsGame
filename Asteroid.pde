class Asteroid extends Floater {
  private int rotation;
  public Asteroid() {
    myColor = #FF7CDA;
    myCenterX = Math.random() * width ;
    myCenterY = Math.random() * height ; 
    myDirectionX = (Math.random() * 5 - 3) / 2;
    myDirectionY = (Math.random() * 5 - 3) / 2;
    myPointDirection = 0;
    rotation = (int)(Math.random() * 7 - 3); 
    corners = 8;
    int[] xAr = {0, 3, 4, 3, 0, -3, -4, -3};
    int[] yAr = {4, 3, 0, -3, -4, -3, 0, 3};
    for (int i = 0; i < corners; i++) { yAr[i] = yAr[i]*4; xAr[i] = xAr[i]*4; }
    xCorners = xAr;
    yCorners = yAr;
  }
  
  public void move() {
    if (rotation == 0)
    {
      rotation = -2;
    }

    turn(rotation);
    
    super.move();
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
  public int getRotationSpeed() { return rotation; }
}
