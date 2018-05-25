Vector p1 = new Vector(0, 2, 0);
Vector p2 = new Vector(0, 2, 1);
float camVertAngle = 0;
float camHorAngle = 0;
Cam c = new Cam(p1, p2, camVertAngle, camHorAngle);
Vector v = new Vector();
Build b = new Build();
void setup(){
  size(1600, 900, P3D);
  noCursor();
  frameRate(60);
  mouseX = 800;
  mouseY = 450;
}
void draw(){
  while(keyPressed){
  c.move();
  }
  c.look();
}