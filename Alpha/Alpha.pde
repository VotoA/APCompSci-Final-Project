import java.awt.AWTException;
import java.awt.Robot;
Robot robot;
Vector p1 = new Vector(200, 58, 0);
float camVerticalAngle = 0;
float camHorizontalAngle = 0;
Cam c = new Cam(p1, camVerticalAngle, camHorizontalAngle);
Render r = new Render();
Build b = new Build();
void setup(){
  fullScreen();
  //size(400, 300);
  noCursor();
  frameRate(60);
  noStroke();
  try {
    robot = new Robot();
  }
  catch (AWTException e) {
    e.printStackTrace();
  }
  robot.mouseMove(width/2, height/2);
}
void draw(){
  background(250, 95, 0);
  r.canvas();
  println(c.getHorizontalAngle());
}
void keyPressed(){
  if(key == 'w'){
      c.moveW();
    } else if(key == 'a'){
      c.moveA();
    } else if(key == 'd'){
      c.moveD();
    } else if(key == 's'){
      c.moveS();
    }
}
void mouseMoved(){
  c.look();
}
void mouseDragged(){
  c.look();
}
