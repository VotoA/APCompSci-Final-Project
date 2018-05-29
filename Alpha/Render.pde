public class Render{
  private ArrayList<Vector> vectors = new ArrayList<Vector>();
  public Render(){
    
  }
  public void canvas(){
    ArrayList<Point> points = points();
    //clear screen here
    //int counter = 0;
    fill(255, 0, 0);
    for(int p=3; p < points.size(); p+=4){
      //if(counter == 0){
      //  counter++;
      //  fill(200, 0, 0);
      //} else if(counter == 1){
      //  counter++;
      //  fill(0, 200, 0);
      //} else {
      //  counter = 0;
      //  fill(0, 0, 200);
      //}
      quad((points.get((p-3))).getX(), ((points.get((p-3))).getY()), (points.get((p-2))).getX(), ((points.get((p-2))).getY()), (points.get((p-1))).getX(), ((points.get((p-1))).getY()), (points.get((p))).getX(), ((points.get((p))).getY()) );
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
      vHAngle = vHAngle - camHorizontalAngle;
      vVAngle = vVAngle - camVerticalAngle;
      float xCanvas = width/2 - (vHAngle*(width/90));
      float yCanvas = height/2 - (vVAngle*(height/60));
      points.add(new Point(xCanvas, yCanvas));
    }
    return points;
  }
}
