color FG = #ffffff; //<>//
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
  background(0, 10);
  //background(PALLATE[int(randCol)]);
  stroke(PALLATE[int(randCol)]);
  //noLoop();
  //colorMode(HSB, 125);
};

void mousePressed() {
}

float noiseMax = 5;
float phase = 0;
float Zoff = 0;
void init() {
  beginShape();
  for (float a = 0; a < TWO_PI; a += 0.01) {
    float Xoff = map(cos(a+phase), -1, 1, 1, noiseMax);
    float Yoff = map(sin(a+phase), -1, 1, 1, noiseMax);
    //float Xoff = map(cos(a),-1,  1, 10, noiseMax);
    //float Yoff = map(sin(a),-1,  1, 10, noiseMax);
    float r1 = map(noise(Xoff, Yoff, Zoff), 0, 1, 190, 205);
    float vX = r1*cos(a);
    float vY = r1*sin(a);
    pushMatrix();
    noFill();
    stroke(PALLATE[int(randCol)]);
    vertex(vX, vY);
    popMatrix();


    float posX = radius * cos(a);
    float posY = radius * sin(a);

    float r = random(0, 2);
    float randCol = random(0, PALLATE.length);

    pushMatrix();

    //noStroke();
    //vertex(posX, posY);
    //stroke(int(20*abs(sin(frameCount/200.))),100,int(200*abs(sin(frameCount/20.))),8);
    //fill(int(20*abs(sin(frameCount/200.))),100,int(200*abs(sin(frameCount/20.))),8);

    //stroke(PALLATE[int(randCol)]);
    //fill(PALLATE[int(randCol)]);

    //vertex(posX, posY);
    //ellipse(posX, posY, r, r);
    popMatrix();
  }
  endShape();
  //phase += 0.01;  
  Zoff += 0.01;



  float randCol = random(0, PALLATE.length);
  noFill();
  stroke(PALLATE[int(randCol)]);

  ellipse(0, 0, 340, 340);

  beginShape(POINTS);
  for (float a = 0; a < TWO_PI; a += 0.1) {
    float posX = radius2 * cos(a);
    float posY = radius2 * sin(a);
    vertex(posX, posY);
  }
  endShape();

  //Customefunction Initionl
  pushMatrix();
  noFill();
  squareLine(0, 0, 170);
  rotate(PI/4.0);
  squareLine(0, 0, 170);
  popMatrix();
}
PVector v1;
void update() {
}
void show() {
}
void draw() {
  //noFill();
  //background(BG,5);
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
