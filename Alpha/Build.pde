public class Build{
  private ArrayList<Vector> vectors = new ArrayList<Vector>();
  public Build(){
    buildWalls();
    buildFloors();
  }
  public void buildWalls(){
    wallTileX(0.0, 0.0, 0.0);
    wallTileZ(-50, 0.0, 10);
  }
  public void buildFloors(){
    floorTile(0.0, 0.0, 0.0);
  }
  public void wallTileX(float x, float y, float z){
    vectors.add(new Vector(x, y, z));
    vectors.add(new Vector(x, y+100, z));
    vectors.add(new Vector(x+100, y, z));
    vectors.add(new Vector(x+100, y+100, z));
  }
  public void wallTileZ(float x, float y, float z){
    vectors.add(new Vector(x, y, z));
    vectors.add(new Vector(x, y+100, z));
    vectors.add(new Vector(x, y, z+100));
    vectors.add(new Vector(x, y+100, z+100));
  }
  public void floorTile(float x, float y, float z){
    vectors.add(new Vector(x, y, z));
    vectors.add(new Vector(x, y, z+200));
    vectors.add(new Vector(x+200, y, z));
    vectors.add(new Vector(x+200, y, z+200));
  }
  public ArrayList<Vector> getVectors(){
    return vectors;
  }
}
