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
  public void move(){
    if(key == 'w'){
      robot.mouseMove(width/2, (height/2)+1);
    } else if(key == 'a'){
      
    } else if(key == 'd'){
      
    } else if(key == 's'){
      
    }
  }
  public void look(){
    horizontalAngle += ((width/2 - mouseX)/5);
    verticalAngle += ((height/2 - mouseY)/5);
    if(verticalAngle > 90){
      verticalAngle = 90;
    }
    if(verticalAngle < -90){
      verticalAngle = -90;
    }
    if(horizontalAngle >= 360){
      horizontalAngle -= 360;
    }
    if(horizontalAngle < 0){
      horizontalAngle += 360;
    }
    robot.mouseMove(width/2, height/2);
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
