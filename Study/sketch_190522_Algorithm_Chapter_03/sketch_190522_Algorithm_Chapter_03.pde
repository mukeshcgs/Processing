MyPoint p1, p2, p3, p4;
MySegment[] segment = new MySegment[2];
MyShape  shape;

void setup() {
  size(400, 400);
  background(#ffbd3a);
  p1 = new MyPoint(10., 10.);
  p2 = new MyPoint(20., 20.);
  p3 = new MyPoint(20., 20.);
  p4 = new MyPoint(30., 10.);

  //Make Segment
  segment [0] = new MySegment(p1, p2);
  segment [1] = new MySegment(p3, p4);

  //Make Shape
  shape = new MyShape(2, segment);
  //Move the shape at 30, 35
  shape.move(30., 50.);
  //Draw the shape
  shape.plot();
}

public void draw() {
  background(#ffbd3a);
  translate(width/2,height/2);
  shape.plot();
}

MyPoint ref = new MyPoint(50., 50.);
void mouseMoved() {
  int xoff = mouseX - pmouseX; // get the offset
  shape.rotate(xoff, ref);
}
