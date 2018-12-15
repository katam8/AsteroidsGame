class Bullet extends Floater {
  double dRadians;
  public Bullet(Spaceship sS) {
    myColor = #FF215D;
    myCenterX = sS.getX();
    myCenterY = sS.getY();
    myPointDirection = sS.getPointDirection();
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + sS.getDirectionX();;
    myDirectionY = 5 * Math.sin(dRadians) + sS.getDirectionX();;
  }

  public void move() {      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
    if(myCenterX < 0) { shots.remove(this); }
    if(myCenterX > width) { shots.remove(this); }
    if (myCenterY < 0) { shots.remove(this); }  
    if (myCenterY > height) { shots.remove(this); }
  }

  public void show () {
    fill(myColor);
    stroke(myColor);
    ellipse( (float)myCenterX, (float)myCenterY, 2, 2);
   
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
