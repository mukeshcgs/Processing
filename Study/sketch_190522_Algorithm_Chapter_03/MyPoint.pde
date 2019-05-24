class MyPoint {
  //Members
  float x, y;

  //constructor
  MyPoint(float xin, float yin) {
    x = xin;
    y = yin;
  }

  //Method Plot
  void plot() {
    ellipse(x, y, 5, 5);
  }

  //Move
  void move(float xoff, float yoff) {
    x= x+xoff;
    y= y+yoff;
  }

  //Rotate
  void rotate( float angle, MyPoint ref) {
    float cosA, sinA;
    cosA = cos(radians(angle));
    sinA = sin(radians(angle));

    float newX = (x - ref.x) * cosA - (y - ref.y) * sinA + ref.x;
    float newY = (y - ref.y) * cosA + (x - ref.x) * sinA + ref.y;
    x= newX;
    y=newY;
  }

  //Scale
  void scale(float xs, float ys, MyPoint ref) {
    x = (x - ref.x)*xs + ref.x;
    y = (y - ref.y)*ys + ref.y;
  }
}
