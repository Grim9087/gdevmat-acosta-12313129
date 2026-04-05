Walker[] dfWalker = new Walker[10];
Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
PVector wind = new PVector(0.1, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = 0; i < dfWalker.length; i++)
  {
    int posX = (Window.w / 10) * (i - 5);
    float rMass = random(10);
    dfWalker[i] = new Walker();
    dfWalker[i].mass = rMass;
    dfWalker[i].scale = dfWalker[i].mass * 15;
    dfWalker[i].position = new PVector(posX, Window.h);
  }
}

void draw()
{
  background(255);
  
  ocean.render();
  
  for (Walker df : dfWalker)
  {
    float fM = 0.1 * 1;
    PVector friction = df.velocity.copy();
    PVector gravity = new PVector(0, -0.15 * df.mass);
    df.render();
    df.update();
    df.applyForce(wind);
    df.applyForce(gravity);  
    df.applyForce(friction.mult(-1).normalize().mult(fM));

    if (df.position.y <= Window.bottom)
    {
      df.position.y = Window.bottom;
      df.velocity.y *= -1;
    }
    else if (df.position.x >= Window.right)
    {
      df.position.x = Window.right;
      df.velocity.x *= -1;
    }  
    
    if (ocean.isCollidingWith(df))
    {      
      PVector dragForce = ocean.calculateDragForce(df);
      df.applyForce(dragForce);
    }    
  }
}
