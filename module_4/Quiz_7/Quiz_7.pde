Walker[] mWalkers = new Walker[100];
public PVector mousePos = new PVector();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = 0; i < mWalkers.length; i++)
  {
    mWalkers[i] = new Walker();
  }
}

void draw()
{
  background(80);
  for(int i = 0; i < mWalkers.length; i++)
  {
    mousePos = new PVector(mouseX - Window.w, -(mouseY - Window.h));
    mWalkers[i].update(mousePos);
    mWalkers[i].render();
  }
}
