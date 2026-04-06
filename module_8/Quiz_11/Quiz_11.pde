Walker[] gravWalker = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = 0; i < gravWalker.length; i++)
  {
    float nMass = random(2, 10);
    gravWalker[i] = new Walker();
    gravWalker[i].mass = nMass;
    gravWalker[i].scale = gravWalker[i].mass * 11;
    gravWalker[i].position = new PVector(random(Window.left, Window.right), random(Window.bottom, Window.top));
  }
}

void draw()
{
  background(255);
  
  for (Walker gW : gravWalker)
  {
    for (Walker ogW : gravWalker)
    {
      if (gW != ogW)
      {
        gW.render();
        gW.update();
        gW.applyForce(ogW.calculateAttraction(gW));
      }
    }
    
  }
}
