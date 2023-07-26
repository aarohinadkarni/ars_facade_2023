
AEC aec;
color color1;
color color2;
color color3;

Trigger trigger1;
Trigger trigger2;
Trigger trigger3;
Trigger trigger4;
Trigger trigger5;
Trigger trigger6;
Trigger trigger7;
Trigger trigger8;
Trigger trigger9;
Trigger trigger10;

ArrayList<Pixel> allCracks = new ArrayList<Pixel>();

boolean isDrawing1;
boolean isActivated1;
int startTime1 =0;
int counter1 = 0;
ArrayList<Pixel> crack1Pixels = new ArrayList<Pixel>();

boolean isDrawing2;
boolean isActivated2;
int startTime2 =0;
int counter2 = 0;
ArrayList<Pixel> crack2Pixels = new ArrayList<Pixel>();

boolean isDrawing3;
boolean isActivated3;
int startTime3 =0;
int counter3 = 0;
ArrayList<Pixel> crack3Pixels = new ArrayList<Pixel>();

boolean isDrawing4;
boolean isActivated4;
int startTime4 =0;
int counter4 = 0;
ArrayList<Pixel> crack4Pixels = new ArrayList<Pixel>();


boolean isDrawing5;
boolean isActivated5;
int startTime5 =0;
int counter5 = 0;
ArrayList<Pixel> crack5Pixels = new ArrayList<Pixel>();

float pulse = 0;
float speed =40;
 

void setup() {
  frameRate(25);
  size(1200, 400);
  
  aec = new AEC();
  aec.init();
  setupPharus();
  color1 = color(255);
  color2 = color(255);
  color3 = color(255);
  
  trigger1 = new Trigger(34,3);
  trigger2 = new Trigger(32,10);
  trigger3 = new Trigger(31,20);
  trigger4 = new Trigger(28,17);
  trigger5 = new Trigger(26,21);
  trigger6 = new Trigger(24,16);
  trigger7 = new Trigger(22,2);
  trigger8 = new Trigger(26,4);
  trigger9 = new Trigger(25,8);
  trigger10 = new Trigger(39,3);
  
  //rect(34,2,1,1);
  crack1Pixels.add(new Pixel(34,2,1,1));
  //rect(34,3,1,1);
  crack1Pixels.add(new Pixel(34,3,1,1));
  //rect(33,4,1,1);
  crack1Pixels.add(new Pixel(33,4,1,1));
  //rect(32,5,1,1);
  crack1Pixels.add(new Pixel(32,5,1,1));
  //rect(33,6,1,1);
  crack1Pixels.add(new Pixel(33,6,1,1));
  //rect(34,7,1,1);
  crack1Pixels.add(new Pixel(34,7,1,1));
  //rect(32,7,1,1);
  crack1Pixels.add(new Pixel(32,7,1,1));
  //rect(31,8,1,1);
  crack1Pixels.add(new Pixel(31,8,1,1));
  //rect(31,9,1,1);
  crack1Pixels.add(new Pixel(31,9,1,1));
  //rect(30,10,1,1);
  crack1Pixels.add(new Pixel(30,10,1,1));
  
  //rect(26,21,1,1);
  crack5Pixels.add(new Pixel(26,21,1,1));
  //rect(27,20,1,1);
  crack5Pixels.add(new Pixel(27,20,1,1));
  //rect(27,22,1,1);
  crack5Pixels.add(new Pixel(27,22,1,1));  
}

