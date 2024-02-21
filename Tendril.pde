class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    stroke(15 * myNumSegments, 255, 255);
    for (int i = 0; i < myNumSegments; i++){
      myAngle += 0.4*(Math.random() - 0.5);
      line(myX, myY, (float)(myX + SEG_LENGTH*Math.cos(myAngle)), (float)(myY + SEG_LENGTH*Math.sin(myAngle)));
      myX = (int)(myX + SEG_LENGTH*Math.cos(myAngle));
      myY = (int)(myY + SEG_LENGTH*Math.sin(myAngle));
    }
    if (myNumSegments >= 3){
      Cluster j = new Cluster((int)(myNumSegments/2.75), myX, myY);
    }
  }
}
