Walker blackHole = new Walker();
Walker[] otherMatter = new Walker[100];

void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = 0; i < otherMatter.length; i++)
  {
    otherMatter[i] = new Walker();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < otherMatter.length; i++)
  {
    otherMatter[i].travel(blackHole);
    otherMatter[i].mRender();
    blackHole.bhRender();
  }
  
  if (frameCount == 70)
  {
    for(int i = 0; i < otherMatter.length; i++)
    {
      otherMatter[i] = new Walker();
    }
    frameCount = 0;
  }
  
}
