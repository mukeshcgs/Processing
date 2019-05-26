/**
 * Think it Over.
 * Draw vector field with my custom noise formula.
 * 
 * @author @deconbatch
 * @version 0.1
 * Processing 3.2.1
 * 2019.05.25
 */

void setup() {

  size(1080, 1080);
  colorMode(HSB, 360, 100, 100, 100);
  smooth();

}

void draw() {
  
  int   ptnCntMax = 7; // draw 7 patterns
  float hueInit   = random(360.0);

  // shape parameters
  float xPhase = random(1.0);
  float yPhase = random(1.0);

  translate(width * 0.5, height * 0.5);
  background(0.0, 0.0, 90.0, 100);
  noFill();
     
  for (int ptnCnt = 0; ptnCnt < ptnCntMax; ++ptnCnt) {
      
    float ptnRatio = map(ptnCnt, 0, ptnCntMax, 0.0, 1.0);

    // pattern shape
    int   plotCntMax = floor(random(5000.0, 10000.0));
    float plotDiv    = random(0.002, 0.02);
    // complexity
    float complexity = random(0.5, 2.0);
    // start point of calculation
    float pStart     = random(1.0);

    float baseHue = hueInit + map(ptnRatio * ptnRatio, 0.0, 1.0, 0.0, 120.0);
    float baseSat = map(ptnRatio, 0.0, 1.0, 40.0, 20.0);
    float baseBri = map(ptnRatio, 0.0, 1.0, 30.0, 50.0);
    float baseAlp = 100.0;
     
    // initial value of vector field calculation 
    float xPoint = pStart + cos(TWO_PI * (xPhase + ptnRatio));
    float yPoint = pStart + sin(TWO_PI * (yPhase + ptnRatio));
    float rPoint = 0.0;

    // draw line with curveVertex()
    strokeWeight(1.0);
    stroke(baseHue % 360.0, baseSat, baseBri, baseAlp);
    beginShape();
    for (int plotCnt = 0; plotCnt < plotCntMax; ++plotCnt) {

      float plotRatio = map(plotCnt, 0, plotCntMax, 0.0, 1.0);

      float xPrev = xPoint;
      float yPrev = yPoint;
      float rPrev = rPoint;

      // vector field calculation 
      rPoint += customNoise(TWO_PI * (xPrev + plotRatio) * complexity, TWO_PI * (yPrev * plotRatio) * complexity);
      xPoint += plotDiv * cos(TWO_PI * rPoint) * plotRatio;
      yPoint += plotDiv * sin(TWO_PI * rPoint) * plotRatio;

      curveVertex((xPoint - pStart) * 0.25 * width, (yPoint - pStart) * 0.25 * height);

    }
    endShape();
      
  }
  
  casing();
  saveFrame("frames/####.png");

  if (frameCount >= 3) {
    exit();
  }

}

/**
 * casing : draw fancy casing
 */
private void casing() {
  rectMode(CENTER);
  fill(0.0, 0.0, 0.0, 0.0);
  strokeWeight(54.0);
  stroke(0.0, 0.0, 60.0, 100.0);
  rect(0.0, 0.0, width, height);
  strokeWeight(50.0);
  stroke(0.0, 0.0, 100.0, 100.0);
  rect(0.0, 0.0, width, height);
  noStroke();
  noFill();
}

/**
 * customNoise : returns -1.0 .. 1.0 almost random but interesting value
 */
float customNoise(float _x, float _y) {
  return pow(sin(_x), 3) * cos(pow(_y, 2));
}

/*
Copyright (C) 2019- deconbatch

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see 
*/
