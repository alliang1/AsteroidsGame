Spaceship bob;
ArrayList <Bullet> pew = new ArrayList <Bullet> ();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> bumper;
ArrayList <Bonus> orb;
ArrayList <Heal> kit;
ArrayList <Gift> gif;

int tim = 3600;
int bspawn = 4;
int health = 3;
int score = 0;
int hi = 0;
boolean game = true;
public void setup() {
  size (800, 800);
  for (int i = 0; i < nightSky. length; i++) {
    nightSky[i] = new Star ();
  }
  bob = new Spaceship();
  bumper = new ArrayList <Asteroid>();
  for (int i = 0; i < 15; i++) {
    bumper.add(new Asteroid());
  }
 orb = new ArrayList <Bonus>();
  for (int i = 0; i < bspawn; i++) {
    orb.add(new Bonus());
  }
  kit = new ArrayList <Heal>();
  for (int i = 0; i < 3; i++) {
    kit.add(new Heal());}
    
    gif = new ArrayList <Gift>();
  for (int i = 0; i < 1; i++) {
    gif.add(new Gift());
  }
}//end of set up

public void draw()
{
  background (0);
   for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  textSize(30);
  tim--;
  fill(0);
  noStroke();
  rect(0,0,800,80);
  fill(255);
  text("Time left: " + tim/60,10,50);
  text("Health: " + health,650,50);
  text("Score: " + score,250,50);
  text("Highscore: " + hi,400,50);
  if(score>hi){ hi = score;}
  //game over
  if(tim == 0){game = false;} 
  if(health == 0){game = false;}
  if (game == false){ text("GAME OVER",300,400); noLoop();}
 
 
 

  for (int i = 0; i < bumper.size(); i++) {
    bumper.get(i).show();
    bumper.get(i).move();
    if (dist(bob.getX(), bob.getY(), bumper.get(i).getX(), bumper.get(i).getY()) <= 30) {
      bumper.remove(i);
      health --;
    }
  }
  
  for(int i = 0; i < orb.size(); i++){
    orb.get(i).show();
    orb.get(i).move();
    if (dist(bob.getX(), bob.getY(), orb.get(i).getX(), orb.get(i).getY()) <= 30) {
      tim = tim + 720;
      orb.remove(i);
      
    }
  }
  
  for(int i = 0; i < kit.size(); i++){
    kit.get(i).show();
    kit.get(i).move();
    if (dist(bob.getX(), bob.getY(), kit.get(i).getX(), kit.get(i).getY()) <= 30) {
      health = 3;
      kit.remove(i);
      
    }
  }
  
  for(int i = 0; i < gif.size(); i++){
    gif.get(i).show();
    gif.get(i).move();
    if (dist(bob.getX(), bob.getY(), gif.get(i).getX(), gif.get(i).getY()) <= 10) {
      health = 3;
      tim = 3600;
      gif.remove(i);
      
    }
  }
  
  int thing = (int)(Math.random()*20000);
  System.out.println(thing);
  if(thing == 12){
    gif.add(new Gift());}
    
  if (kit.size() < 2){ 
    kit.add(new Heal());
  }
  
  if (orb.size() < 2){ 
    orb.add(new Bonus());
  }
  if (bumper.size() < 10){ 
    for (int i = 0; i <9; i++){
    bumper.add(new Asteroid());}
  }
  

for(int i = 0; i < pew.size(); i++){
  pew.get(i).move();
  pew.get(i).show();
}




for (int i = 0; i < bumper.size(); i++){
  for (int j = 0; j < pew.size(); j++){
    if (dist(pew.get(j).getX(), pew.get(j).getY(), bumper.get(i).getX(), bumper.get(i).getY()) < 20) {
      score++;
      bumper.remove(i);
      pew.remove(j); 
      break;
    }
  }
}

  bob.show();
  bob.move();
}// end of draw

public void mouseClicked(){
  pew.add(new Bullet(bob));
  
}

public void keyPressed() {

  if (key == 'a')
  {
    
    bob.turn(-15);
  }

  if (key == 'd')
  {
    bob.turn(15);
  }

  if (key == 'w')
  {
    bob.accelerate(0.2);
    //bob.fire();
  }

  if (key == 's')
  {
    bob.accelerate(-0.2);
  }

  if (key == ' ')
  {
    bob.setXspeed(0);
  }
  
  if (key == 'e'){
  health = 3;
  tim = 3600;
  game = true;
  loop();
  score = 0;
  bob.setXspeed(0); 
}
 
}//end of key pressed
