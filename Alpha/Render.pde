public class Render{
  private ArrayList<Vector> vectors = new ArrayList<Vector>();
  public Render(){
    
  }
  public void canvas(){
    ArrayList<Point> points = points(b.getVectors());
    int counter = 0;
    for(int p=3; p < points.size(); p+=4){
      if(counter == 0){
        counter++;
        fill(133, 133, 80);
      } else if(counter == 1){
        counter++;
        fill(133, 80, 133);
      } else {
        counter = 0;
        fill(80, 133, 133);
      }
      quad((points.get((p-3))).getX(), ((points.get((p-3))).getY()), (points.get((p-2))).getX(), ((points.get((p-2))).getY()), (points.get((p-1))).getX(), ((points.get((p-1))).getY()), (points.get((p))).getX(), ((points.get((p))).getY()) );
    }
  }
  public ArrayList<Point> points(ArrayList vectors){
    ArrayList<Point> points = new ArrayList<Point>();
    this.vectors = vectors;
    for(Vector v : this.vectors){
      float x = v.getX();
      float y = v.getY();
      float z = v.getZ();
      float camX = c.getXPos();
      float camY = c.getYPos();
      float camZ = c.getZPos();
      float camVerticalAngle = c.getVerticalAngle();
      float camHorizontalAngle = c.getVerticalAngle();
      x -= camX;
      z -= camZ;
      y -= camY;
      float vHAngle = degrees(atan(z/x));
      float vVAngle = degrees(atan(y/(sqrt(x*x+z*z))));
      if(z < 0){
        vHAngle += 180;
      }
      vHAngle = camHorizontalAngle - vHAngle;
      vVAngle = camVerticalAngle - vVAngle;
      float xCanvas = 800 - vHAngle*17.7777777778;
      float yCanvas = 450 - vVAngle*15.25423725;
      points.add(new Point(xCanvas, yCanvas));
    }
    return points;
  }
}
