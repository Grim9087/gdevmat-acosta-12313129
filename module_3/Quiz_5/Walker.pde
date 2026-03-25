class Walker
{
  PVector walkPos = new PVector();
  PVector bounceS = new PVector(10, 15);
  
  void render()
  {
    fill(random(256), random(256), random(256), random(50, 101));
    noStroke();
    circle(walkPos.x, walkPos.y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
     
    if (rng == 0)
    {
      walkPos.y+=10;
    }
    else if (rng == 1)
    {
      walkPos.y-=10;
    }
    else if (rng == 2)
    {
      walkPos.x+=10;
    }
    else if (rng == 3)
    {
      walkPos.x-=10;
    }
    else if (rng == 4)
    {
      walkPos.y+=10;
      walkPos.x+=10;
    }
    else if (rng == 5)
    {
      walkPos.y-=10;
      walkPos.x+=10;
    }
    else if (rng == 6)
    {
      walkPos.x-=10;
      walkPos.y+=10;
    }
    else if (rng == 7)
    {
      walkPos.x-=10;
      walkPos.y-=10;
    }
  }
  
  void randomWalkBiased()
  {
    int val = int(random(99));
    int dir = int(random(3));
    
    if(val >= 40)
    {
      walkPos.x -= 10;
    } 
    else if(val <= 40 && dir == 0)
    {
      walkPos.x += 10;
    }
    else if(val <= 40 && dir == 1)
    {
      walkPos.y += 10;
    }
    else if(val <= 40 && dir == 2)
    {
      walkPos.y -= 10;
    }
  }
  
  void moveAndBounce()
  {
    walkPos.add(bounceS);
  
    if ((walkPos.x > Window.right) || (walkPos.x < Window.left))
    {
      bounceS.x *= -1;
    }
  
    if ((walkPos.y > Window.top) || (walkPos.y < Window.bottom))
    {
      bounceS.y *= -1;
    }
  }
}
