float tileWidth, tileHeight = 100;
ArrayList<GridPoint> points = new ArrayList<GridPoint>();

void setup() {
  size (400, 400);
  //size (2696, 3305); 
  //iPad Cases & Skins
  //size (4600, 3000); 
  //Laptop Skins
  stroke(#ffffff);
  noLoop();
  background(0);
  //background(PALLATE[int(randCol)]);
  // Initialize
  for (float x = 0; x <= 400; x += tileWidth) {
    for (float y = 0; y <= 400; y += tileHeight) {
      points.add(new GridPoint(x, y, tileWidth, tileHeight));
    }
  }
};



void randomlySubdivideGridPoints () {
  ArrayList<GridPoint> newPoints = new ArrayList<GridPoint>();
  for (GridPoint p : points) {
    if (random(1) > 0.5) {
      p.subdivide(newPoints);
    } else {
      newPoints.add(p);
    }
  }
  points = newPoints;
}

void draw() {
  //noFill();
}
