class Star //note that this class does NOT extend Floater
{
  private float starX, starY;
  //your code here
  public Star() {
      starX = (float)(Math.random()*width + 1);
      starY = (float)(Math.random()*height + 1);
  }
  //public void 
  public void show() {
    strokeWeight((float)(Math.random()*4+1));
    point(starX, starY);
  }
}
