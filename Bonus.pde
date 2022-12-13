class Bonus extends Floater{
   
 public Bonus(){
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myPointDirection = Math.random()*360;
    myXspeed = -0.3;
    myYspeed = 0.3;
    
  }
  
  public void move(){
   
    super.move();
  }
  
  public void show(){
    fill(45,163,250);
    ellipse((float)myCenterX,(float)myCenterY,30,30);
  }
  
  public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}  
    
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;} 
  
}//end of bonus
