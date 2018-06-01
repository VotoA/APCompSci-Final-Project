public class Build{
  private ArrayList<Vector> vectors = new ArrayList<Vector>();
  public Build(){
    buildFloors();
    buildWalls();
  }
  public void buildWalls(){
    wallTileX(5, 0, 10);
    wallTileZ(15, 0, 0);
  }
  public void buildFloors(){
    floorTile(-15, 0, -15);
    floorTile(-15, 10, -15);
    floorTile(-15, 0, -5);
    floorTile(-15, 10, -5);
    floorTile(-15, 0, 5);
    floorTile(-15, 10, 5);
    floorTile(-5, 0, -15);
    floorTile(-5, 10, -15);
    floorTile(-5, 0, -5);
    floorTile(-5, 10, -5);
    floorTile(-5, 0, 5);
    floorTile(-5, 10, 5);
    floorTile(5, 0, -15);
    floorTile(5, 10, -15);
    floorTile(5, 0, -5);
    floorTile(5, 10, -5);
    floorTile(5, 0, 5);
    floorTile(5, 10, 5);
    floorTile(5, 0, -25);
    floorTile(5, 10, -25);
    floorTile(-5, 0, -25);
    floorTile(-5, 10, -25);
    floorTile(-15, 0, -25);
    floorTile(-15, 10, -25);
    floorTile(5, 0, 15);
    floorTile(5, 10, 15);
    floorTile(-5, 0, 15);
    floorTile(-5, 10, 15);
    floorTile(-15, 0, 15);
    floorTile(-15, 10, 15);
    floorTile(-25, 0, -25);
    floorTile(-25, 10, -25);
    floorTile(15, 0, 15);
    floorTile(15, 10, 15);
    floorTile(15, 0, -25);
    floorTile(15, 10, -25);
    floorTile(-25, 0, 15);
    floorTile(-25, 10, 15);
    floorTile(-25, 0, -15);
    floorTile(-25, 10, -15);
    floorTile(-25, 0, -5);
    floorTile(-25, 10, -5);
    floorTile(-25, 0, 5);
    floorTile(-25, 10, 5);
    floorTile(15, 10, -5);
    floorTile(15, 0, 5);
    floorTile(15, 10, 5);
    floorTile(15, 0, -5);
    floorTile(15, 0, -15);
    floorTile(15, 10, -15);
  }
  public void wallTileX(float x, float y, float z){
    vectors.add(new Vector(x, y, z));
    vectors.add(new Vector(x, y+10, z));
    vectors.add(new Vector(x+10, y, z));
    vectors.add(new Vector(x+10, y+10, z));
  }
  public void wallTileZ(float x, float y, float z){
    vectors.add(new Vector(x, y, z));
    vectors.add(new Vector(x, y+10, z));
    vectors.add(new Vector(x, y, z+10));
    vectors.add(new Vector(x, y+10, z+10));
  }
  public void floorTile(float x, float y, float z){
    vectors.add(new Vector(x, y, z));
    vectors.add(new Vector(x, y, z+10));
    vectors.add(new Vector(x+10, y, z));
    vectors.add(new Vector(x+10, y, z+10));
  }
  public ArrayList<Vector> getVectors(){
    return vectors;
  }
}
