class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getsX();
    myYspeed = theShip.getsY();
    myPointDirection = theShip.getPD();
    accelerate(10); 
  }//end of constructor
  
  public void show(){
    fill(250,220,45,150);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
    
  }
  
//  public void move(){
//    myCenterX += myXspeed;    
//    myCenterY += myYspeed;    

//    for(int i = 0; i < pew.size(); i++){
//  if(pew.get(i).getX() > width){
//    pew.remove(i);
//    }
//}
//  }

    public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}  
    
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}  

 
}//end of bullet
