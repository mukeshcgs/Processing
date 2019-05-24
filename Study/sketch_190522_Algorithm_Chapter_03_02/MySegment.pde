class MySegment {
  //Members
  MyPoint start;
  MyPoint end;

  //constructor
  public MySegment(MyPoint p1, MyPoint p2) {
    start = new MyPoint(p1.x, p1.y);
    end = new MyPoint(p2.x, p2.y);
  }

  //Plot OR Draw
  void plot() {
    line(start.x, start.y, end.x, end.y);
  }

  //Move
  void move(float xoff, float yoff) {
    start.move(xoff, yoff);
    end.move(xoff, yoff);
  }

  //Rotate
  void rotate( float angle, MyPoint ref) {
    start.rotate(angle, ref);
    end.rotate(angle, ref);
  }

  //Scale
  void scale(float xs, float ys, MyPoint ref) {
    start.scale(xs, ys, ref);
    end.scale(xs, ys, ref);
  }
}
