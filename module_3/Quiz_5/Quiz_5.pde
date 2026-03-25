void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

Walker vectorWalker = new Walker();
Walker biasedWalker = new Walker();
Walker bounceWalker = new Walker();

void draw()
{
  vectorWalker.render();
  vectorWalker.randomWalk();
  
  biasedWalker.render();
  biasedWalker.randomWalkBiased();
  
  bounceWalker.render();
  bounceWalker.moveAndBounce();
}
