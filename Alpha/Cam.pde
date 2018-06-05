public class Cam{
  private Vector p1;
  private float verticalAngle;
  private float horizontalAngle;
  public Cam(){ 
    
  }
  public Cam(Vector p1, float verticalAngle, float horizontalAngle){
   this.p1 = p1;
   this.verticalAngle = verticalAngle;
   this.horizontalAngle = horizontalAngle;
  }
  public void moveW(){
    p1.incrementX(cos(radians(horizontalAngle))*10);
    p1.incrementZ(sin(radians(horizontalAngle))*10);
    if(p1.getX() > 1300){
      p1.incrementX(p1.getX());
    }
    if(p1.getX() < 100){
      p1.incrementX(p1.getX());
    }
    if(p1.getZ() > 1200){
      p1.incrementZ();
    }
    if(p1.getZ() < -100){
      p1.incrementZ();
    }
  }
  public void moveA(){
    p1.incrementX(cos(radians(horizontalAngle+90))*10);
    p1.incrementZ(sin(radians(horizontalAngle+90))*10);
  }
  public void moveS(){
    p1.incrementX(-cos(radians(horizontalAngle))*10);
    p1.incrementZ(-sin(radians(horizontalAngle))*10);
  }
  public void moveD(){
    p1.incrementX(cos(radians(horizontalAngle-90))*10);
    p1.incrementZ(sin(radians(horizontalAngle-90))*10);
  }
  public void look(){
    if((width/2 - mouseX)/(width/90) >= .001 || (width/2 - mouseX)/(width/90) <= -0.001){
    horizontalAngle += ((width/2 - mouseX)/(width/90));
    if(horizontalAngle >= 360){
    horizontalAngle = horizontalAngle % 360;
    }
    if(horizontalAngle < 0){
    horizontalAngle += 360;
    }
    robot.mouseMove(width/2, height/2);
    }
  }
  public float getHorizontalAngle(){
    return horizontalAngle;
  }
  public float getVerticalAngle(){
    return verticalAngle;
  }
  public float getXPos(){
    return p1.getX();
  }
  public float getZPos(){
    return p1.getZ();
  }
  public float getYPos(){
    return p1.getY();
  }
}