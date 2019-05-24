//size(400, 400);
//background(255);
//smooth();

//float xstart = random(10);
//float xnoise = xstart;
//float ynoise = random(10);
//float y, x;

//for ( y = 0; y <= height; y += 1) {
//  ynoise += 0.01;
//  xnoise = xstart;

//  for ( x = 0; x <= width; x += 1) {
//    xnoise += 0.01;
//    int alph = int(noise(xnoise, ynoise) * 255);
//    stroke(0, alph);
//    line(x, y, x+1, y+1);
//  }
//}

float xstart, ystart, xnoise, ynoise;
float xstartNoise, ystartNoise;

void setup() {
  size(300, 300);
  smooth();
  background(0);
  frameRate(2);

  xstartNoise = random(20);
  ystartNoise = random(20);

  xstart = random(10);
  ystart = random(10);
}
void draw() {
  background(0);

  xstartNoise += 0.01;
  ystartNoise += 0.01;
  
  xstart += ( noise(xstartNoise) * 0.5) - 0.25;
  ystart += ( noise(ystartNoise) * 0.5) - 0.25;

  xnoise = xstart;
  ynoise = ystart;

  for (int y = 0; y <= height; y +=5) {
    ynoise += 0.1;
    xnoise = xstart;
    for (int x = 0; x <= width; x +=5) {
      xnoise += 0.1;
      drawPoint(x, y, noise(xnoise, ynoise));
    }
  }
}

//void drawPoint(float x, float y, float noiseFactor) {
//  float len = 10 * noiseFactor;
//  rect(x, y, len, len);
//}

//void drawPoint(float x, float y, float noiseFactor) {
//  pushMatrix();
//  translate(x, y);
//  rotate(noiseFactor * radians(360));
//  stroke(0, 150);
//  line(0, 0, 20, 0);
//  popMatrix();
//}

void drawPoint(float x, float y, float noiseFactor) {
  pushMatrix();
  translate(x, y);
  rotate(noiseFactor * radians(540));
  float edgeSize = noiseFactor * 10;
  float grey = 150 + (noiseFactor * 120);
  float alph = 150 + (noiseFactor * 120);
  noStroke();
  fill(grey, alph);
  ellipse(0, 0, edgeSize, edgeSize);
  popMatrix();
}
