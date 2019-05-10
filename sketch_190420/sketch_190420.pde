color FG = #111111;
color BG = #f1f1f1;

//Random Color select
color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};
float randCol = random(0, PALLATE.length);


int total = 1;
Line lines;

void setup() {
  size(400, 400);
  //noStroke();
  //noLoop();
  //lines = new Line[total];
  //for (int i = 0; i < total; i ++ ) { 
  lines = new Line(0, 0, 0, 0, 100, 5);
  //}
}
void draw() {
  smooth();
  background(255);
  lines.update();
  lines.display();
}

//float linespeed = 1;
//float endx = 0;
//float angle = PI;

//void draw() {
//  background(255);
//  translate(100, 100);
//  rotate(angle);
//  if (endx < 50) {
//    endx += linespeed;
//  } else if (angle <= HALF_PI*4) {
//    angle += 0.08;
//  }
//  line(0, 0, endx, 0);
//} 
