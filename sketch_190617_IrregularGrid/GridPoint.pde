class GridPoint {
  GridPoint(float x, float y, float tileWidth, float tileHeight) {
    ellipse(x, y, 5, 5);
    //rectMode(CENTER);  // Set rectMode to CENTER
    //rect(x, y, tileWidth, tileHeight);  // Draw gray rect using CENTER mode
  }
  void subdivide( ArrayList<GridPoint> newPoints) {
    println(newPoints);
  }
}
