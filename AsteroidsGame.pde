//your variable declarations here
Spaceship ss;
Star[] stars;
ArrayList <Asteroid> rocks;
ArrayList <Bullet> shots = new ArrayList <Bullet>();
boolean spacePressed, upIsPressed, downIsPressed, leftIsPressed, rightIsPressed, zIsPressed = false;

public void setup() {
  //your code here
  size(600, 600);
  //SpaceShip
  ss = new Spaceship();
  ss.setX(width/2);
  ss.setY(height/2);
  //Stars
  stars = new Star[250];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  //Asteroids
  rocks = new ArrayList <Asteroid>();
  for (int i = 0; i < 60; i++) {
    rocks.add(new Asteroid());
  }
}
public void draw() {
  //your code here
  background(#00010F);
  //Bullet 
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).show();
    shots.get(i).move();
    if (shots.get(i).myCenterX > width)
    {     
      shots.remove(i);
    } else if (shots.get(i).myCenterX < 0)
    {     
      shots.remove(this);
    }    
    if (shots.get(i).myCenterY > height)
    {    
      shots.remove(0);
    } else if (shots.get(i).myCenterY < 0)
    {     
      shots.remove(0);
    }
  }
  //Star
  for (int i = 0; i < stars.length; i++) {
    stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    stars[i].show();
  }
  //Asteroid
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    if (dist(ss.getX(), ss.getY(), rocks.get(i).getX(), rocks.get(i).getY()) < 20) {
      rocks.remove(i);
      break;
    } else if (dist(rocks.get(i).getX(), rocks.get(i).getY(), shots.get(0).getX(), shots.get(0).getY()) < 20) {
      rocks.remove(i);
      break;
    }

    ss.show();
    ss.move();

    // Movement
    if (leftIsPressed) {
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
}

  void keyPressed() {
    if (keyCode == 90) { 
      ss.HyperSpace();
    } else if (keyCode == 32) { 
      shots.add(0, new Bullet(ss));
    } else if (keyCode == UP) {  
      upIsPressed = true;
    } else if (keyCode == DOWN) { 
      downIsPressed = true;
    } else if (keyCode == LEFT) { 
      leftIsPressed = true;
    } else if (keyCode == RIGHT) { 
      rightIsPressed = true;
    }
  }
  void keyReleased() {
    if (keyCode == UP) { 
      upIsPressed = false;
    } else if (keyCode == DOWN) { 
      downIsPressed = false;
    } else if (keyCode == LEFT) { 
      leftIsPressed = false;
    } else if (keyCode == RIGHT) { 
      rightIsPressed = false;
    }
  }
