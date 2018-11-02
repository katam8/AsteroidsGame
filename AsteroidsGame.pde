//your variable declarations here
Spaceship ss;
Star[] s;
public void setup() {
  //your code here
  background(#5168D8);
  size(600, 600);
  ss = new Spaceship();
  ss.setX(width/2);
  ss.setY(height/2);
  s = new Star[350];
  for(int q = 0; q < s.length; q++) {
    s[q] = new Star();
  }
}
public void draw() {
  //your code here
  background(#000F29);
  for(int q = 0; q < s.length; q++) {
    s[q].show();
  }
  ss.show();
  ss.control();
  ss.move();
}

public void keyPressed() {
  if (keyPressed && keyCode == 90) {
    ss.HyperSpace();
  }
}
