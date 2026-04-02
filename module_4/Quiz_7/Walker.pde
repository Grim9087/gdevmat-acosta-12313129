public class Walker
{
  public float x = 175 * randomGaussian() + 50;
  public float y = 200 * randomGaussian() + 65;
  public float velocityLimit = 13;
  
  public PVector pos = new PVector(x, y);
  public PVector acceleration = new PVector();
  public PVector direction = new PVector();
  public PVector velocity = new PVector();
  
  public void update(PVector mousePos)
  {
    direction = PVector.sub(mousePos, pos);
    direction.normalize();   
    this.acceleration = direction;
    this.acceleration.mult(0.2);
    
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.pos.add(this.velocity);
  }
  
  public void render()
  {
    fill(128);
    circle(pos.x, pos.y, random(50));
  }
  
}
