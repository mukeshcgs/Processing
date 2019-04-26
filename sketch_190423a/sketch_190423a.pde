float a = 0;

//Random Color select
color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};
//color[] PALLATE = {#26547c, #ef476f, #ffd166, #23af82, #fcfcfc};
//color[] PALLATE = {#a0006b, #ffb533, #f95c41, #9ec630, #ff959b};
float randCol = random(0, PALLATE.length);

void setup(){
  size (400, 400);
  stroke(#ffffff);
  //noLoop();
  //background(PALLATE[int(randCol)]);
};

void draw(){
  //noFill();
  background(PALLATE[int(randCol)]);
  
  float a = 0.0;
  float inc = TWO_PI/25.0;
  float prev_x = 0, prev_y = width/2, x, y;
  
  for(int i=0; i<width; i=i+4) {
    x = i;
    y = width/2 + sin(a) * 80.0;
    line(prev_x, prev_y, x, y);
    prev_x = x;
    prev_y = y;
    a = a + inc;
  }
}
