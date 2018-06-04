public class Render{
  private ArrayList<Vector> vectors = new ArrayList<Vector>();
  public Render(){
    
  }
  public void canvas(){
    ArrayList<Point> points = points();
    fill(128, 0, 128);
    for(int p=3; p < points.size(); p+=4){
      quad((points.get((p-2))).getX(), ((points.get((p-2))).getY()), (points.get((p-3))).getX(), ((points.get((p-3))).getY()), (points.get((p-1))).getX(), ((points.get((p-1))).getY()), (points.get((p))).getX(), ((points.get((p))).getY()) );
    }
  }
  public ArrayList<Point> points(){
    ArrayList<Point> points = new ArrayList<Point>();
    this.vectors = b.getVectors();
    for(Vector v : this.vectors){
      float x = v.getX();
      float y = v.getY();
      float z = v.getZ();
      float camX = c.getXPos();
      float camY = c.getYPos();
      float camZ = c.getZPos();
      float camHorizontalAngle = c.getHorizontalAngle();
      x -= camX;
      z -= camZ;
      y -= camY;
      float vHAngle = degrees(atan((z/x)));
      float vVAngle = degrees(atan((y/(sqrt(x*x+z*z)))));
      if(x < 0){
        vHAngle += 180;
      }
      vHAngle = vHAngle - camHorizontalAngle;
      vHAngle = (vHAngle + 360) % 360;
      if(vHAngle > 180){
      vHAngle -= 360;
      }
      float xCanvas = width/2 - (vHAngle*(width/60));
      float yCanvas = height/2 - (vVAngle*(height/33));
      points.add(new Point(xCanvas, yCanvas));
    }
    return points;
  }
}
