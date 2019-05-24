MyPoint p1, p2, p3, p4;
MySegment[] segment = new MySegment[2];
//MyShape  shape;
//MyShape[] shape = new MyShape[12*12];
int numShapes = 12; //num on side of gride of shapes
MyShape[] shape = new MyShape[numShapes*numShapes];
MyGroup group;

void setup() {
  size(400, 400);
  background(#ffbd3a);
  //p1 = new MyPoint(10., 10.);
  //p2 = new MyPoint(20., 20.);
  //p3 = new MyPoint(20., 20.);
  //p4 = new MyPoint(30., 10.);

  //Make Segment
  //segment [0] = new MySegment(p1, p2);
  //segment [1] = new MySegment(p3, p4);

  //Make Shape
  //shape = new MyShape(2, segment);
  //Move the shape at 30, 35
  //shape.move(30., 50.);
  //Draw the shape
  //shape.plot();
  for (int x = 0; x<12; x++) {
    for (int y = 0; y<12; y++) {
      //shape[y*12+x] = new MyShape(5, 10., x*20., y*20.);
      shape[y*numShapes+x] = new MyShape (5, 9, x*20, y*20);
    }
  }
  group = new MyGroup(numShapes*numShapes, shape);
  group.move(10,10);
}

public void draw() {
  background(#ffbd3a);
  //translate(width/2, height/2);
  //shape.plot();
  //for (int y=0; y<12; y++) { //for 12 steps in y
  //  for (int x=0; x<12; x++) { //for 12 steps in x
  //    shape[y*+x].plot(); // plot the shapes
  //  }
  //}
  group.plot();
}

MyPoint ref = new MyPoint(50., 50.);
void mouseMoved() {
  int xoff = mouseX - pmouseX; // get the offset
  //shape.rotate(xoff, ref);
}
