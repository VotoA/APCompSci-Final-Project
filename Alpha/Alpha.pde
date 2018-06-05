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
  background(85, 10, 10);
  r.canvas();
  println(c.getHorizontalAngle());
  fill(28, 28, 28);
  quad(width/2-40, height, width/2+40, height, width/2+20, (height/40)*30, width/2-20, (height/40)*30);
  quad(width/2-40, height, width/2-55, height, width/2-30, (height/40)*30.5, width/2-20, (height/40)*30);
  quad(width/2+40, height, width/2+55, height, width/2+30, (height/40)*30.5, width/2+20, (height/40)*30);
  fill(104, 104, 104);
  quad(width/2-3, (height/40)*30.25, width/2+3, (height/40)*30.25, width/2+3, (height/40)*29.7, width/2-3, (height/40)*29.7);
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
void mousePressed(){
  r.shoot(second());
}