class Gift extends Floater{
   
 public Gift(){
   
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myPointDirection = Math.random()*360;
    myXspeed = 0.5;
    myYspeed = -0.5;
    
  }
  
   public void move(){
    
    super.move();
  }
  
  public void show(){
    fill(#F0EC6D);
    ellipse((float)myCenterX+7,(float)myCenterY,5,10);
    ellipse((float)myCenterX+13,(float)myCenterY,5,10);
    fill(#9A2DFA);
    rect((float)myCenterX,(float)myCenterY,20,20);
    fill(#F0EC6D);
    rect((float)myCenterX+8,(float)myCenterY,4,20);
    rect((float)myCenterX,(float)myCenterY+8,20,4);
    
  }
  
  public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}  
    
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;} 
  
}//end of Gift
