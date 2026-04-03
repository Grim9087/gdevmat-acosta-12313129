Walker[] bounceW = new Walker[10];
PVector gravity = new PVector(0, -0.4);
PVector wind = new PVector(0.15, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = 0; i < bounceW.length; i++)
  {
    float sizeR = i;
    sizeR++;
    bounceW[i] = new Walker();
    bounceW[i].mass = sizeR;
    bounceW[i].scale = bounceW[i].mass * 15;
    bounceW[i].position = new PVector(-500, 200);
    
  }
}

void draw()
{
  background(80);
  
  for(int i = 0; i < bounceW.length; i++)
  {
    bounceW[i].render();
    bounceW[i].update();
    bounceW[i].applyForce(gravity);
    bounceW[i].applyForce(wind);
    
    if(bounceW[i].position.y <= Window.bottom)
    {
      bounceW[i].velocity.y *= -1;
    }
    else if(bounceW[i].position.y >= Window.top)
    {
      bounceW[i].velocity.y *= 1;
    }
    else if(bounceW[i].position.x >= Window.right)
    {
      bounceW[i].velocity.x *= -1;
    }
    else if(bounceW[i].position.x <= Window.left)
    {
      bounceW[i].velocity.x *= 1;
    }
  }
}
