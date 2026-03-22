void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(130);
  
  drawCartesianPlane();
  drawQuadraticFunction();
  drawLinearFunction();
  drawSineWave();
  
}

void drawCartesianPlane()
{
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  strokeWeight(2);
  line(0, 350, 0, -350);
  line(350, 0, -350, 0);
  
  for (int i = -350; i <=350; i += 10)
  {
    strokeWeight(1);
    line(i, -5, i, 5);
    line(-5, i, 5, i);
  }
}

void drawQuadraticFunction()
{
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  noStroke();
  
  for (float x = -350; x <= 350; x+= 0.1f)
  {
    circle(x * 10, ((x * x) - (15 * x) - 3), 5);
  }  
}

void drawLinearFunction()
{
  color purple = color(128, 0, 128);
  fill(purple);
  stroke(purple);
  noStroke();
  
  for(int x = -75; x <= 75; x++)
  {
    circle(x, ((-5 * x) + 30), 5);
  }
}

void drawSineWave()
{
  color blue = color(0, 191, 255);
  fill(blue);
  stroke(blue);
  noStroke();
  
  float frequency = 10;
  float amplitude = 35;
  
  for (float x =-350; x <= 350; x+= 0.1f)
  {
    circle(x * frequency, (float)Math.sin(x) * amplitude, 5);
  }
}
