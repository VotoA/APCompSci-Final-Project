public class Build{
  private ArrayList<Vector> vectors = new ArrayList<Vector>();
  public Build(){
    buildWalls();
    buildFloors();
  }
  public void buildWalls(){
    wallTileX(0, 0, 0);
    wallTileZ(0, 0, 0);
  }
  public void buildFloors(){
    floorTile(0, 0, 0);
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
    vectors.add(new Vector(x, y, z+20));
    vectors.add(new Vector(x+20, y, z));
    vectors.add(new Vector(x+20, y, z+20));
  }
  public ArrayList<Vector> getVectors(){
    return vectors;
  }
}
