class Bullet extends Floater {
  double dRadians;
  public Bullet(Spaceship sS) {
    corners = 4;
    int[] xS = {-2, 2, 2, -2};
    int[] yS = {2, 2, -2, -2};
    //for (int i = 0; i < corners; i++) { yS[i] = yS[i] * 2; xS[i] = xS[i] * 2; }
    xCorners = xS;   
    yCorners = yS;
    myColor = #FF215D;
    myCenterX = sS.getX();
    myCenterY = sS.getY();
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + sS.getDirectionX();;
    myDirectionY = 5 * Math.sin(dRadians) + sS.getDirectionX();;
    myPointDirection = sS.myPointDirection;
  }

  public void move() {
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
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
