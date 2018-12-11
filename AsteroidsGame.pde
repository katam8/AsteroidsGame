//your variable declarations here
Spaceship ss;
Star[] stars;
ArrayList <Asteroid> rocks;
boolean upIsPressed, downIsPressed, leftIsPressed, rightIsPressed, zIsPressed = false;

public void setup() {
  //your code here
  size(600, 600);
  //SpaceShip
  ss = new Spaceship();
  ss.setX(width/2);
  ss.setY(height/2);
  //Stars
  stars = new Star[250];
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  //Asteroids
  rocks = new ArrayList <Asteroid>();
  for(int i = 0; i < 30; i++) {
    rocks.add(new Asteroid());  
  }
}
public void draw() {
  //your code here
  background(#00010F);
  
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  
  for(int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    //int(
  }
  
  ss.show();
  ss.move();
  
  // Movement
  if(leftIsPressed) {
    ss.turn(-10);
  } else if (rightIsPressed) {
    ss.turn(10);
  } 
  if (upIsPressed) { 
    ss.accelerate(0.5);
  } else if (!upIsPressed) {
    ss.decelerate(0.25);
    if (ss.getDirectionX() > -0.1 && ss.getDirectionX() < 0.1) {
      ss.setDirectionX(0); 
    }
    if (ss.getDirectionY() > -0.1 && ss.getDirectionY() < 0.1) {
      ss.setDirectionY(0); 
    }
  }
}

void keyPressed() {
   if (keyCode == 90) { ss.HyperSpace(); }
   else if (keyCode == UP) {  upIsPressed = true; }
   else if (keyCode == DOWN) { downIsPressed = true; } 
   else if (keyCode == LEFT) { leftIsPressed = true; } 
   else if (keyCode == RIGHT) { rightIsPressed = true; }
}
void keyReleased() {
  if (keyCode == UP) { upIsPressed = false; }
  else if (keyCode == DOWN) { downIsPressed = false; }
  else if (keyCode == LEFT) { leftIsPressed = false; }
  else if (keyCode == RIGHT) { rightIsPressed = false; }
}
