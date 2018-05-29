import java.awt.AWTException;
import java.awt.Robot;
Robot robot;
Vector p1 = new Vector(0, 2, 0);
float camVerticalAngle = 0;
float camHorizontalAngle = 0;
Cam c = new Cam(p1, camVerticalAngle, camHorizontalAngle);
Render r = new Render();
Build b = new Build();
void setup(){
  size(1600, 900);
  //noCursor();
  frameRate(60);
  try {
    robot = new Robot();
  }
  catch (AWTException e) {
    e.printStackTrace();
  }
  robot.mouseMove(800, 450);
}
void draw(){
  c.move();
  c.look();
  r.points(b.getVectors());
  println(frameCount);
}
