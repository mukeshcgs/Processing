//
ArrayList<TriangleClass> triangles;
//
// ---------------------------------------------------------------
//
void setup()
{
  // init
  size(800, 600);
  //  frameRate(3);
  int widthX= 50;
  int widthY= 50;
  int widthXhalf= widthX/2;
  int widthYhalf= widthY/2;
  triangles = new ArrayList<TriangleClass>();  // Create an empty ArrayList
  // the broad side up
  for (int y1=0; y1 < 12*widthY; y1+=widthY) {
    for (int x1=0; x1 < 17*widthX; x1+=widthX) {
      // for the Color :
      // color MyC1 = color( 22, (x1 % 2) == 0 ? 0 : 255, 22 );
      // color MyC1 = color (255, 0, 0);
      color MyC1 = color (0);
      // for the Life :
      int LifeValue=int (random(3)*(y1+1)*(x1+1));
      // int LifeValue = 16;     
      // int LifeValue = int(random(12));
      // A new TriangleClass object is added to the ArrayList (by default to the end)
      triangles.add(new TriangleClass(
      x1-widthXhalf, y1,
      x1+widthXhalf, y1,
      x1, y1+widthY,
      MyC1, LifeValue ));
    }
  }
  // 
  // the broad side down
  for (int y1=0; y1 < 12*widthY; y1+=widthY) {
    for (int x1=0; x1 < 17*widthX; x1+=widthX) {
      // for the Color :
      // color MyC1 = color(  (x1 % 2) == 0 ? 0 : 255, 22, 22);
      // color MyC1 = color (0, 255, 0);
      color MyC1 = color (0);
      // for the Life :
      int LifeValue=int (random(3)*(y1+1)*(x1+1)); 
      // int LifeValue = 16;
      // int LifeValue = int(random(12));     
      // A new TriangleClass object is added to the ArrayList (by default to the end)
      triangles.add(new TriangleClass(
      x1+2*widthXhalf, y1+widthY,
      x1+widthXhalf, y1,
      x1-0, y1+widthY,
      MyC1, LifeValue ));
    }
  }
  noStroke();
} // func
//
//
void draw()
{
  // runs again and again
  background(255);
  TriangleClass myCurrentTriangle ;
  for (int i=0; i < triangles.size(); i++) {
    // get object from ArrayList
    myCurrentTriangle = triangles.get(i);
    myCurrentTriangle.fade();
    myCurrentTriangle.mouseOver();
    myCurrentTriangle.display();
  } // for
} // func
//
void keyPressed() {
  // reset
  TriangleClass myCurrentTriangle ;
  for (int i=0; i < triangles.size(); i++) {
    myCurrentTriangle = triangles.get(i);
    myCurrentTriangle.life = 220;
  }
}
// =====================================================================
// Simple class
class TriangleClass {
  //
  float x1, y1, x2, y2, x3, y3;    // points
  color myColor;        // fill color
  float life = 255;     // for fill transparency / opacity
  float mouseSensorX, mouseSensorY;// check point for dist to mouse
  //
  // constructor
  TriangleClass(
  float tempX1, float tempY1,
  float tempX2, float tempY2,
  float tempX3, float tempY3,
  color tempmyColor1,
  int tempLife ) {
    x1 = tempX1;
    y1 = tempY1;
    x2 = tempX2;
    y2 = tempY2;
    x3 = tempX3;
    y3 = tempY3;   
    myColor=tempmyColor1;
    life= tempLife;
    mouseSensorX = (x1+x2+x3 )/ 3;
    mouseSensorY = (y1+y2+y3 )/ 3;
  }  // constructor
  //
  void fade() {
    life-=.5; // how fast fading? 0.5
  } // func
  //
  boolean mouseOver() {
    if (dist ( mouseX, mouseY, mouseSensorX, mouseSensorY ) < 60) {
      if (mouseButton==LEFT) {
        life=10;
      }
      else if (mouseButton==RIGHT) {
        life=75;
      }
      else {
        life=255;
      }
      return true;
    }
    return false;
  } // func
  //
  void display() {
    // show rectangle
    fill(myColor, life);
    triangle(x1, y1, x2, y2, x3, y3);
  } // func
  //
} // class
// =====================================================================
