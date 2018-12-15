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
  fill(0,0,0, 105);
  rect(0, 0, width, height);
  //Bullet
  for (int i=0; i< shots.size(); i++){
      shots.get(i).show();
      shots.get(i).move();
  }
  for(int i = 0; i < shots.size(); i++) {
    for(int z = 0; z < rocks.size(); z++) {
      if(dist(shots.get(i).getX(), shots.get(i).getY(), rocks.get(z).getX(), rocks.get(z).getY()) < 10) {
          rocks.remove(z);
          break;
      }
    }
  }
  //Star
  for (int i = 0; i < stars.length; i++) {
    stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255), 220);
    stars[i].show();
  }
  //Asteroid
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    if (dist(ss.getX(), ss.getY(), rocks.get(i).getX(), rocks.get(i).getY()) < 20) {
      rocks.remove(i);
      break;
    }
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
    if(spacePressed) {
      shots.add(0, new Bullet(ss));
    }
  }


  void keyPressed() {
    if (keyCode == 90) { 
      ss.HyperSpace();
    } else if (keyCode == 32) { 
      spacePressed = true;
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
    } else if (keyCode == 32) {
      spacePressed = false;
    }
  }
