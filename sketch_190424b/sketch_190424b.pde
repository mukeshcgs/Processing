color FG = #111111;
color BG = #000000;
float tileSize = 30;
float posX = 0;

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

void setup(){
  size (600, 600);
  stroke(#ffffff);
  //noLoop();
  smooth();
  //background(PALLATE[int(randCol)]);
};

void draw(){
  ////noFill();
  background(BG);
  ////for(int y =0; y<height; y += tileSize){
  ////  for(int x =0; x<=width+1; x += tileSize){
  ////    ellipse(x+tileSize/2, y+tileSize/2, tileSize, tileSize);
  ////  }
  ////}  
  //float a = 0.0;
  //float inc = HALF_PI/25.0;

  //for (int i = 0; i < width; i=i+4) {
  //  stroke(PALLATE[int(randCol)]);
  //  line(i, 100, i, 100+sin(a)*10.0);
  //  a = a + inc;
  //}
  
  //for(int y =0; y<height; y += tileSize){
  //    println(y);
  //    for(int x =0; x<width; x += tileSize){
  //      float randCol = random(0, PALLATE.length);
  //      fill(PALLATE[int(randCol)]);
  //      //stroke(PALLATE[int(randCol)]);
  //      //strokeWeight(1);
  //      noStroke();
  //      float randSize = random(0, 4);
  //      ellipse(x, y, randSize, randSize);
              
  //      //rect(x, y, tileSize, tileSize);
  //      if (random(0, 1) > 0.5) {
  //        line(x, y, x+randSize, y+randSize);
  //      } else {
  //        //line(x+tileSize/2, y, x, y+tileSize/2);
  //      }
  //  }
  //}
  //save("screen-####.jpg");
  sineTo(p1,p2,gFreq,gAmp);
  fill(255,255,0);
  ellipse(p1.x,p1.y,10,10);
  ellipse(p2.x,p2.y,10,10);

  if (mousePressed) {
      if (dist(p1.x,p1.y,pmouseX,pmouseY) < 10) {
        p1.x += mouseX - pmouseX;
        p1.y += mouseY - pmouseY;
      }  else if (dist(p2.x,p2.y,pmouseX,pmouseY) < 10) {
        p2.x += mouseX - pmouseX;
        p2.y += mouseY - pmouseY;
      }
  }
}
void keyPressed() {
  if (key >= '1' && key <= '9') {
    gFreq = key - '0';
  }
}
