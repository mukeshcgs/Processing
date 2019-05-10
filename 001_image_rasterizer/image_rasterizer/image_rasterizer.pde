color FG = #111111;
color BG = #f1f1f1;
PImage img; 
color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};

void setup() {
  size(500, 500); 
  background(BG);
  img = loadImage("lio.jpeg");
  img.resize(500, 500);
  noLoop();
}

void draw() {
  background(BG);


  fill(FG);
  noStroke();
  float ratio = float(height)/float(width);
  float tilesX = map(width, 0, width, 10, 100);
  float tilesY = ratio * tilesX;
  float tileSize = width / tilesX;
  for (int y = 0; y < img.height; y += tileSize) {
    for (int x = 0; x < img.width; x += tileSize) {
      float randCol = random(0, PALLATE.length);
      fill(PALLATE[int(randCol)]);
      color c = img.get(x, y);
      float b = map(brightness(c), 0, 255, 1, 0);
      pushMatrix();
      translate(x, y);
      ellipse(0, 0, b * tileSize, b * tileSize);
      popMatrix();
    }
  }
}
