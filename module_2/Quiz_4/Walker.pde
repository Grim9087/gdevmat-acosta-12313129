class Walker
{
  public float tx = 0, ty = 10000;
  public float x, y, cScale, r, g, b; 
  public float sT = 75;
  public float rT = 655;
  public float gT = 790;
  public float bT = 235;
  
  void render()
  {
    fill(r, g, b);
    noStroke();
    circle(x, y, cScale);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
  }
  
  void perlinScale()
  {
    cScale = map(noise(sT), 0, 1, 5, 150);
    sT += 0.01f;
  }
  
  void perlinColor()
  {
    r = map(noise(rT), 0, 1, 0, 255);
    g = map(noise(gT), 0, 1, 0, 255);
    b = map(noise(bT), 0, 1, 0, 255);
    rT += 0.07f;
    gT += 0.07f;
    bT += 0.07f;
  }
  
}
