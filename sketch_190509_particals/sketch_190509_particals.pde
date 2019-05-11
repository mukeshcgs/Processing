Particals p;
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

void setup() {
  size (500, 500);
  background(0, 10);
  //background(PALLATE[int(randCol)]);
  //noLoop();
  noStroke();
  p = new Particals(10,50);
};
void draw() {
  background(0, 10);

  p.display();
  p.update();
}
