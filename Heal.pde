class Heal extends Floater{
   private double rotSpeed;
 public Heal(){
   rotSpeed = (int)(Math.random()*6)-3;
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myPointDirection = Math.random()*360;
    myXspeed = -0.3;
    myYspeed = -0.3;
    
  }
  
   public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public void show(){
    fill(255);
    noStroke();
   rect((float)myCenterX,(float)myCenterY,30,20);
   fill(255,0,0);
   rect((float)myCenterX+13,(float)myCenterY+3,5,15);
   rect((float)myCenterX+8,(float)myCenterY+7,15,5);
  }
  
  public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}  
    
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;} 
  
}//end of bonus
