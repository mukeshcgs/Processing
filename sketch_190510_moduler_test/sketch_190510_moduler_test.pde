
int unit = 40;
int count;
Module[] mods;

void setup() {
  size(640, 360);
  noStroke();
  int wideCount = width / unit;
  int highCount = height / unit;
  count = wideCount * highCount;
  mods = new Module[count];

  int index = 0;
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(0.05, 0.8), unit);
    }
  }
}

void draw() {
  background(0);
  for (Module mod : mods) {
    mod.update();
    mod.display();
  }
}






//Particle p;
//int count;
//Particle[] part;

//void setup() {
//  size(400, 400);
//  noStroke();
//  part = new Particle[count];

//  int index = 0;
//  //for (int y = 0; y < highCount; y++) {
//  //  for (int x = 0; x < wideCount; x++) {
//  //    mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(0.05, 0.8), unit);
//  //  }
//  //}
//  for (float a = 0; a < 10; a ++) {
//    //mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(0.05, 0.8), unit);
//    part[index++] = new Particle(width/2, height/2, 10, 1);
//    //p = new Particle(width/2, height/2, 10, 500);
//  }
//}
//void draw() {
//  background(255);
//  smooth();
//  //p.update(p);
//  //p.display();

//  for (Particle mod : part) {
//    part.update();
//    part.display();
//  }
//}
