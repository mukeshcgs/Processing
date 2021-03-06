color FG = #111111;
color BG = #f1f1f1;
PImage img; 
//Random Color select

//color[] PALLATE = {#333232, #4c5454, #f3a712, #db2b39, #447604};
//color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};
//color[] PALLATE = {#26547c, #ef476f, #ffd166, #23af82, #fcfcfc};
//ORANGE SHADES
//color[] PALLATE = {#900c3f, #c70039, #ffd166, #ff5733, #ffc300};
//color[] PALLATE = {#1c1c1c, #61acaa, #36818a, #e4f0f0, #fafafa};
color[] PALLATE = {#be2210, #e8ceb4, #f9f8f8, #e8ddb5, #e9f0ef};


void setup() {
  size(800, 800); 
  background(BG);
  img = loadImage("photo-02.jpg");
  img.resize(800, 800);
  noLoop();
  smooth();
}

void draw() {
  background(#be2210);

  fill(FG);
  //noStroke();
  float ratio = float(height)/float(width);
  float tilesX = map(width, 0, width, 20, 100);
  float tilesY = ratio * tilesX;
  float tileSize = width / tilesX;
  for (int y = 0; y < img.height; y += tileSize) {
    for (int x = 0; x < img.width; x += tileSize) {
      float randCol = random(0, PALLATE.length);
      fill(PALLATE[int(randCol)]);
      color c = img.get(x, y);
      float b = map(c, 0, 255, 1, 0);
      pushMatrix();
      translate(x, y);
      rectMode(CENTER);
      //rect(0, 0, b * random(tileSize,tileSize*2), b * random(tileSize, tileSize*2));
      //rect(0, 0, b * tileSize, b * tileSize);
      ellipse(0, 0, b * tileSize, b * tileSize);
      popMatrix();
    }
  }
    save("screen-####.jpg");
}
