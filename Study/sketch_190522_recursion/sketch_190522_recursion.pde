
void setup() {
  size(500, 500);
  //for (int x =0; x<width; x++)
  //  for (int y = 0; y<height; y++) {
  //    rectMode(CENTER);
  //    if (y%2==0)continue;
  //    if (x%2==0)
  //      rect(x*10, y*10, 8, 8);
  //    else
  //      rect(x*10, y*10, 4, 4);
  //  }

  //PATTERN 06
  //for (int x =0; x<width; x++)
  //  for (int y = 0; y<height; y++) {
  //    rectMode(CENTER);
  //    if (y%2==0)continue;
  //    if (x%2==0)
  //      rect(x*10, y*10, 10, 10);
  //    else
  //      rect(x*10, y*10, 4, 10);
  //  }

  //PATTERN 07

  //for (int x=0; x<width; x++)
  //  for (int y= 0; y<height; y++) {
  //    rectMode(CENTER);
  //    if (y%2==0)continue;

  //    if (x%3==0)
  //      rect(x*10, y*10, 10, 10);
  //    else
  //      rect(x*10, y*10, 4, 10);
  //  }

  //PATTERN 08
  //for (int x=0; x<width; x++)
  //  for (int y= 0; y<height; y++)
  //    rect(x*random(-10., 10.), y*random(-
  //      10., 10.), random(20.), random(20.));

  //PATTERN 09
  //for(int x=0; x<width; x++)
  //for(int y= 0; y<height; y++)
  //rect(x*random(-10.,10.),y*10,10,10);


  //PATTERN 10
  //for (int x=0; x<width; x++)
  //  for (int y= 0; y<height; y++)
  //    rect(x*10, y*10, random(-10., 10.), 10);

  //PATTERN 11
  //for (int x=0; x<width; x+=10)
  //  for (int y= 0; y<height; y+=10) {
  //    beginShape();
  //    vertex(x+random(-10., 10.), y+random(-10., 10.));
  //    vertex(x+random(-10., 10.)+10, y+random(-10., 10.));
  //    vertex(x+random(-10., 10.)+10, y+random(-10., 10.)+10);
  //    vertex(x+random(-10., 10.), y+random(-10., 10.)+10);
  //    endShape(CLOSE);
  //  }


  beginShape();
  for (int i=0; i<20; i++) {
    float x = ((i+3)/4) * (((i+1)/2)%2*2-1) *10;
    float y = ((i+2)/4) * (((i)/2)%2*2-1) *10;
    vertex(x+50, y+50);
  }
  endShape();
}
void draw() {
}
