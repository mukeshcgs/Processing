color FG = #111111;
color BG = #f1f1f1;
PImage img; 
//Random Color select
//color[] PALLATE = {#1be7ff, #f8333c, #8f2d56, #6eeb83, #e4ff1a};
//color[] PALLATE = {#333232, #4c5454, #f3a712, #db2b39, #447604};
//color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};
//color[] PALLATE = {#26547c, #ef476f, #ffd166, #23af82, #fcfcfc};
//ORANGE SHADES
color[] PALLATE = {#900c3f, #c70039, #ffd166, #ff5733, #ffc300};
//color[] PALLATE = {#a0006b, #ffb533, #f95c41, #9ec630, #ff959b};

void setup() {
  size(800, 800); 
  background(BG);
  img = loadImage("keanu.jpg");
  img.resize(800, 800);
  noLoop();
}

void draw() {
  background(BG);

  fill(FG);
  noStroke();
  float ratio = float(height)/float(width);
  float tilesX = map(width, 0, width, 20, 100);
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
      rectMode(CENTER);
      rect(0, 0, b * random(tileSize,tileSize*2), b * random(tileSize, tileSize*2));
      popMatrix();
    }
  }
    save("screen-####.jpg");
}
