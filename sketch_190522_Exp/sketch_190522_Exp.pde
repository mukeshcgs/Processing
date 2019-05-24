color FG = #ffffff;
color BG = #000000;

//Random Color select
//color[] PALLATE = {#1be7ff, #f8333c, #8f2d56, #6eeb83, #e4ff1a};
//color[] PALLATE = {#333232, #4c5454, #f3a712, #db2b39, #447604};
//color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};
//color[] PALLATE = {#26547c, #ef476f, #ffd166, #23af82, #fcfcfc};
//ORANGE SHADES
color[] PALLATE = {#900c3f, #c70039, #ffd166, #ff5733, #ffc300};
//color[] PALLATE = {#a0006b, #ffb533, #f95c41, #9ec630, #ff959b};
float randCol = random(0, PALLATE.length);

//Global Varibale
int radius = 200;
void setup() {
  size (500, 500);
  background(0, 10);
  //background(PALLATE[int(randCol)]);
  stroke(PALLATE[int(randCol)]);
  //noLoop();
  //colorMode(HSB, 125);
};

PVector v1;
void init() {
  beginShape(POINTS);
  for (float a = 0; a < TWO_PI; a += 0.001) {
    float posX = radius * cos(a);
    float posY = radius * sin(a);
    vertex(posX, posY);
  }
  endShape();
  ellipse(radius/2, 0, radius, radius);
  for (float i = 0; i < 4; i++) {
    squareLine(0, 0, 170);
    rotate(2);
  }
}
void draw() {
  noFill();
  smooth();
  translate(width / 2, height / 2);
  //ellipse(0, 0, 380, 380);
  init();
}
// Square Line
void squareLine(float posX, float posY, float radius) {
  float rotAngle = TWO_PI / 4;
  beginShape(QUADS);
  for (float i = 0; i < 4; i++) {
    pointOnCircle(posX, posY, radius, i * rotAngle);
    vertex(v1.x, v1.y);
  }
  endShape(CLOSE);
}
//Helper Point on Circle
void pointOnCircle(float posX, float posY, float radius, float angle) {
  float x = posX + radius * cos(angle);
  float y = posY + radius * sin(angle);
  v1 = new PVector(x, y);
}
