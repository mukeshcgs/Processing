//Random Color select
color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};
//color[] PALLATE = {#26547c, #ef476f, #ffd166, #23af82, #fcfcfc};
//color[] PALLATE = {#a0006b, #ffb533, #f95c41, #9ec630, #ff959b};
float randCol = random(0, PALLATE.length);

//SIN WAVE BETWEEN TWO POINTS
PVector p1 = new PVector(10,10);
PVector p2 = new PVector(100,100);

float gFreq = 1; // frequency
float gAmp = 13; // amplitude in pixels


void setup(){
  size (400, 400);
  stroke(#ffffff);
  noLoop();
    smooth();

  //background(PALLATE[int(randCol)]);
};

void draw(){
  //noFill();
  smooth();
  background(PALLATE[int(randCol)]);
  
  for(int i = 0; i < 5; i++){
    float randX = random(100, height-100);
    float randY = random(100, height-100);
    //line(0, randX,  width,randY);
    PVector lineX = new PVector(0, randX);
    PVector lineY = new PVector(width, randY);

    sineTo(lineX,lineY,gFreq,random(1,5));


    //SIMPLE SINE WAVE
    //float a = 0.0;
    //float inc = HALF_PI/random(100, 300.0);
    //float prev_x = 0, prev_y = width/2, x, y;
    //  for(int j=0; j<width; j=j+1) {
    //    x = j;
    //    y = width/2 + sin(a) * 40.0;
    //    line(prev_x, prev_y, x, y);
    //    prev_x = x;
    //    prev_y = y;
    //    a = a + inc;
    //  }
  }
  
  //DO NOT DELETE THIS
  //sineTo(p1,p2,gFreq,gAmp);
  //fill(255,255,0);
  //ellipse(p1.x,p1.y,10,10);
  //ellipse(p2.x,p2.y,10,10);
  
    save("screen-####.jpg");
}


void sineTo(PVector p1, PVector p2, float freq, float amp)
{
  float d = PVector.dist(p1,p2);
  float a = atan2(p2.y-p1.y,p2.x-p1.x);
  noFill();
  pushMatrix();
    translate(p1.x,p1.y);
    rotate(a);
    beginShape();
      for (float i = 0; i <= d; i += 1) {
        vertex(i,sin(i*TWO_PI*freq/d)*amp);
      }
    endShape();
  popMatrix();
}