void draw() {
  aec.beginDraw();

  
  // DRAW CODE
  int x1 = mouseX / aec.getScaleX();
  int x2 = (frameCount / 3) % 75;
  
  background(0, 0,0);
  
  //println(x1);
  rectMode(CENTER);

  noStroke();

  int step = 1;

  for (int y = 0; y < 30; y += step) {
    for (int x = 0; x < 75; x+= step) {
      fill(255, 151, 23);
      rect(x, y, 1, step);
    }
  }

  for (Pixel crack : allCracks) {
    fill(0);
    rect(crack.x, crack.y, crack.size, crack.step);
  }
  drawPharus(); 
  
  //int x = GetX(trackID);/// aec.getScaleX();
  //    int y = GetY(trackID);// / aec.getScaleY();
  //    x = int(map(x,0,1200,30,40));
  //    y = int(map(y,0,400,0,28));
  //for (int y = 0; y < 30; y += step) {
  //  fill(255, 28, 240);
  //  rect(x2, y, 1, step);
  //}
  
  fill(pulse);
  rect(34,2,1,1);
  pulse = pulse+speed;

  // resets the pulse back to 0 to continue to cycle through
  if (pulse>=360 || pulse<=0) {
    speed=speed*-1;
  }
  
  println(mouseX/aec.getScaleX(),mouseY/aec.getScaleY());
  drawHuman();
  fill(color1);
  // crack 1
  if (mouseX/aec.getScaleX() == trigger1.x && mouseY/aec.getScaleY() == trigger1.y) {
    //isActivated1 = true;
    drawCrackTop();
    //drawCrack1();
  } else if (mouseX/aec.getScaleX() == trigger2.x && mouseY/aec.getScaleY() == trigger2.y) {
    drawCrack2();
  } else if (mouseX/aec.getScaleX() == trigger3.x && mouseY/aec.getScaleY() == trigger3.y) {
    drawCrack3();
  } else if (mouseX/aec.getScaleX() == trigger4.x && mouseY/aec.getScaleY() == trigger4.y) {
    drawCrack4();
  } else if (mouseX/aec.getScaleX() == trigger5.x && mouseY/aec.getScaleY() == trigger5.y) {
    isActivated5 = true;
    //drawCrack5();
  } else if (mouseX/aec.getScaleX() == trigger6.x && mouseY/aec.getScaleY() == trigger6.y) {
    drawCrack6();
  } else if (mouseX/aec.getScaleX() == trigger7.x && mouseY/aec.getScaleY() == trigger7.y) {
    drawCrack7();
  } else if (mouseX/aec.getScaleX() == trigger8.x && mouseY/aec.getScaleY() == trigger8.y) {
    drawCrack8();
  }  else if (mouseX/aec.getScaleX() == trigger9.x && mouseY/aec.getScaleY() == trigger9.y) {
    drawCrack9();
  } else if (mouseX/aec.getScaleX() == trigger10.x && mouseY/aec.getScaleY() == trigger10.y) {
    drawCrack10();
  } 
  //drawCrack1();
  drawCrack5();
  //rect(36,8+1,1,step);
  //rect(34,9+1,1,step);
  //rect(35,9+1,1,step);
  //rect(34,10+1,1,step);
  //rect(35,11+1,1,step);
  //rect(36,11+1,1,step);
  //rect(33,11+1,1,step);
  //rect(32,12+1,1,step);
  //rect(31, 11+1, 1, step);
  //rect(30, 12+1, 1, step);
  //rect(29, 13+1, 1, step);
  //rect(28, 13+1, 1, step);
  //rect(28, 14+1, 1, step);
  //rect(27, 14+1, 1, step);
  //rect(26, 14+1, 1, step);
  //rect(25, 14+1, 1, step);
  //rect(24, 14+1, 1, step);
  //rect(24, 13+1, 1, step);
  //rect(23, 12+1, 1, step);
  //rect(22, 13+1, 1, step);
  //rect(21, 14+1, 1, step);
  
  //rect(26,15+1,1,step);
  //rect(27,16+1,1,step);
  //rect(28,16+1,1,step);
  //rect(27,17+1,1,step);
  //rect(26,18+1,1,step);
  //rect(27,19+1,1,step);
  //rect(29,17+1,1,step);
  //rect(30,18+1,1,step);
  //rect(31,17+1,1,step);
  //rect(32,16+1,1,step);
  //rect(32,18+1,1,step);
  //rect(32,19+1,1,step);
  //rect(33,20+1,1,step);
  //rect(33,16+1,1,step);
  
  //delay(1000);
  
  // crack 2
  //fill(color2);
  //rect(17,1,1,step);
  //rect(17,2,1,step);
  //rect(16,3,1,step);
  //rect(15,4,1,step);
  //rect(15,4,1,step);
  //rect(15,4,1,step);
  //rect(15,4,1,step);
  //rect(16,5,1,step);
  //rect(15,6,1,step);
  //rect(17,6,1,step);
  //rect(14,7,1,step);
  //rect(14,8,1,step);
  //rect(13,9,1,step);
  //rect(15,9,1,step);
  //rect(15,10,1,step);
  //rect(16,11,1,step);
  //rect(17,12,1,step);
  //rect(17,13,1,step);
  ////rect(18,12,1,step);
  //rect(18,14,1,step);
  //rect(19,15,1,step);
  //rect(20,16,1,step);
  ////rect(20,15,1,step);
  //rect(18,16,1,step);
  ////rect(17,17,1,step);
  ////rect(17,18,1,step);
  ////rect(17,17,1,step);
  //rect(16,14,1,step);
  //rect(15,15,1,step);
  //rect(15,16,1,step);
  //rect(14,17,1,step);
  //rect(14,18,1,step);
  //rect(14,19,1,step);
  //rect(15,20,1,step);
  //rect(13,18,1,step);
  //rect(12,19,1,step);
  
  //// crack 3
  //fill(color1);
  //rect(17,7,1,step);
  //rect(18,8,1,step);
  //rect(17,9,1,step);
  
  // crack 4
  //fill(color1);
  //rect(23,1,1,step);
  //rect(22,2,1,step);
  //rect(22,3,1,step);
  
  // crack 5
  //fill(color2);
  //rect(23,4,1,step);
  //rect(23,5,1,step);
  //rect(23,6,1,step);
  //rect(24,7,1,step);
  //rect(25,8,1,step);
  //rect(24,9,1,step);
  //rect(26,9,1,step);
  //rect(24,10,1,step);
  //rect(23,11,1,step);
  //rect(22,12,1,step);
  
  // crack 6
  //fill(color2);
  //rect(32,2,1,step);
  //rect(32,3,1,step);
  //rect(31,4,1,step);
  //rect(31,5,1,step);
  //rect(32,6,1,step);
  //rect(33,7,1,step);
  //rect(33,8,1,step);
  //rect(34,9,1,step);
  //rect(32,9,1,step);
  //rect(32,10,1,step);
  //rect(31,11,1,step);
  
  //crack 7
  //rect(39,8,1,step);
  //rect(38,9,1,step);
  //rect(37,10,1,step);
  //rect(39,12,1,step);
  
  //crack 8
  //rect(34,13,1,step);
  //rect(34,14,1,step);
  //rect(35,15,1,step);
  //rect(35,17,1,step);
  //rect(36,16,1,step);
  //rect(34,18,1,step);
  //rect(37,14,1,step);
  //rect(38,17,1,step);
  //rect(37,17,1,step);
  //rect(37,18,1,step);
  //rect(39,18,1,step);
  //rect(37,17,1,step);
  //rect(36,19,1,step);
  //rect(36,20,1,step);
  //rect(37,21,1,step);
  //rect(37,22,1,step);
  //rect(36,23,1,step);
  
  //crack 9
  //fill(color3);
  //rect(37,2,1,step);
  //rect(37,3,1,step);
  //rect(36,4,1,step);
  //rect(37,5,1,step);
  //rect(36,6,1,step);
  //rect(36,7,1,step);
  //rect(35,8,1,step);
  //rect(38,6,1,step);
  //rect(38,7,1,step);
  
  //crack 10
  //rect(25,2,1,step);
  //rect(25,3,1,step);
  //rect(24,4,1,step);
  //rect(26,5,1,step);
  
  //crack 11
  //rect(2,1,2,step);
  //rect(0,2,1,step);
  //rect(1,2,1,step);
  //rect(2,3,2,step);
  
  ////crack 12
  //rect(4,4,1,step);
  //rect(5,4,1,step);
  //rect(4,5,1,step);
  //rect(5,5,1,step);
  //rect(2,6,1,step);
  //rect(3,6,1,step);
  //rect(2,7,1,step);
  //rect(3,7,1,step);
  //rect(0,8,1,step);
  //rect(1,8,1,step);
  //rect(2,9,1,step);
  //rect(3,9,1,step);
  //rect(2,10,1,step);
  //rect(3,10,1,step);
  //rect(0,11,1,step);
  //rect(1,11,1,step);
  
  ////crack 13
  //rect(11,0,1,step);
  //rect(11,1,1,step);
  //rect(10,2,1,step);
  //rect(9,2,1,step);
  //rect(8,2,1,step);
  //rect(7,3,1,step);
  //rect(6,3,1,step);
  //rect(11,3,1,step);
  //rect(11,5,1,step);
  //rect(11,6,1,step);
  //rect(11,8,1,step);
  //rect(11,9,1,step);
  //rect(11,10,1,step);
  //rect(11,12,1,step);
  //rect(12,4,1,step);
  //rect(12,5,1,step);
  //rect(13,6,1,step);
  //rect(10,7,1,step);
  //rect(10,8,1,step);
  //rect(9,9,1,step);
  //rect(8,9,1,step);
  //rect(12,11,1,step);
  //rect(13,12,1,step);
  //rect(13,13,1,step);
  
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
  
  //drawCrack6();
  
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

void drawCrack1() {
  int step = 1;
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
}

void drawCrackTop() {
  fill(0);
  rect(34,2,1,1);
  allCracks.add(new Pixel(34,2,1,1));
  rect(34,3,1,1);
  allCracks.add(new Pixel(34,3,1,1));
  rect(33,4,1,1);
  allCracks.add(new Pixel(33,4,1,1));
  rect(32,5,1,1);
  allCracks.add(new Pixel(32,5,1,1));
  rect(33,6,1,1);
  allCracks.add(new Pixel(33,6,1,1));
  rect(34,7,1,1);
  allCracks.add(new Pixel(34,7,1,1));
  rect(32,7,1,1);
  allCracks.add(new Pixel(32,7,1,1));
  rect(31,8,1,1);
  allCracks.add(new Pixel(31,8,1,1));
  rect(31,9,1,1);
  allCracks.add(new Pixel(31,9,1,1));
  rect(30,10,1,1);
  allCracks.add(new Pixel(30,10,1,1));
  
  //if (isActivated1 && startTime1 == 0) {
  //  isDrawing1 = true;
  //  startTime1 = millis();
  //  isActivated1 = false;
  //}
  //int rectNum = crack1Pixels.size()-1;
  //println("rectNum: " + rectNum);
  //println("counter:" + counter5);
  
  //if(isDrawing5) {
  //    int currentTime = millis();
  //    if ((currentTime-startTime1)>200) {
  //          println("hit");
  //          allCracks.add(crack5Pixels.get(counter5));
  //          counter1++;
  //          startTime1=millis();
  //    }
  //}
  //if(counter1 > rectNum) {
  //  isDrawing1 = false;
  //}
}

void drawCrack2() {
  fill(0);
  rect(32,11,1,1);
  allCracks.add(new Pixel(32,10,1,1));
  rect(32,11,1,1);
  allCracks.add(new Pixel(32,11,1,1));
  rect(33,12,1,1);
  allCracks.add(new Pixel(33,12,1,1));
  rect(34,12,1,1);
  allCracks.add(new Pixel(34,12,1,1));
  rect(35,12,1,1);
  allCracks.add(new Pixel(35,12,1,1));
  rect(36,11,1,1);
  allCracks.add(new Pixel(36,11,1,1));
  rect(34,13,1,1);
  allCracks.add(new Pixel(34,13,1,1)) ;
  rect(35,14,1,1);
  allCracks.add(new Pixel(35,14,1,1));
  rect(36,14,1,1);
  allCracks.add(new Pixel(36,14,1,1));
  rect(37,15,1,1);
  allCracks.add(new Pixel(37,15,1,1));
  rect(38,15,1,1);
  allCracks.add(new Pixel(38,15,1,1));
}

void drawCrack3() {
  fill(0);
  
  rect(31,20,1,1);
  allCracks.add(new Pixel(31,20,1,1));
  rect(30,21,1,1);
  allCracks.add(new Pixel(30,21,1,1));
  rect(32,19,1,1);
  allCracks.add(new Pixel(32,19,1,1));
  rect(33,19,1,1);
  allCracks.add(new Pixel(33,19,1,1));
  rect(32,21,1,1);
  allCracks.add(new Pixel(32,21,1,1));
  rect(32,22,1,1);
  allCracks.add(new Pixel(32,22,1,1));
  rect(33,23,1,1);
  allCracks.add(new Pixel(33,23,1,1));
}

void drawCrack4() {
  fill(0);
  rect(28,17,1,1);
  allCracks.add(new Pixel(28,17,1,1));
  rect(28,16,1,1);
  allCracks.add(new Pixel(28,16,1,1));
  rect(29,16,1,1);
  allCracks.add(new Pixel(29,16,1,1));
  rect(30,15,1,1);
  allCracks.add(new Pixel(30,15,1,1));
  rect(31,14,1,1);
  allCracks.add(new Pixel(31,14,1,1));
  rect(32,15,1,1);
  allCracks.add(new Pixel(32,15,1,1));
  rect(33,14,1,1);
  allCracks.add(new Pixel(33,14,1,1));
  rect(34,15,1,1);
  allCracks.add(new Pixel(34,15,1,1));
}

void drawCrack5() {
  fill(0);
  //rect(26,21,1,1);
  //allCracks.add(new Pixel(26,21,1,1));
  //rect(27,20,1,1);
  //allCracks.add(new Pixel(27,20,1,1));
  //rect(27,22,1,1);
  //allCracks.add(new Pixel(27,22,1,1));

  if (isActivated5 && startTime5 == 0) {
    isDrawing5 = true;
    startTime5 = millis();
    isActivated5 = false;
  }
  int rectNum = crack5Pixels.size()-1;
  println("rectNum: " + rectNum);
  println("counter:" + counter5);
  
  if(isDrawing5) {
      int currentTime = millis();
      if ((currentTime-startTime5)>200) {
            println("hit");
            allCracks.add(crack5Pixels.get(counter5));
            counter5++;
            startTime5=millis();
      }
  }
  if(counter5 > rectNum) {
    isDrawing5 = false;
  }
  /*
  while (isDrawing5) {
    allCracks.add(crack5Pixels.get(counter));
    counter++;
    if (counter > rectNum) {
        isDrawing5 = false;
    }
  }
  if (counter >= rectNum) {
      isDrawing5 = false;
  }*/
  
}

void drawCrack6() {
  fill(0);
  rect(24,16,1,1);
  allCracks.add(new Pixel(24,16,1,1));
  rect(24,17,1,1);
  allCracks.add(new Pixel(24,17,1,1));
  rect(23,15,1,1);
  allCracks.add(new Pixel(23,15,1,1));
  rect(22,16,1,1);
  allCracks.add(new Pixel(22,16,1,1));
  rect(21,17,1,1);
  allCracks.add(new Pixel(21,17,1,1));
  rect(25,17,1,1);
  allCracks.add(new Pixel(25,17,1,1));
  rect(26,17,1,1);
  allCracks.add(new Pixel(26,17,1,1));
  rect(27,17,1,1);
  allCracks.add(new Pixel(27,17,1,1));
  rect(26,18,1,1);
  allCracks.add(new Pixel(26,18,1,1));
  rect(27,19,1,1);
  allCracks.add(new Pixel(27,19,1,1));
  rect(28,19,1,1);
  allCracks.add(new Pixel(28,19,1,1));
  rect(29,20,1,1);
  allCracks.add(new Pixel(29,20,1,1));
}

void drawCrack7() {
  fill(0);
  rect(22,2,1,1);
  allCracks.add(new Pixel(22,2,1,1));
  rect(22,3,1,1);
  allCracks.add(new Pixel(22,3,1,1));
  rect(23,1,1,1);
  allCracks.add(new Pixel(23,1,1,1));
}

void drawCrack8() {
  fill(0);
  rect(26,4,1,1);
  allCracks.add(new Pixel(26,4,1,1));
  rect(25,3,1,1);
  allCracks.add(new Pixel(25,3,1,1));
  rect(25,2,1,1);
  allCracks.add(new Pixel(25,2,1,1));
  rect(24,3,1,1);
  allCracks.add(new Pixel(24,3,1,1));
  rect(23,4,1,1);
  allCracks.add(new Pixel(23,4,1,1));
  rect(23,5,1,1);
  allCracks.add(new Pixel(23,5,1,1));
  rect(23,6,1,1);
  allCracks.add(new Pixel(23,6,1,1));
}

void drawCrack9() {
  fill(0);
  rect(25,8,1,1);
  allCracks.add(new Pixel(25,8,1,1));
  rect(26,9,1,1);
  allCracks.add(new Pixel(26,9,1,1));
  rect(24,7,1,1);
  allCracks.add(new Pixel(24,7,1,1));
  rect(24,9,1,1);
  allCracks.add(new Pixel(24,9,1,1));
  rect(24,10,1,1);
  allCracks.add(new Pixel(24,10,1,1));
  rect(23,11,1,1);
  allCracks.add(new Pixel(23,11,1,1));
  rect(22,12,1,1);
  allCracks.add(new Pixel(22,12,1,1));
  
}


void drawCrack10() {
  fill(0);
  rect(39,3,1,1);
  allCracks.add(new Pixel(39,3,1,1));
  rect(38,4,1,1);
  allCracks.add(new Pixel(38,4,1,1));
  rect(38,5,1,1);
  allCracks.add(new Pixel(38,5,1,1));
  rect(37,6,1,1);
  allCracks.add(new Pixel(37,6,1,1));
  rect(38,7,1,1);
  allCracks.add(new Pixel(38,7,1,1));
  rect(38,8,1,1);
  allCracks.add(new Pixel(38,8,1,1));
  rect(37,9,1,1);
  allCracks.add(new Pixel(37,9,1,1));
}

void drawHuman() {
   
  fill(pulse);
  rect(mouseX/aec.getScaleX(), mouseY/aec.getScaleY(), 1, 1);
  pulse = pulse+speed;
  
  // resets the pulse back to 0 to continue to cycle through
  if (pulse>=360 || pulse<=0) {
    speed=speed*-1;
  }

  
}

class Trigger {
  int x;
  int y;
  
  Trigger(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

class Pixel {
  int x;
  int y;
  int size;
  int step;
  
  Pixel(int x, int y, int size, int step) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.step = step;
  }
}
