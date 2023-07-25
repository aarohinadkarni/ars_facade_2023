
AEC aec;
color color1;
color color2;
color color3;

void setup() {
  frameRate(25);
  size(1200, 400);
  
  aec = new AEC();
  aec.init();
  color1 = color(255);
  color2 = color(255);
  color3 = color(255);
}

void draw() {
  aec.beginDraw();

   
  // DRAW CODE
  int x1 = mouseX / aec.getScaleX();
  int x2 = (frameCount / 3) % 75;
  
  background(0, 0,0);
  
  println(x1);

  noStroke();

  int step = 1;

  for (int y = 0; y < 30; y += step) {
    for (int x = 0; x < 75; x+= step) {
      fill(255, 151, 23);
      rect(x, y, 1, step);
    }
  }

  //for (int y = 0; y < 30; y += step) {
  //  fill(255, 28, 240);
  //  rect(x2, y, 1, step);
  //}
  
  
  fill(color1);
  // crack 1
  rect(36,8+1,1,step);
  rect(34,9+1,1,step);
  rect(35,9+1,1,step);
  rect(34,10+1,1,step);
  rect(35,11+1,1,step);
  rect(36,11+1,1,step);
  rect(33,11+1,1,step);
  rect(32,12+1,1,step);
  rect(31, 11+1, 1, step);
  rect(30, 12+1, 1, step);
  rect(29, 13+1, 1, step);
  rect(28, 13+1, 1, step);
  rect(28, 14+1, 1, step);
  rect(27, 14+1, 1, step);
  rect(26, 14+1, 1, step);
  rect(25, 14+1, 1, step);
  rect(24, 14+1, 1, step);
  rect(24, 13+1, 1, step);
  rect(23, 12+1, 1, step);
  rect(22, 13+1, 1, step);
  rect(21, 14+1, 1, step);
  
  rect(26,15+1,1,step);
  rect(27,16+1,1,step);
  rect(28,16+1,1,step);
  rect(27,17+1,1,step);
  rect(26,18+1,1,step);
  rect(27,19+1,1,step);
  rect(29,17+1,1,step);
  rect(30,18+1,1,step);
  rect(31,17+1,1,step);
  rect(32,16+1,1,step);
  rect(32,18+1,1,step);
  rect(32,19+1,1,step);
  rect(33,20+1,1,step);
  rect(33,16+1,1,step);
  
  //delay(1000);
  
  // crack 2
  fill(color2);
  rect(17,1,1,step);
  rect(17,2,1,step);
  rect(16,3,1,step);
  rect(15,4,1,step);
  rect(15,4,1,step);
  rect(15,4,1,step);
  rect(15,4,1,step);
  rect(16,5,1,step);
  rect(15,6,1,step);
  rect(17,6,1,step);
  rect(14,7,1,step);
  rect(14,8,1,step);
  rect(13,9,1,step);
  rect(15,9,1,step);
  rect(15,10,1,step);
  rect(16,11,1,step);
  rect(17,12,1,step);
  rect(17,13,1,step);
  //rect(18,12,1,step);
  rect(18,14,1,step);
  rect(19,15,1,step);
  rect(20,16,1,step);
  //rect(20,15,1,step);
  rect(18,16,1,step);
  //rect(17,17,1,step);
  //rect(17,18,1,step);
  //rect(17,17,1,step);
  rect(16,14,1,step);
  rect(15,15,1,step);
  rect(15,16,1,step);
  rect(14,17,1,step);
  rect(14,18,1,step);
  rect(14,19,1,step);
  rect(15,20,1,step);
  rect(13,18,1,step);
  rect(12,19,1,step);
  
  // crack 3
  fill(color1);
  rect(17,7,1,step);
  rect(18,8,1,step);
  rect(17,9,1,step);
  
  // crack 4
  fill(color1);
  rect(23,1,1,step);
  rect(22,2,1,step);
  rect(22,3,1,step);
  
  // crack 5
  fill(color2);
  rect(23,4,1,step);
  rect(23,5,1,step);
  rect(23,6,1,step);
  rect(24,7,1,step);
  rect(25,8,1,step);
  rect(24,9,1,step);
  rect(26,9,1,step);
  rect(24,10,1,step);
  rect(23,11,1,step);
  rect(22,12,1,step);
  
  // crack 6
  fill(color2);
  rect(32,2,1,step);
  rect(32,3,1,step);
  rect(31,4,1,step);
  rect(31,5,1,step);
  rect(32,6,1,step);
  rect(33,7,1,step);
  rect(33,8,1,step);
  rect(34,9,1,step);
  rect(32,9,1,step);
  rect(32,10,1,step);
  rect(31,11,1,step);
  
  //crack 7
  rect(39,8,1,step);
  rect(38,9,1,step);
  rect(37,10,1,step);
  rect(39,12,1,step);
  
  //crack 8
  rect(34,13,1,step);
  rect(34,14,1,step);
  rect(35,15,1,step);
  rect(35,17,1,step);
  rect(36,16,1,step);
  rect(34,18,1,step);
  rect(37,14,1,step);
  rect(38,17,1,step);
  rect(37,17,1,step);
  rect(37,18,1,step);
  rect(39,18,1,step);
  rect(37,17,1,step);
  rect(36,19,1,step);
  rect(36,20,1,step);
  rect(37,21,1,step);
  rect(37,22,1,step);
  rect(36,23,1,step);
  
  //crack 9
  fill(color3);
  rect(37,2,1,step);
  rect(37,3,1,step);
  rect(36,4,1,step);
  rect(37,5,1,step);
  rect(36,6,1,step);
  rect(36,7,1,step);
  rect(35,8,1,step);
  rect(38,6,1,step);
  rect(38,7,1,step);
  
  //crack 10
  rect(25,2,1,step);
  rect(25,3,1,step);
  rect(24,4,1,step);
  rect(26,5,1,step);
  
  //crack 11
  rect(2,1,2,step);
  rect(0,2,1,step);
  rect(1,2,1,step);
  rect(2,3,2,step);
  
  //crack 12
  rect(4,4,1,step);
  rect(5,4,1,step);
  rect(4,5,1,step);
  rect(5,5,1,step);
  rect(2,6,1,step);
  rect(3,6,1,step);
  rect(2,7,1,step);
  rect(3,7,1,step);
  rect(0,8,1,step);
  rect(1,8,1,step);
  rect(2,9,1,step);
  rect(3,9,1,step);
  rect(2,10,1,step);
  rect(3,10,1,step);
  rect(0,11,1,step);
  rect(1,11,1,step);
  
  //crack 13
  rect(11,0,1,step);
  rect(11,1,1,step);
  rect(10,2,1,step);
  rect(9,2,1,step);
  rect(8,2,1,step);
  rect(7,3,1,step);
  rect(6,3,1,step);
  rect(11,3,1,step);
  rect(11,5,1,step);
  rect(11,6,1,step);
  rect(11,8,1,step);
  rect(11,9,1,step);
  rect(11,10,1,step);
  rect(11,12,1,step);
  rect(12,4,1,step);
  rect(12,5,1,step);
  rect(13,6,1,step);
  rect(10,7,1,step);
  rect(10,8,1,step);
  rect(9,9,1,step);
  rect(8,9,1,step);
  rect(12,11,1,step);
  rect(13,12,1,step);
  rect(13,13,1,step);
  
  // sparks
  
  //fill (28, 202, 237);
  //rect(33,8+1,1,step);
  //rect(32,9+1,1,step);
  //rect(31,11,1,step);
  //rect(32,10+1,1,step);
  //rect(33,11+1,1,step);
  //rect(32,13,1,step);
  //rect(31,11+1,1,step);
  
  //fill(255);
  //rect(32,12,1,step);
  
  //rect (36,18,1,step);
  //rect (36,19,1,step);
  //rect (37,17,1,step);
  //rect (37,18,1,step);
  
  //fill(255, 151, 23);
  //rect (35,14,1,step);
  //rect (35,15,1,step);
  //rect (35,17,1,step);
  //rect (35,18,1,step);
  //rect (35,19,1,step);
  
  //rect (36,15,1,step);
  //rect (36,16,1,step);
  //rect (36,17,1,step);
  //rect (36,20,1,step);
  
  //rect (37,16,1,step);
  //rect (37,19,1,step);
  
  //rect (38,17,1,step);
  //rect (38,18,1,step);
  
  aec.endDraw();
  aec.drawSides();
}

