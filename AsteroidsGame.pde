Spaceship bob;

Star[] nightSky = new Star[200];
public void setup(){
  size (800, 800);
for (int i = 0; i < nightSky. length; i++){
    nightSky[i] = new Star ();}
    bob = new Spaceship();
}
  public void draw()
{
  background (0);
  for (int i = 0; i < nightSky.length; i++)
    {
      nightSky[i].show();
    }
    bob.show();
    bob.move();
}

public void keyPressed(){
 
   if(key == 'a')
  {
    bob.turn(-15);
  }
 
  if(key == 'd')
  {
    bob.turn(15);
  }
 
  if(key == 'w')
  {
    bob.accelerate(0.5);

  }
 
   if(key == 's')
  {
    bob.accelerate(-0.5);
  }
 
   if(key == ' ')
  {
    bob.setXspeed(0);

   
  }

}
