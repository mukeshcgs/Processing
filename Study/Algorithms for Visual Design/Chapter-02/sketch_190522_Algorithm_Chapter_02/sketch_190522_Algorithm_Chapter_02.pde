void setup() {
  size(500, 500);
  //SIN WAVE
  for (int i=0; i<width; i++) {
    int x = i;
    int y = int(50. * sin(PI/180.* i) );
    point(x, y+50);
    //println("x = " + x + " y = " + y);
    //beginShape(LINES);
    //vertex(x, y+50);
    //endShape();
  }
  for (int i=0; i<5000; i++) {
    int x = i/10;
    int y = (int)(50. * cos(PI/180.* i) );
    point(x+50, y+50);
  }
  //Exercise
  //beginShape();
  //for (int i=0; i<20; i++) {
  //  float x = ((i+3)/4) * (((i+1)/2)%2*2-1) *10;
  //  float y = ((i+2)/4) * (((i)/2)%2*2-1) *10;
  //  vertex(x+50, y+50);
  //}
  //endShape();
}

void draw() {
}
