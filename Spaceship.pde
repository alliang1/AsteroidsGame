class Spaceship extends Floater  
{
public Spaceship(){
  corners = 11;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = -16;
  yCorners[0] =  16;
  xCorners[1] =  4;
  yCorners[1] =  8;
  xCorners[2] =  12;
  yCorners[2] =  8;
  xCorners[3] = 28;
  yCorners[3] =  0;
  xCorners[4] =  12;
  yCorners[4] =  -8;
  xCorners[5] =  4;
  yCorners[5] =  -8;
  xCorners[6] = -16;
  yCorners[6] =  -16;
  xCorners[7] =  -6;
  yCorners[7] =  -3;
  xCorners[8] =  -20;
  yCorners[8] =  -8;
  xCorners[9] = -20;
  yCorners[9] =  8;
  xCorners[10] =  -12;
  yCorners[10] =  3;
 
  myCenterX = 250;
  myCenterY = 250;
 
  myColor = 255;
 
  myXspeed = 0;
  myYspeed = 0;
 
  myPointDirection = 50;
 
}

public void setXspeed(double x) {
    myXspeed = x;
    myYspeed = x;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
  }
 
 public void fire(){
   stroke(255,255,0);
   line((int)myCenterX-25,(int)myCenterY,(int)myCenterX-50,(int)myCenterY);
    line((int)myCenterX-25,(int)myCenterY +5,(int)myCenterX-50,(int)myCenterY+5);
     line((int)myCenterX-25,(int)myCenterY-5,(int)myCenterX-50,(int)myCenterY-5);
     stroke(255);
 }

}//end of spaceship
