public class cam{
  private vector p1;
  private vector p2;
  private float vertAngle;
  private float horAngle;
  public cam(vector p1, vector p2, float vertAngle, float horAngle);
   this.p1 = p1;
   this.p2 = p2;
   this.vertAngle = vertAngle;
   this.horAngle = horAngle;
  }
  public void move(){
    if(key == 'w'){
      
    } else if(key == 'a'){
      
    } else if(key == 'd'){
      
    } else if(key == 's'){
      
    }
    
  }
  public void look(){
    p2.incrementX(mouseX/10);
    p2.incrementY(mouseY/27.118644);
    mouseX = 0;
    mouseY = 0;
    horangle = 
  }
}
