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
      
    } else if(key == 'a'){
      
    } else if(key == 'd'){
      
    } else if(key == 's'){
      
    }
  }
  public void look(){
    horizontalAngle += ((800 - mouseY)/17.7777777778);
    verticalAngle += ((450 - mouseX)/15.25423725);
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
    robot.mouseMove(800, 450);
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
