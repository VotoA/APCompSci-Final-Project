# DOOM - Project to independantly imitate a pre-alpha version of the original DOOM game in Java

* As part of the imitation, the project will implement several unique 
functions. The most complex of them will be a traversable three-dimensional
environment. This function will have to include both the ability to create a 3D
render of an environment, and the ability to move the window within it. This will of 
course need some type of user interface to manipulate the frame. Some less 
complicated functions of the program include: a basic animation system, and an 
independently functioning ai system.

### Difficulties

* The most difficult part of this program by far was the development of a 3D traversable 
enviroment which can be displayed on a 2D screen based on the position of the frame in
relation to the enviroment.

### Code Section

'''Java
  public void canvas(){
    ArrayList<Point> points = points();
    fill(66, 55, 55);
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
  '''
  
  * This is the code which takes 3D points, or vectors, and diplays them to the 
  user in a consistant 2D image based on the user's, or window's, vector and direction

## Built With

* [Processing](https://processing.org/)

## Author

** Anthony Voto **

## Acknowledgments

* Unknown Stack Overflow user for mouse tracking
* id Software for creating DOOM, which served as a goal to shoot for
