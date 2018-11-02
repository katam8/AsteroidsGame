class Star //note that this class does NOT extend Floater
{
  private float starX, starY;
  //your code here
  public Star() {
      starX = (float)(Math.random()*width + 1);
      starY = (float)(Math.random()*height + 1);
  }
  public void show() {
    fill(#E5E5E5);
    strokeWeight(1.75);
    point(starX, starY);
  }
}
