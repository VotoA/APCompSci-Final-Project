public class Test{
  public Test(){
    
  }
  public float t(){
    float x = 10;
    float y = 4;
    float z = 10;
    float vHAngle = (atan(z/x));
    float vVAngle = atan(y/(sqrt(x*x+z*z)));
    vHAngle = (vHAngle/(PI*2))*360;
    vVAngle = (vHAngle/(PI*2))*360;
    if(x < 0){
      vHAngle += 180;
    }
    if(vHAngle > 180){
      vHAngle -= 360;
    }
    vHAngle = (vHAngle + 360) % 360;
    float xCanvas = width/2 - (vHAngle*(width/90));
    float yCanvas = height/2 - (vVAngle*(height/59));
    return vHAngle;
  }
}