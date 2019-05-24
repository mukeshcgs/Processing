class MyShape {
  //Members
  MySegment [] segs;
  int numSegments;

  //Constructor
  //MyShape(int numInputSegments, MySegment[] inputSegments) {
  //  numSegments = numInputSegments;
  //  segs = new MySegment[numSegments];
  //  for (int i=0; i<numSegments; i++) {
  //    segs[i] = inputSegments[i];
  //  }
  //}

  //shape = new MyShape(numSides, radius, xcenter, ycenter) ;
  //Constructor for polygon
  MyShape(int numSides, float radius, float xOff, float yOff) {
    numSegments = numSides;
    segs =new MySegment [numSegments];

    //devide the full circle in nside sections
    float angle = 2 * PI /numSegments;

    //create two point to store the segment point
    MyPoint p = new MyPoint(0., 0.);
    MyPoint pNext = new MyPoint(0., 0.);

    //loop to assign values to the points
    for (int i=0; i < numSegments; i++ ) {
      p.x = xOff + radius * sin(angle*i);
      p.y = yOff + radius * cos(angle*i);

      pNext.x = xOff + radius * sin(angle*(i+1));
      pNext.y = yOff + radius * cos(angle*(i+1));
      
      segs[i] = new MySegment(p, pNext);
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
