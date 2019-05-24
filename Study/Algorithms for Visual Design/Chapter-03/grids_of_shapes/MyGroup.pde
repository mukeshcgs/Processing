class MyGroup {
  //Members
  //Array of Shapes
  MyShape[] shapes;
  //Number of Shapes
  int numShapes;

  //Constructors
  MyGroup(int numInputShapes, MyShape[] inputShapes) {
    numShapes = numInputShapes;
    shapes = new MyShape[numShapes];

    for (int i=0; i < numShapes; i++) {
      shapes[i] = inputShapes[i];
    }
  }

  // Move
  void move(float xoff, float yoff) {
    for (int i=0; i<numShapes; i++)
      shapes[i].move(xoff, yoff);
  }

  // draw
  void plot( ) {
    for (int i=0; i<numShapes; i++)
      shapes[i].plot();
  }
}
