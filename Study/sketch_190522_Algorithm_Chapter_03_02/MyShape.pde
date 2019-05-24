class MyShape {
  //Members
  MySegment [] segs;
  int numSegments;

  //Constructor
  MyShape(int numInputSegments, MySegment[] inputSegments) {
    numSegments = numInputSegments;
    segs = new MySegment[numSegments];
    for (int i=0; i<numSegments; i++) {
      segs[i] = inputSegments[i];
    }
  }

  //Move
  void move(float xoff, float yoff) {
    for (int i=0; i < numSegments; i++) {
      segs[i].move(xoff, yoff);
    }
  }
  // Rotate
  void rotate (float angle, MyPoint ref) {
    for (int i=0; i<numSegments; i++)
      segs[i].rotate(angle, ref);
  }

  // Scale
  void scale(float xs, float ys, MyPoint ref) {
    for (int i=0; i<numSegments; i++)
      segs[i].scale(xs, ys, ref);
  }
  //Plot OR Draw
  void plot() {
    for (int i=0; i < numSegments; i++) {
      segs[i].plot();
    }
  }
}
