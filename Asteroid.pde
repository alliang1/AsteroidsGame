class Asteroid extends Floater{
  
  private double rotSpeed;
  
  public Asteroid(){
    rotSpeed = (int)(Math.random()*5)-2;
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myPointDirection = Math.random()*360;
    corners = 12;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = 0;
  yCorners[0] =  16;
  xCorners[1] =  7;
  yCorners[1] =  17;
  xCorners[2] =  10;
  yCorners[2] =  10;
  xCorners[3] =  15;
  yCorners[3] =  6;
  xCorners[4] =  16;
  yCorners[4] =  -3;
  xCorners[5] =  11;
  yCorners[5] =  -14;
  xCorners[6] = -2;
  yCorners[6] =  -18;
  xCorners[7] =  -7;
  yCorners[7] =  -6;
  xCorners[8] =  -17;
  yCorners[8] =  -8;
  xCorners[9] = -15;
  yCorners[9] =  0;
  xCorners[10] =  -13;
  yCorners[10] =  7;
  xCorners[11] =  -9;
  yCorners[11] =  12;
  myColor = 100;
  myXspeed = (int)(Math.random()*3)-1;
  myYspeed = (int)(Math.random()*3)-1;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
    public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}  
    
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;} 
    
    
  
}//end of asteroid
