public class vector{
private double x;
private double y;
private double z;
  public vector(){
    vector origin = new vector(0.0, 0.0, 0.0);
  }
  public vector(double x, double y, double z){
    this.x = x;
    this.y = y;
    this.z = z;
    new vector(x, y, z);
  }
  public double getX(){
    return x;
  }
  public double getY(){
    return y;
  }
  public double getZ(){
    return z;
  }
  public incrementX(double num){
    x += num;
  }
  public incrementY(double num){
    y += num;
  }
  public incrementZ(double num){
    z += num;
  }
}
    