void keyPressed() {
  aec.keyPressed(key);
  if (key == 'c') {
    color1 = color(255,255,0);
    color2 = color(0,255,0);
    color3 = color(255, 28, 240);
  } else if (key == 'b') {
    color1 = color(255);
    color2 = color(28, 202, 237);
    color3 = color(255, 28, 240);
  } else if (key == 'o') {
    color1 = color(237, 216, 28);
    color2 = color(126, 28, 255);
    color3 = color(255, 28, 240);
  } else if (key == 'a') {
    color1 = color(255, 151, 23);
    color2 = color(255, 151, 23);
    color3 = color(255, 151, 23);
  }
}

//void drawCrack12V1() {
  
  
//  fill(0,255,0);
//  // crack 1
//  rect(36,8,1,step);
//  rect(34,9,1,step);
//  rect(35,9,1,step);
//  rect(34,10,1,step);
//  rect(35,11,1,step);
//  rect(36,11,1,step);
//  rect(33,11,1,step);
//  rect(32,12,1,step);
//  rect(31, 11, 1, step);
//  rect(30, 12, 1, step);
//  rect(29, 13, 1, step);
//  rect(28, 13, 1, step);
//  rect(28, 14, 1, step);
//  rect(27, 14, 1, step);
//  rect(26, 14, 1, step);
//  rect(25, 14, 1, step);
//  rect(24, 14, 1, step);
//  rect(24, 13, 1, step);
//  rect(23, 12, 1, step);
//  rect(22, 13, 1, step);
//  rect(21, 14, 1, step);
  
