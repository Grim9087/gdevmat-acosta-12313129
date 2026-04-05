Walker[] bWalker = new Walker[8];
PVector acceleration = new PVector(0.2, 0);

void setup()
{
  size(1980, 1080, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  int posY = 0;
  for(int i = 0; i < bWalker.length; i++)
  {
    posY = 2 * (Window.h / 8) * (i - (8 / 2));
    float size = i;
    size++;
    bWalker[i] = new Walker();
    bWalker[i].mass = size;
    bWalker[i].scale = bWalker[i].mass * 15;
    bWalker[i].position = new PVector(-800, posY);
  }
}

void draw()
{
  background(80);
  
  strokeWeight(5);
  stroke(0);
  line(0, Window.top, 0, Window.bottom);
  
  for (Walker bW : bWalker)
  {
    float mew;
    
    if (bW.position.x > 0)
    {
      mew = 0.4f;
    }
    else
    {
      mew = 0.01f;
    }
    
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = bW.velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    bW.applyForce(friction);
    
    bW.render();
    bW.update();
    bW.applyForce(acceleration);  
  }
}

void mousePressed()
{
  if(mouseButton == LEFT)
  {
    frameCount = -1;
  }
}
