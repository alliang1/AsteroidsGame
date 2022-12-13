
    class Star //note that this class does NOT extend Floater
  {
    private int myX, myY,mycol;
    public Star() {
      myX = (int)(Math.random()*800);
      myY = (int)(Math.random()*800);
      mycol = (int)(Math.random()*255);
    }
    public void show() {
      fill(mycol);
      noStroke();
      ellipse(myX, myY, 2, 2);
    }
  }
