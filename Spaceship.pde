class Spaceship extends Floater {   
   //your code here
   public Spaceship() {
     corners = 4;
     int[] xArray = {-8, 16, -8, -2}; 
     int[] yArray = {-8, 0, 8, 0};
     xCorners = xArray;
     yCorners = yArray;
     myColor = #A4C4FA;
   }
   public void HyperSpace() {
       myCenterX = Math.random()*width + 1;
       myCenterY = Math.random()*height + 1;
       myPointDirection = Math.random()*360;
       myDirectionX = 0;
       myDirectionY = 0;
   }
   public void control () { 
     private boolean key37Pressed = false;
     private boolean key38Pressed = false;
     private boolean key39Pressed = false;
     private boolean key40Pressed = false;
     if (keyPressed && keyCode == 38) {
       key38Pressed = true;
       accelerate(0.5);
     } else if (keyPressed && keyCode == 40) {
       accelerate(-0.5);
     }
     if (keyPressed && keyCode == 37) {
       turn(-5);
     }else if (keyPressed && keyCode == 39) {
       turn(5);
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
