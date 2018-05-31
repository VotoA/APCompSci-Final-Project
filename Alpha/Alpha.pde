import java.awt.AWTException;
import java.awt.Robot;
Robot robot;
Test ts = new Test();
Vector p1 = new Vector(0, 6, 0);
float camVerticalAngle = 0;
float camHorizontalAngle = 0;
Cam c = new Cam(p1, camVerticalAngle, camHorizontalAngle);
Render r = new Render();
Build b = new Build();
void setup(){
  fullScreen();
  //size(400, 300);
  //noCursor();
  frameRate(60);
  try {
    robot = new Robot();
  }
  catch (AWTException e) {
    e.printStackTrace();
  }
  robot.mouseMove(width/2, height/2);
}
void draw(){
  background(200.0, 200.0, 200.0);
  r.canvas();
  //println(c.getHorizontalAngle());
}
void mouseMoved(){
  c.look();
}
void mouseDragged(){
  c.look();
}
void keyPressed(){
  while(keyPressed == true){
        c.move();
      }
}