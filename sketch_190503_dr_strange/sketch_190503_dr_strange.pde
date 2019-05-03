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
int radius = 190;
int radius2 = 100;
void setup() {
  size (500, 500);
  background(BG);
  //background(PALLATE[int(randCol)]);
  stroke(PALLATE[int(randCol)]);
  noLoop();
  colorMode(HSB, 125);
};
void mousePressed() {
}
void init() {
}

// Square Line
void squareLine(float posX, float posY, float radius) {
  float rotAngle = TWO_PI / 4
    beginShape();
  for (float i = 0; i < 6; i++) {
    int thisVertex = pointOnCircle(posX, posY, radius, i * rotAngle);
    vertex(thisVertex.x, thisVertex.y);
  }
  endShape(CLOSE);
}

//Helper Point on Circle
void pointOnCircle(float posX, float posY, float radius, float angle) {
  float x = posX + radius * cos(angle);
  float y = posY + radius * sin(angle);
  return createVector(x, y);
}

void draw() {
  //Customefunction Initionl
  //squareLine(0, 0, floor(random(1, 200)));
  squareLine(0, 0, floor(random(1, 200)));


  //noFill();
  background(BG);
  translate(width / 2, height / 2);
  //ellipse(0, 0, 380, 380);
  beginShape(POINTS);
  for (float a = 0; a < TWO_PI; a += 0.01) {
    float posX = radius * cos(a);
    float posY = radius * sin(a);

    float r = random(0, 2);
    float randCol = random(0, PALLATE.length);

    pushMatrix();
    noStroke();
    //vertex(posX, posY);
    //stroke(int(20*abs(sin(frameCount/200.))),100,int(200*abs(sin(frameCount/20.))),8);
    //fill(int(20*abs(sin(frameCount/200.))),100,int(200*abs(sin(frameCount/20.))),8);

    //stroke(PALLATE[int(randCol)]);
    fill(PALLATE[int(randCol)], 90);
    //vertex(posX, posY);
    ellipse(posX, posY, r, r);
    popMatrix();
  }
  endShape();
  float randCol = random(0, PALLATE.length);
  noFill();
  stroke(PALLATE[int(randCol)]);

  ellipse(0, 0, 340, 340);
  square(-120, -120, 240);
  rotate(PI/4.0);
  square(-120, -120, 240);

  beginShape(POINTS);
  for (float a = 0; a < TWO_PI; a += 0.1) {
    float posX = radius2 * cos(a);
    float posY = radius2 * sin(a);
    vertex(posX, posY);
  }
  endShape();
}
