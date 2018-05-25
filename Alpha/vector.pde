public class vector{
private float x;
private float y;
private float z;
  public vector(float x, float y, float z){
    this.x = x;
    this.y = y;
    this.z = z;
  }
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
  public float getZ(){
    return z;
  }
  public void incrementX(float num){
    x += num;
  }
  public void incrementY(float num){
    y += num;
  }
  public void incrementZ(float num){
    z += num;
  }
}
