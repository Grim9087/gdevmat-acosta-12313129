class Walker
{
  float x;
  float y;
  
  void render()
  {
    fill(random(256), random(256), random(256), random(50, 101));
    noStroke();
    circle(x, y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
     
    if (rng == 0)
    {
      y+=10;
    }
    else if (rng == 1)
    {
      y-=10;
    }
    else if (rng == 2)
    {
      x+=10;
    }
    else if (rng == 3)
    {
      x-=10;
    }
    else if (rng == 4)
    {
      y+=10;
      x+=10;
    }
    else if (rng == 5)
    {
      y-=10;
      x+=10;
    }
    else if (rng == 6)
    {
      x-=10;
      y+=10;
    }
    else if (rng == 7)
    {
      x-=10;
      y-=10;
    }
  }
  
  void randomWalkBiased()
  {
    int val = int(random(99));
    int dir = int(random(3));
    
    if(val >= 40)
    {
      x -= 10;
    } 
    else if(val <= 40 && dir == 0)
    {
      x += 10;
    }
    else if(val <= 40 && dir == 1)
    {
      y += 10;
    }
    else if(val <= 40 && dir == 2)
    {
      y -= 10;
    }
  }
}