//  rect(26,15,1,step);
//  rect(27,16,1,step);
//  rect(28,16,1,step);
//  rect(27,17,1,step);
//  rect(26,18,1,step);
//  rect(27,19,1,step);
//  rect(29,17,1,step);
//  rect(30,18,1,step);
//  rect(31,17,1,step);
//  rect(32,16,1,step);
//  rect(32,18,1,step);
//  rect(32,19,1,step);
//  rect(33,20,1,step);
//  rect(33,16,1,step);
  
//  // crack 2
//  fill(255,255,0);
//  rect(17,1,1,step);
//  rect(17,2,1,step);
//  rect(16,3,1,step);
//  rect(15,4,1,step);
//  rect(15,4,1,step);
//  rect(15,4,1,step);
//  rect(15,4,1,step);
//  rect(16,5,1,step);
//  rect(15,6,1,step);
//  rect(17,6,1,step);
//  rect(14,7,1,step);
//  rect(14,8,1,step);
//  rect(13,9,1,step);
//  rect(15,9,1,step);
//  rect(15,10,1,step);
//  rect(16,11,1,step);
//  rect(17,12,1,step);
//  rect(17,13,1,step);
//  //rect(18,12,1,step);
//  rect(18,14,1,step);
//  rect(19,15,1,step);
//  rect(20,16,1,step);
//  rect(20,15,1,step);
//  rect(18,16,1,step);
//  //rect(17,17,1,step);
//  //rect(17,18,1,step);
//  //rect(17,17,1,step);
//  rect(16,14,1,step);
//  rect(15,15,1,step);
//  rect(15,16,1,step);
//  rect(14,17,1,step);
//  rect(14,18,1,step);
//  rect(14,19,1,step);
//  rect(15,20,1,step);
//  rect(13,18,1,step);
//  rect(12,19,1,step);
//}

//void drawCrackV2() {
//  fill(255);
//  int step = 1;
//  // crack 1
//  rect(36,8,1,step);
//  rect(34,9,1,step);
//  rect(35,9,1,step);
//  rect(34,10,1,step);
//  rect(35,11,1,step);
//  rect(36,11,1,step);
//  rect(33,11,1,step);
//  rect(32,12,1,step);
//  rect(31, 11, 1, step);
//  rect(30, 12, 1, step);
//  rect(29, 13, 1, step);
//  rect(28, 13, 1, step);
//  rect(28, 14, 1, step);
//  rect(27, 14, 1, step);
//  rect(26, 14, 1, step);
//  rect(25, 14, 1, step);
//  rect(24, 14, 1, step);
//  rect(24, 13, 1, step);
//  rect(23, 12, 1, step);
//  rect(22, 13, 1, step);
//  rect(21, 14, 1, step);
  
//  rect(26,15,1,step);
//  rect(27,16,1,step);
//  rect(28,16,1,step);
//  rect(27,17,1,step);
//  rect(26,18,1,step);
//  rect(27,19,1,step);
//  rect(29,17,1,step);
//  rect(30,18,1,step);
//  rect(31,17,1,step);
//  rect(32,16,1,step);
//  rect(32,18,1,step);
//  rect(32,19,1,step);
//  rect(33,20,1,step);
//  rect(33,16,1,step);
  
//  // crack 2
//  fill(28, 202, 237);
//  rect(17,1,1,step);
//  rect(17,2,1,step);
//  rect(16,3,1,step);
//  rect(15,4,1,step);
//  rect(15,4,1,step);
//  rect(15,4,1,step);
//  rect(15,4,1,step);
//  rect(16,5,1,step);
//  rect(15,6,1,step);
//  rect(17,6,1,step);
//  rect(14,7,1,step);
//  rect(14,8,1,step);
//  rect(13,9,1,step);
//  rect(15,9,1,step);
//  rect(15,10,1,step);
//  rect(16,11,1,step);
//  rect(17,12,1,step);
//  rect(17,13,1,step);
//  //rect(18,12,1,step);
//  rect(18,14,1,step);
//  rect(19,15,1,step);
//  rect(20,16,1,step);
//  rect(20,15,1,step);
//  rect(18,16,1,step);
//  //rect(17,17,1,step);
//  //rect(17,18,1,step);
//  //rect(17,17,1,step);
//  rect(16,14,1,step);
//  rect(15,15,1,step);
//  rect(15,16,1,step);
//  rect(14,17,1,step);
//  rect(14,18,1,step);
//  rect(14,19,1,step);
//  rect(15,20,1,step);
//  rect(13,18,1,step);
//  rect(12,19,1,step);
//}
