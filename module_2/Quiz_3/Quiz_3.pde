void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}

void draw()
{
  float x = randomGaussian() * 150;
  float y = random(-height, height + 1);
  
  float stdDeviation = 65;
  float mean = 10;
  float newG = randomGaussian();
  
  fill(random(256), random(256), random(256), random(10, 101));
  noStroke();
  circle(x, y, random(stdDeviation * newG + mean));
  
  if(frameCount == 300)
  {
    clear();
    background(255);
    frameCount = 0;
  }
}
