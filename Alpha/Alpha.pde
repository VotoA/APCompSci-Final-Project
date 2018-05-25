void setup(){
  size(1600, 900, P3D);
  noCursor();
  frameRate(60);
  mouseX = 800;
  mouseY = 450;
  vector p1 = new vector(0, 2, 0);
  vector p2 = new vector(0, 2, 1);
  float camVertAngle = 0;
  float camHorAngle = 0;
  new cam(p1, p2);
}
void draw(){
  while(keyPressed){
  move();
  }
}
void mouseMoved(){
  look();
}
void mouseDragged(){
  look();
}
