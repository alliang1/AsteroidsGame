Spaceship bob;

Star[] nightSky = new Star[200];
ArrayList <Asteroid> bumper;

public void setup() {
  size (800, 800);
  for (int i = 0; i < nightSky. length; i++) {
    nightSky[i] = new Star ();
  }
  bob = new Spaceship();
  bumper = new ArrayList <Asteroid>();
  for (int i = 0; i < 10; i++) {
    bumper.add(new Asteroid());
  }
}//end of set up

public void draw()
{
  background (0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }

  for (int i = 0; i < bumper.size(); i++) {
    bumper.get(i).show();
    bumper.get(i).move();
    if (dist(bob.getX(), bob.getY(), bumper.get(i).getX(), bumper.get(i).getY()) <= 30) {
      bumper.remove(i);
    }
  }


  bob.show();
  bob.move();
}// end of draw

public void keyPressed() {

  if (key == 'a')
  {
    bob.turn(15);
  }

  if (key == 'd')
  {
    bob.turn(15);
  }

  if (key == 'w')
  {
    bob.accelerate(0.2);
    bob.fire();
  }

  if (key == 's')
  {
    bob.accelerate(-0.2);
  }

  if (key == ' ')
  {
    bob.setXspeed(0);
  }
}
