public class Walker
{
  public color obj = color(random(256), random(256), random(256));
  public float x = 185 * randomGaussian() + 45;
  public float y = 200 * randomGaussian() + 65;
  public PVector pos = new PVector(x, y);
  
  public void bhRender()
  {
    pos = new PVector(mouseX - Window.w, -(mouseY - Window.h));
    fill(255);
    noStroke();
    circle(pos.x, pos.y, 50);
  }
  
  public void mRender()
  {
    fill(obj);
    noStroke();
    circle(pos.x, pos.y, random(50));
  }
  
  public void travel(Walker goal)
  {
    PVector mMove = PVector.sub(goal.pos, pos);
    mMove.normalize().mult(13);
    pos.add(mMove);
  }
}
