public class Point{
private float x;
private float y;
public Point(){
  }
  public Point(float x, float y){
    this.x = x;
    this.y = y;
  }
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
  public void incrementX(float num){
    x += num;
  }
  public void incrementY(float num){
    y += num;
  }
}
