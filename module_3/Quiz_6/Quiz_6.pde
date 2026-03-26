void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x,y);
}

void draw()
{
  background(130);
  PVector mouse = mousePos();
  
  strokeWeight(12);
  stroke(255, 0, 0);
  mouse.normalize().mult(500);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  strokeWeight(6);
  stroke(255);
  mouse.normalize().mult(495);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  strokeWeight(15);
  stroke(0);
  mouse.normalize().mult(100);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  println(mouse.mag());
 
}
