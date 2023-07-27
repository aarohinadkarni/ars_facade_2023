
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

color crackColor;
color backgroundColor;

ArrayList<Pixel> allCracks = new ArrayList<Pixel>();

boolean isDrawing1;
boolean isActivated1;
int startTime1 =0;
int counter1 = 0;
ArrayList<Pixel> crack1Pixels = new ArrayList<Pixel>();

boolean isDrawing1_;
boolean isActivated1_;
int startTime1_ =0;
int counter1_ = 0;
ArrayList<Pixel> crack1Pixels_ = new ArrayList<Pixel>();

boolean isDrawing2;
boolean isActivated2;
int startTime2 =0;
int counter2 = 0;
ArrayList<Pixel> crack2Pixels = new ArrayList<Pixel>();

boolean isDrawing2_;
boolean isActivated2_;
int startTime2_ =0;
int counter2_ = 0;
ArrayList<Pixel> crack2Pixels_ = new ArrayList<Pixel>();

boolean isDrawing3;
boolean isActivated3;
int startTime3 =0;
int counter3 = 0;
ArrayList<Pixel> crack3Pixels = new ArrayList<Pixel>();

boolean isDrawing3_;
boolean isActivated3_;
int startTime3_ =0;
int counter3_ = 0;
ArrayList<Pixel> crack3Pixels_ = new ArrayList<Pixel>();

boolean isDrawing4;
boolean isActivated4;
int startTime4 =0;
int counter4 = 0;
ArrayList<Pixel> crack4Pixels = new ArrayList<Pixel>();

boolean isDrawing4_;
boolean isActivated4_;
int startTime4_ =0;
int counter4_ = 0;
ArrayList<Pixel> crack4Pixels_ = new ArrayList<Pixel>();

boolean isDrawing5;
boolean isActivated5;
int startTime5 =0;
int counter5 = 0;
ArrayList<Pixel> crack5Pixels = new ArrayList<Pixel>();

boolean isDrawing5_;
boolean isActivated5_;
int startTime5_ =0;
int counter5_ = 0;
ArrayList<Pixel> crack5Pixels_ = new ArrayList<Pixel>();

boolean isDrawing6;
boolean isActivated6;
int startTime6 =0;
int counter6 = 0;
ArrayList<Pixel> crack6Pixels = new ArrayList<Pixel>();

boolean isDrawing6_;
boolean isActivated6_;
int startTime6_ =0;
int counter6_ = 0;
ArrayList<Pixel> crack6Pixels_ = new ArrayList<Pixel>();

boolean isDrawing7;
boolean isActivated7;
int startTime7 =0;
int counter7 = 0;
ArrayList<Pixel> crack7Pixels = new ArrayList<Pixel>();

boolean isDrawing7_;
boolean isActivated7_;
int startTime7_ =0;
int counter7_ = 0;
ArrayList<Pixel> crack7Pixels_ = new ArrayList<Pixel>();

boolean isDrawing8;
boolean isActivated8;
int startTime8 =0;
int counter8 = 0;
ArrayList<Pixel> crack8Pixels = new ArrayList<Pixel>();

boolean isDrawing8_;
boolean isActivated8_;
int startTime8_ =0;
int counter8_ = 0;
ArrayList<Pixel> crack8Pixels_ = new ArrayList<Pixel>();

boolean isDrawing9;
boolean isActivated9;
int startTime9 =0;
int counter9 = 0;
ArrayList<Pixel> crack9Pixels = new ArrayList<Pixel>();

boolean isDrawing9_;
boolean isActivated9_;
int startTime9_ =0;
int counter9_ = 0;
ArrayList<Pixel> crack9Pixels_ = new ArrayList<Pixel>();

boolean isDrawing10;
boolean isActivated10;
int startTime10 =0;
int counter10 = 0;
ArrayList<Pixel> crack10Pixels = new ArrayList<Pixel>();

boolean isDrawing10_;
boolean isActivated10_;
int startTime10_ =0;
int counter10_ = 0;
ArrayList<Pixel> crack10Pixels_ = new ArrayList<Pixel>();

float pulse = 0;
float speed =40;

float crackFill1;
float crackFill2;
float crackFill3;
float crackFill4;
float crackFill10;

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
  trigger4 = new Trigger(33,14);
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
  
  //rect(34-19,1,1,1);
  crack1Pixels_.add(new Pixel(34-19,1,1,1));
  //rect(34-19,-2+2,1,1);
  crack1Pixels_.add(new Pixel(34-19,0,1,1));
  //rect(34-20,2-2+2,1,1);
  crack1Pixels_.add(new Pixel(34-20,2,1,1));
  //rect(34-20,3,1,1);
  crack1Pixels_.add(new Pixel(34-20,3,1,1));
  //rect(33-20,4,1,1);
  crack1Pixels_.add(new Pixel(33-20,4,1,1));
  //rect(32-20,5,1,1);
  crack1Pixels_.add(new Pixel(32-20,5,1,1));
  //rect(33-20,6,1,1);
  crack1Pixels_.add(new Pixel(33-20,6,1,1));
  //rect(34-20,7,1,1);
  crack1Pixels_.add(new Pixel(34-20,7,1,1));
  //rect(32-20,7,1,1);
  crack1Pixels_.add(new Pixel(32-20,7,1,1));
  //rect(31-20,8,1,1);
  crack1Pixels_.add(new Pixel(31-20,9,1,1));
  //rect(30-20,10,1,1);
  crack1Pixels_.add(new Pixel(30-20,10,1,1));
  
  //rect(32,11,1,1);
  crack2Pixels.add(new Pixel(32,10,1,1));
  //rect(32,11,1,1);
  crack2Pixels.add(new Pixel(32,11,1,1));
  //rect(33,12,1,1);
  crack2Pixels.add(new Pixel(33,12,1,1));
  //rect(34,12,1,1);
  crack2Pixels.add(new Pixel(34,12,1,1));
  //rect(35,12,1,1);
  crack2Pixels.add(new Pixel(35,12,1,1));
  //rect(36,11,1,1);
  crack2Pixels.add(new Pixel(36,11,1,1));
  //rect(34,13,1,1);
  crack2Pixels.add(new Pixel(34,13,1,1)) ;
  //rect(35,14,1,1);
  crack2Pixels.add(new Pixel(35,14,1,1));
  //rect(36,14,1,1);
  crack2Pixels.add(new Pixel(36,14,1,1));
  //rect(37,15,1,1);
  crack2Pixels.add(new Pixel(37,15,1,1));
  //rect(38,15,1,1);
  crack2Pixels.add(new Pixel(38,15,1,1));
  
  //rect(32-20,11,1,1);
  crack2Pixels_.add(new Pixel(32-20,10,1,1));
  //rect(32-20,11,1,1);
  crack2Pixels_.add(new Pixel(32-20,11,1,1));
  //rect(33-20,12,1,1);
  crack2Pixels_.add(new Pixel(33-20,12,1,1));
  //rect(34-20,12,1,1);
  crack2Pixels_.add(new Pixel(34-20,12,1,1));
  //rect(35-20,12,1,1);
  crack2Pixels_.add(new Pixel(35-20,12,1,1));
  //rect(36-20,11,1,1);
  crack2Pixels_.add(new Pixel(36-20,11,1,1));
  //rect(34-20,13,1,1);
  crack2Pixels_.add(new Pixel(34-20,13,1,1)) ;
  //rect(35-20,14,1,1);
  crack2Pixels_.add(new Pixel(35-20,14,1,1));
  //rect(36-20,14,1,1);
  crack2Pixels_.add(new Pixel(36-20,14,1,1));
  //rect(37-20,15,1,1);
  crack2Pixels_.add(new Pixel(37-20,15,1,1));
  //rect(38-20,15,1,1);
  crack2Pixels_.add(new Pixel(38-20,15,1,1));
  
  //rect(31,20,1,1);
  crack3Pixels.add(new Pixel(31,20,1,1));
  //rect(30,21,1,1);
  crack3Pixels.add(new Pixel(30,21,1,1));
  //rect(32,19,1,1);
  crack3Pixels.add(new Pixel(32,19,1,1));
  //rect(33,19,1,1);
  crack3Pixels.add(new Pixel(33,19,1,1));
  //rect(32,21,1,1);
  crack3Pixels.add(new Pixel(32,21,1,1));
  //rect(32,22,1,1);
  crack3Pixels.add(new Pixel(32,22,1,1));
  //rect(33,23,1,1);
  crack3Pixels.add(new Pixel(33,23,1,1));
  
  //rect(31-20,20,1,1);
  crack3Pixels_.add(new Pixel(31-20,20,1,1));
  //rect(30-20,21,1,1);
  crack3Pixels_.add(new Pixel(30-20,21,1,1));
  //rect(32-20,19,1,1);
  crack3Pixels_.add(new Pixel(32-20,19,1,1));
  //rect(33-20,19,1,1);
  crack3Pixels_.add(new Pixel(33-20,19,1,1));
  //rect(32-20,21,1,1);
  crack3Pixels_.add(new Pixel(32-20,21,1,1));
  //rect(32-20,22,1,1);
  crack3Pixels_.add(new Pixel(32-20,22,1,1));
  //rect(33-20,23,1,1);
  crack3Pixels_.add(new Pixel(33-20,23,1,1));
  
  //rect(28,17,1,1);
  crack4Pixels.add(new Pixel(33,14,1,1));
  crack4Pixels.add(new Pixel(32,15,1,1));
  crack4Pixels.add(new Pixel(31,14,1,1));
  crack4Pixels.add(new Pixel(30,15,1,1));
  crack4Pixels.add(new Pixel(29,16,1,1));
  crack4Pixels.add(new Pixel(28,16,1,1));
  crack4Pixels.add(new Pixel(28,17,1,1));
  //rect(28,16,1,1);
  //crack4Pixels.add(new Pixel(28,16,1,1));
  //rect(29,16,1,1);
 
  //rect(30,15,1,1);
  
  //rect(31,14,1,1);
  
  //rect(32,15,1,1);
  
  //rect(33,14,1,1);
  
  //rect(34,15,1,1);
  //crack4Pixels.add(new Pixel(34,15,1,1));
  
  //rect(28-20,16,1,1);
  crack4Pixels_.add(new Pixel(28-20,16,1,1));
  //rect(29-20,16,1,1);
  crack4Pixels_.add(new Pixel(29-20,16,1,1));
  //rect(30-20,15,1,1);
  crack4Pixels_.add(new Pixel(30-20,15,1,1));
  //rect(31-20,14,1,1);
  crack4Pixels_.add(new Pixel(31-20,14,1,1));
  //rect(32-20,15,1,1);
  crack4Pixels_.add(new Pixel(32-20,15,1,1));
  //rect(33-20,14,1,1);
  crack4Pixels_.add(new Pixel(33-20,14,1,1));
  
  //rect(26,21,1,1);
  crack5Pixels.add(new Pixel(26,21,1,1));
  //rect(27,20,1,1);
  crack5Pixels.add(new Pixel(27,20,1,1));
  //rect(27,22,1,1);
  crack5Pixels.add(new Pixel(27,22,1,1));  
  
  //rect(6,20,1,1);
  crack5Pixels_.add(new Pixel(6,20,1,1));
  //rect(7,20,1,1);
  crack5Pixels_.add(new Pixel(7,20,1,1));
  //rect(4,21,1,1);
  crack5Pixels_.add(new Pixel(4,21,1,1));
  //rect(5,21,1,1);
  crack5Pixels_.add(new Pixel(5,21,1,1));
  //rect(6,22,1,1);
  crack5Pixels_.add(new Pixel(6,22,1,1));
  //rect(7,22,1,1);
  crack5Pixels_.add(new Pixel(7,22,1,1));
  
  //rect(24,16,1,1);
  crack6Pixels.add(new Pixel(24,16,1,1));
  //rect(24,17,1,1);
  crack6Pixels.add(new Pixel(24,17,1,1));
  //rect(23,15,1,1);
  crack6Pixels.add(new Pixel(23,15,1,1));
  //rect(22,16,1,1);
  crack6Pixels.add(new Pixel(22,16,1,1));
  //rect(21,17,1,1);
  crack6Pixels.add(new Pixel(21,17,1,1));
  //rect(25,17,1,1);
  crack6Pixels.add(new Pixel(25,17,1,1));
  //rect(26,17,1,1);
  crack6Pixels.add(new Pixel(26,17,1,1));
  //rect(27,17,1,1);
  crack6Pixels.add(new Pixel(27,17,1,1));
  //rect(26,18,1,1);
  crack6Pixels.add(new Pixel(26,18,1,1));
  //rect(27,19,1,1);
  crack6Pixels.add(new Pixel(27,19,1,1));
  //rect(28,19,1,1);
  crack6Pixels.add(new Pixel(28,19,1,1));
  //rect(29,20,1,1);
  crack6Pixels.add(new Pixel(29,20,1,1));
  
  //rect(24-20,17,1,1);
  crack6Pixels_.add(new Pixel(24-20,17,1,1));
  //rect(2,15,1,1);
  crack6Pixels_.add(new Pixel(22-20,15,1,1));
  //rect(3,15,1,1);
  crack6Pixels_.add(new Pixel(23-20,15,1,1));
  //rect(23-20,16,1,1);
  crack6Pixels_.add(new Pixel(23-20,16,1,1));
  //rect(22-20,16,1,1);
  crack6Pixels_.add(new Pixel(22-20,16,1,1));
  //rect(0,17,1,1);
  crack6Pixels_.add(new Pixel(0,17,1,1));
  //rect(1,17,1,1);
  crack6Pixels_.add(new Pixel(1,17,1,1));
  //rect(25-20,17,1,1);
  crack6Pixels_.add(new Pixel(25-20,17,1,1));
  //rect(26-20,17,1,1);
  crack6Pixels_.add(new Pixel(26-20,17,1,1));
  //rect(27-20,17,1,1);
  crack6Pixels_.add(new Pixel(27-20,17,1,1));
  //rect(26-20,18,1,1);
  crack6Pixels_.add(new Pixel(26-20,18,1,1));
  //rect(27-20,18,1,1);
  crack6Pixels_.add(new Pixel(27-20,18,1,1));
  //rect(28-20,19,1,1);
  crack6Pixels_.add(new Pixel(28-20,19,1,1));
  //rect(29-20,19,1,1);
  crack6Pixels_.add(new Pixel(29-20,19,1,1));
  
  crack7Pixels.add(new Pixel(22,2,1,1));
  crack7Pixels.add(new Pixel(22,3,1,1));
  crack7Pixels.add(new Pixel(23,1,1,1));
  
  //rect(22-18,1,1,1);
  crack7Pixels_.add(new Pixel(22-18,1,1,1));
  //rect(23-18,1,1,1);
  crack7Pixels_.add(new Pixel(23-18,1,1,1));
  //rect(20-18,2,1,1);
  crack7Pixels_.add(new Pixel(2,2,1,1));
  //rect(3,2,1,1);
  crack7Pixels_.add(new Pixel(3,2,1,1));
  //rect(2,3,1,1);
  crack7Pixels_.add(new Pixel(2,3,1,1));
  //rect(3,3,1,1);
  crack7Pixels_.add(new Pixel(3,3,1,1));
  
  //rect(26,4,1,1);
  crack8Pixels.add(new Pixel(26,4,1,1));
  //rect(25,3,1,1);
  crack8Pixels.add(new Pixel(25,3,1,1));
  //rect(25,2,1,1);
  crack8Pixels.add(new Pixel(25,2,1,1));
  //rect(24,3,1,1);
  crack8Pixels.add(new Pixel(24,3,1,1));
  //rect(23,4,1,1);
  crack8Pixels.add(new Pixel(23,4,1,1));
  //rect(23,5,1,1);
  crack8Pixels.add(new Pixel(23,5,1,1));
  //rect(23,6,1,1);
  crack8Pixels.add(new Pixel(23,6,1,1));
  
  //rect(26-17,4,1,1);
  crack8Pixels_.add(new Pixel(26-17,4,1,1));
  //rect(8,4,1,1);
  crack8Pixels_.add(new Pixel(8,4,1,1));
  //rect(23-17,3,1,1);
  crack8Pixels_.add(new Pixel(23-17,3,1,1));
  //rect(24-17,3,1,1);
  crack8Pixels_.add(new Pixel(24-17,3,1,1));
  //rect(22-17,4,1,1);
  crack8Pixels_.add(new Pixel(22-17,4,1,1));
  //rect(22-17,5,1,1);
  crack8Pixels_.add(new Pixel(22-17,5,1,1));
  //rect(22-17,6,1,1);
  crack8Pixels_.add(new Pixel(22-17,6,1,1));
  //rect(21-17,4,1,1);
  crack8Pixels_.add(new Pixel(21-17,4,1,1));
  //rect(21-17,5,1,1);
  crack8Pixels_.add(new Pixel(21-17,5,1,1));
  //rect(21-17,6,1,1);
  crack8Pixels_.add(new Pixel(21-17,6,1,1));
  
  //rect(25,8,1,1);
  crack9Pixels.add(new Pixel(25,8,1,1));
  //rect(26,9,1,1);
  crack9Pixels.add(new Pixel(26,9,1,1));
  //rect(24,7,1,1);
  crack9Pixels.add(new Pixel(24,7,1,1));
  //rect(24,9,1,1);
  crack9Pixels.add(new Pixel(24,9,1,1));
  //rect(24,10,1,1);
  crack9Pixels.add(new Pixel(24,10,1,1));
  //rect(23,11,1,1);
  crack9Pixels.add(new Pixel(23,11,1,1));
  //rect(22,12,1,1);
  crack9Pixels.add(new Pixel(22,12,1,1));
  
  //rect(8,9,1,1);
  crack9Pixels_.add(new Pixel(8,9,1,1));
  //rect(9,9,1,1);
  crack9Pixels_.add(new Pixel(9,9,1,1));
  //rect(6,8,1,1);
  crack9Pixels_.add(new Pixel(6,8,1,1));
  //rect(7,8,1,1);
  crack9Pixels_.add(new Pixel(7,8,1,1));
  //rect(6,7,1,1);
  crack9Pixels_.add(new Pixel(6,7,1,1));
  //rect(7,7,1,1);
  crack9Pixels_.add(new Pixel(7,7,1,1));
  //rect(4,9,1,1);
  crack9Pixels_.add(new Pixel(4,9,1,1));
  //rect(5,9,1,1);
  crack9Pixels_.add(new Pixel(5,9,1,1));
  //rect(4,10,1,1);
  crack9Pixels_.add(new Pixel(4,10,1,1));
  //rect(5,10,1,1);
  crack9Pixels_.add(new Pixel(5,10,1,1));
  //rect(4,11,1,1);
  crack9Pixels_.add(new Pixel(4,11,1,1));
  //rect(5,11,1,1);
  crack9Pixels_.add(new Pixel(5,11,1,1));
  //rect(2,12,1,1);
  crack9Pixels_.add(new Pixel(2,12,1,1));
  //rect(3,12,1,1);
  crack9Pixels_.add(new Pixel(3,12,1,1));
  
  //rect(39,3,1,1);
  crack10Pixels.add(new Pixel(39,3,1,1));
  //rect(38,4,1,1);
  crack10Pixels.add(new Pixel(38,4,1,1));
  //rect(38,5,1,1);
  crack10Pixels.add(new Pixel(38,5,1,1));
  //rect(37,6,1,1);
  crack10Pixels.add(new Pixel(37,6,1,1));
  //rect(38,7,1,1);
  crack10Pixels.add(new Pixel(38,7,1,1));
  //rect(38,8,1,1);
  crack10Pixels.add(new Pixel(38,8,1,1));
  //rect(37,9,1,1);
  crack10Pixels.add(new Pixel(37,9,1,1));
  
  rect(39-20,3,1,1);
  crack10Pixels_.add(new Pixel(39-20,3,1,1));
  rect(38-20,4,1,1);
  crack10Pixels_.add(new Pixel(38-20,4,1,1));
  rect(38-20,5,1,1);
  crack10Pixels_.add(new Pixel(38-20,5,1,1));
  rect(37-20,6,1,1);
  crack10Pixels_.add(new Pixel(37-20,6,1,1));
  rect(38-20,7,1,1);
  crack10Pixels_.add(new Pixel(38-20,7,1,1));
  rect(38-20,8,1,1);
  crack10Pixels_.add(new Pixel(38-20,8,1,1));
  rect(37-20,9,1,1);
  crack10Pixels_.add(new Pixel(37-20,9,1,1));
  
  crackColor = color(111, 13, 209);
  backgroundColor = color(0);
}

void draw() { //<>//
  aec.beginDraw();

  
  // DRAW CODE
  int x1 = mouseX / aec.getScaleX();
  int x2 = (frameCount / 3) % 75;
  
  background(0, 0,0);
  
  //println(x1);
  //rectMode(CENTER);

  noStroke(); 

  int step = 1;

  for (int y = 0; y < 30; y += step) {
    for (int x = 0; x < 75; x+= step) {
      fill(backgroundColor);
      rect(x, y, 1, step);
    }
  }

  for (Pixel crack : allCracks) {
    fill(crackColor);
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
  
  if (isActivated1){
    fill(crackColor);
  }
  else {
    fill(crackFill1);
    println("crack fill: " + crackFill1);
  }
  // trigger 1
  rect(34,3,1,1);
  
  if (isActivated2){
    fill(crackColor);
  }
  else {
    fill(crackFill2);
    println("crack fill: " + crackFill2);
  }
  // trigger 2
  rect(32,10,1,1);
  
  if (isActivated3){
    fill(crackColor);
  }
  else {
    fill(crackFill3);
    println("crack fill: " + crackFill3);
  }
  // trigger 3
  rect(31,20,1,1);
  
   if (isActivated4){
    fill(crackColor);
  }
  else {
    fill(crackFill4);
    println("crack fill: " + crackFill4);
  }
  // trigger 3
  rect(33,14,1,1);
  
  if (isActivated10){
    fill(crackColor);
  }
  else {
    fill(crackFill10);
    println("crack fill: " + crackFill10);
  }
  // trigger 10
  rect(39,3,1,1);
  
  pulse = pulse+speed;

  // the pulse anytime it reaches max/min to continue to cycle through
  if (pulse>=255 || pulse<=0) {
    speed=speed*-1;
  }
  
  // crack if
  if (crackFill1 == crackColor) {
    crackFill1 = crackColor;
  } else {
    crackFill1 = pulse; //<>//
  }
  if (crackFill2 == crackColor) {
    crackFill2 = crackColor;
  } else {
    crackFill2 = pulse;
  }
  if (crackFill3 == crackColor) {
    crackFill3 = crackColor;
  } else {
    crackFill3 = pulse;
  }
  if (crackFill4 == crackColor) {
    crackFill4 = crackColor;
  } else {
    crackFill4 = pulse;
  }
  if (crackFill10 == crackColor) {
    crackFill10 = crackColor;
  } else {
    crackFill10 = pulse;
  }
  
  
  println(mouseX/aec.getScaleX(),mouseY/aec.getScaleY());
  drawHuman();
  fill(color1);
  // crack 1
  if (mouseX/aec.getScaleX() == trigger1.x && mouseY/aec.getScaleY() == trigger1.y) {
    //drawCrackTop(); //<>//
    //drawCrackTop2();
    //drawCrack5_();
    //drawCrack9_();
    crackFill1 = crackColor;
    //drawCrack9();
    isActivated1 = true;
    isActivated1_ = true;
    isActivated5 = true;
    isActivated5_ = true;
    isActivated9 = true;
    isActivated9_ = true;
  } else if (mouseX/aec.getScaleX() == trigger2.x && mouseY/aec.getScaleY() == trigger2.y) {
    //drawCrack2();
    //sub side
    //drawCrack6();
    //drawCrack2_();
    //drawCrack6_();
    isActivated2 = true;
    isActivated2_ = true;
    isActivated6 = true;
    isActivated6_ = true;
  } else if (mouseX/aec.getScaleX() == trigger3.x && mouseY/aec.getScaleY() == trigger3.y) {
    //drawCrack3();
    //drawCrack3_();
    //drawCrack8_();
    //sub side
    //drawCrack8();
    isActivated3 = true;
    isActivated3_ = true;
    isActivated8 = true;
    isActivated8_ = true;
  //} else if (mouseX/aec.getScaleX() == trigger4.x && mouseY/aec.getScaleY() == trigger4.y) {
  //  drawCrack4();
  //  //sub side
  //  drawCrack7();
  //} else if (mouseX/aec.getScaleX() == trigger5.x && mouseY/aec.getScaleY() == trigger5.y) {
  //  isActivated5 = true;
  //} else if (mouseX/aec.getScaleX() == trigger6.x && mouseY/aec.getScaleY() == trigger6.y) {
  //  drawCrack6();
  //} else if (mouseX/aec.getScaleX() == trigger7.x && mouseY/aec.getScaleY() == trigger7.y) {
  //  drawCrack7();
  //} else if (mouseX/aec.getScaleX() == trigger8.x && mouseY/aec.getScaleY() == trigger8.y) {
  //  drawCrack8();
  //}  else if (mouseX/aec.getScaleX() == trigger9.x && mouseY/aec.getScaleY() == trigger9.y) {
  //  drawCrack9();
  } else if (mouseX/aec.getScaleX() == trigger4.x && mouseY/aec.getScaleY() == trigger4.y) {
    //drawCrack3();
    //drawCrack4_();
    //sub side
    //drawCrack8();
    isActivated4 = true;
    isActivated4_ = true;
  } else if (mouseX/aec.getScaleX() == trigger10.x && mouseY/aec.getScaleY() == trigger10.y) {
    //drawCrack10();
    //sub side
    //drawCrack4();
    //drawCrack4_();
    //drawCrack7();
    //rawCrack7_();
    //drawCrack10_();
    //isActivated4 = true;
    isActivated7 = true;
    isActivated7_ = true;
    isActivated10 = true;
    isActivated10_ = true;
  } 
  drawCrackTop();
  drawCrackTop2();
  drawCrack2();
  drawCrack2_();
  drawCrack3();
  drawCrack3_();
  drawCrack4();
  drawCrack4_();
  drawCrack5();
  drawCrack5_();
  drawCrack6();
  drawCrack6_();
  drawCrack7();
  drawCrack7_();
  drawCrack8();
  drawCrack8_();
  drawCrack9();
  drawCrack9_();
  drawCrack10();
  drawCrack10_();
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
  //drawCrackTop2();
  //drawCrack6_();
  //drawCrack8_();
  //drawCrack7_();
  //drawCrack5_();
  //drawCrack9_();
  aec.endDraw();
  aec.drawSides();
}

void keyPressed() {
  aec.keyPressed(key);
  if (key == 'c') {
    color1 = color(255,255,0);
    color2 = color(0,255,0);
    color3 = color(255, 28, 240);
  } else if (key == 'g') {
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
  } else if (key == 'm') {
    backgroundColor = color(0);
    crackColor = color(111, 13, 209);
  } else if (key == 'n') {
    backgroundColor = color(255, 151, 23);
  } else if (key == 'b') {
    backgroundColor = color(0,0,0);
  } else if (key == 'v') {
    backgroundColor = color(0);
    crackColor = color(100, 51, 0);
  } else if (key == 'x') {
    backgroundColor = color(100, 51, 0);
    crackColor = color(255);
  } else if (key == 'z') {
    backgroundColor = color(255);
    crackColor = color(0);
  }
}

void drawCrackTop() {
  fill(crackColor);
  //rect(34,2,1,1);
  //allCracks.add(new Pixel(34,2,1,1));
  //rect(34,3,1,1);
  //allCracks.add(new Pixel(34,3,1,1));
  //rect(33,4,1,1);
  //allCracks.add(new Pixel(33,4,1,1));
  //rect(32,5,1,1);
  //allCracks.add(new Pixel(32,5,1,1));
  //rect(33,6,1,1);
  //allCracks.add(new Pixel(33,6,1,1));
  //rect(34,7,1,1);
  //allCracks.add(new Pixel(34,7,1,1));
  //rect(32,7,1,1);
  //allCracks.add(new Pixel(32,7,1,1));
  //rect(31,8,1,1);
  //allCracks.add(new Pixel(31,8,1,1));
  //rect(31,9,1,1);
  //allCracks.add(new Pixel(31,9,1,1));
  //rect(30,10,1,1);
  //allCracks.add(new Pixel(30,10,1,1));
  
  if (isActivated1 && startTime1 == 0) {
    isDrawing1 = true;
    startTime1 = millis();
    isActivated1 = false;
  }
  int rectNum = crack1Pixels.size()-1;
  
  if(isDrawing1) {
      int currentTime = millis();
      if ((currentTime-startTime1)>200) {
            //println("hit");
            allCracks.add(crack1Pixels.get(counter1));
            counter1++;
            startTime1=millis();
      }
  }
  if(counter1 > rectNum) {
    isDrawing1 = false;
  }
}

void drawCrackTop2() {
  fill(crackColor);
  //rect(34-19,1,1,1);
  //allCracks.add(new Pixel(34-19,1,1,1));
  //rect(34-19,-2+2,1,1);
  //allCracks.add(new Pixel(34-19,0,1,1));
  //rect(34-20,2-2+2,1,1);
  //allCracks.add(new Pixel(34-20,2,1,1));
  //rect(34-20,3,1,1);
  //allCracks.add(new Pixel(34-20,3,1,1));
  //rect(33-20,4,1,1);
  //allCracks.add(new Pixel(33-20,4,1,1));
  //rect(32-20,5,1,1);
  //allCracks.add(new Pixel(32-20,5,1,1));
  //rect(33-20,6,1,1);
  //allCracks.add(new Pixel(33-20,6,1,1));
  //rect(34-20,7,1,1);
  //allCracks.add(new Pixel(34-20,7,1,1));
  //rect(32-20,7,1,1);
  //allCracks.add(new Pixel(32-20,7,1,1));
  //rect(31-20,8,1,1);
  //allCracks.add(new Pixel(31-20,8,1,1));
  //rect(31-20,9,1,1);
  //allCracks.add(new Pixel(31-20,9,1,1));
  //rect(30-20,10,1,1);
  //allCracks.add(new Pixel(30-20,10,1,1));
   if (isActivated1_ && startTime1_ == 0) {
    isDrawing1_ = true;
    startTime1_ = millis();
    isActivated1_ = false;
  }
  int rectNum = crack1Pixels_.size()-1;
  
  if(isDrawing1_) {
      int currentTime = millis();
      if ((currentTime-startTime1_)>200) {
            //println("hit");
            allCracks.add(crack1Pixels_.get(counter1_));
            counter1_++;
            startTime1_=millis();
      }
  }
  if(counter1_ > rectNum) {
    isDrawing1_ = false;
  }
}

void drawCrack2() {
  fill(crackColor);
  //rect(32,11,1,1);
  //allCracks.add(new Pixel(32,10,1,1));
  //rect(32,11,1,1);
  //allCracks.add(new Pixel(32,11,1,1));
  //rect(33,12,1,1);
  //allCracks.add(new Pixel(33,12,1,1));
  //rect(34,12,1,1);
  //allCracks.add(new Pixel(34,12,1,1));
  //rect(35,12,1,1);
  //allCracks.add(new Pixel(35,12,1,1));
  //rect(36,11,1,1);
  //allCracks.add(new Pixel(36,11,1,1));
  //rect(34,13,1,1);
  //allCracks.add(new Pixel(34,13,1,1)) ;
  //rect(35,14,1,1);
  //allCracks.add(new Pixel(35,14,1,1));
  //rect(36,14,1,1);
  //allCracks.add(new Pixel(36,14,1,1));
  //rect(37,15,1,1);
  //allCracks.add(new Pixel(37,15,1,1));
  //rect(38,15,1,1);
  //allCracks.add(new Pixel(38,15,1,1));
  
  if (isActivated2 && startTime2 == 0) {
    isDrawing2 = true;
    startTime2 = millis();
    isActivated2 = false;
  }
  int rectNum = crack2Pixels.size()-1;
  
  if(isDrawing2) {
      int currentTime = millis();
      if ((currentTime-startTime2)>200) {
            allCracks.add(crack2Pixels.get(counter2));
            counter2++;
            startTime2=millis();
      }
  }
  if(counter2 > rectNum) {
    isDrawing2 = false;
  }
}

void drawCrack2_() {
  fill(crackColor);
  //rect(32-20,11,1,1);
  //allCracks.add(new Pixel(32-20,10,1,1));
  //rect(32-20,11,1,1);
  //allCracks.add(new Pixel(32-20,11,1,1));
  //rect(33-20,12,1,1);
  //allCracks.add(new Pixel(33-20,12,1,1));
  //rect(34-20,12,1,1);
  //allCracks.add(new Pixel(34-20,12,1,1));
  //rect(35-20,12,1,1);
  //allCracks.add(new Pixel(35-20,12,1,1));
  //rect(36-20,11,1,1);
  //allCracks.add(new Pixel(36-20,11,1,1));
  //rect(34-20,13,1,1);
  //allCracks.add(new Pixel(34-20,13,1,1)) ;
  //rect(35-20,14,1,1);
  //allCracks.add(new Pixel(35-20,14,1,1));
  //rect(36-20,14,1,1);
  //allCracks.add(new Pixel(36-20,14,1,1));
  //rect(37-20,15,1,1);
  //allCracks.add(new Pixel(37-20,15,1,1));
  //rect(38-20,15,1,1);
  //allCracks.add(new Pixel(38-20,15,1,1));
  
  if (isActivated2_ && startTime2_ == 0) {
    isDrawing2_ = true;
    startTime2_ = millis();
    isActivated2_ = false;
  }
  int rectNum = crack2Pixels_.size()-1;
  
  if(isDrawing2_) {
      int currentTime = millis();
      if ((currentTime-startTime2_)>200) {
            allCracks.add(crack2Pixels_.get(counter2_));
            counter2_++;
            startTime2_=millis();
      }
  }
  if(counter2_ > rectNum) {
    isDrawing2_ = false;
  }
}

void drawCrack3() {
  fill(crackColor);
  
  //rect(31,20,1,1);
  //allCracks.add(new Pixel(31,20,1,1));
  //rect(30,21,1,1);
  //allCracks.add(new Pixel(30,21,1,1));
  //rect(32,19,1,1);
  //allCracks.add(new Pixel(32,19,1,1));
  //rect(33,19,1,1);
  //allCracks.add(new Pixel(33,19,1,1));
  //rect(32,21,1,1);
  //allCracks.add(new Pixel(32,21,1,1));
  //rect(32,22,1,1);
  //allCracks.add(new Pixel(32,22,1,1));
  //rect(33,23,1,1);
  //allCracks.add(new Pixel(33,23,1,1));
  if (isActivated3 && startTime3 == 0) {
    isDrawing3 = true;
    startTime3 = millis();
    isActivated3 = false;
  }
  int rectNum = crack3Pixels.size()-1;
  
  if(isDrawing3) {
      int currentTime = millis();
      if ((currentTime-startTime3)>200) {
            println("hit");
            allCracks.add(crack3Pixels.get(counter3));
            counter3++;
            startTime3=millis();
      }
  }
  if(counter3 > rectNum) {
    isDrawing3 = false;
  }
}

void drawCrack3_() {
  fill(crackColor);
  
  //rect(31-20,20,1,1);
  //allCracks.add(new Pixel(31-20,20,1,1));
  //rect(30-20,21,1,1);
  //allCracks.add(new Pixel(30-20,21,1,1));
  //rect(32-20,19,1,1);
  //allCracks.add(new Pixel(32-20,19,1,1));
  //rect(33-20,19,1,1);
  //allCracks.add(new Pixel(33-20,19,1,1));
  //rect(32-20,21,1,1);
  //allCracks.add(new Pixel(32-20,21,1,1));
  //rect(32-20,22,1,1);
  //allCracks.add(new Pixel(32-20,22,1,1));
  //rect(33-20,23,1,1);
  //allCracks.add(new Pixel(33-20,23,1,1));
  
  if (isActivated3_ && startTime3_ == 0) {
    isDrawing3_ = true;
    startTime3_ = millis();
    isActivated3_ = false;
  }
  int rectNum = crack3Pixels_.size()-1;
  
  if(isDrawing3_) {
      int currentTime = millis();
      if ((currentTime-startTime3_)>200) {
            println("hit");
            allCracks.add(crack3Pixels_.get(counter3_));
            counter3_++;
            startTime3_=millis();
      }
  }
  if(counter3_ > rectNum) {
    isDrawing3_ = false;
  }
}

void drawCrack4() {
  fill(crackColor);
  //rect(28,17,1,1);
  //allCracks.add(new Pixel(28,17,1,1));
  //rect(28,16,1,1);
  //allCracks.add(new Pixel(28,16,1,1));
  //rect(29,16,1,1);
  //allCracks.add(new Pixel(29,16,1,1));
  //rect(30,15,1,1);
  //allCracks.add(new Pixel(30,15,1,1));
  //rect(31,14,1,1);
  //allCracks.add(new Pixel(31,14,1,1));
  //rect(32,15,1,1);
  //allCracks.add(new Pixel(32,15,1,1));
  //rect(33,14,1,1);
  //allCracks.add(new Pixel(33,14,1,1));
  //rect(34,15,1,1);
  //allCracks.add(new Pixel(34,15,1,1));
  
  if (isActivated4 && startTime4 == 0) {
    isDrawing4 = true;
    startTime4 = millis();
    isActivated4 = false;
  }
  int rectNum = crack4Pixels.size()-1;
  
  if(isDrawing4) {
      int currentTime = millis();
      if ((currentTime-startTime4)>200) {
            println("hit");
            allCracks.add(crack4Pixels.get(counter4));
            counter4++;
            startTime4=millis();
      }
  }
  if(counter4 > rectNum) {
    isDrawing4 = false;
  }
}

void drawCrack4_() {
  fill(crackColor);
  //rect(28-20,17,1,1);
  //allCracks.add(new Pixel(28-20,17,1,1));
  //rect(28-20,16,1,1);
  //allCracks.add(new Pixel(28-20,16,1,1));
  //rect(29-20,16,1,1);
  //allCracks.add(new Pixel(29-20,16,1,1));
  //rect(30-20,15,1,1);
  //allCracks.add(new Pixel(30-20,15,1,1));
  //rect(31-20,14,1,1);
  //allCracks.add(new Pixel(31-20,14,1,1));
  //rect(32-20,15,1,1);
  //allCracks.add(new Pixel(32-20,15,1,1));
  //rect(33-20,14,1,1);
  //allCracks.add(new Pixel(33-20,14,1,1));
  //rect(34-20,15,1,1);
  //allCracks.add(new Pixel(34-20,15,1,1));
  
  if (isActivated4_ && startTime4_ == 0) {
    isDrawing4_ = true;
    startTime4_ = millis();
    isActivated4_ = false;
  }
  int rectNum = crack4Pixels_.size()-1;
  
  if(isDrawing4_) {
      int currentTime = millis();
      if ((currentTime-startTime4_)>200) {
            println("hit");
            allCracks.add(crack4Pixels_.get(counter4_));
            counter4_++;
            startTime4_=millis();
      }
  }
  if(counter4_ > rectNum) {
    isDrawing4_ = false;
  }
}

void drawCrack5() {
  fill(crackColor);
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

void drawCrack5_() {
  fill(crackColor);
  //rect(6,20,1,1);
  //allCracks.add(new Pixel(6,20,1,1));
  //rect(7,20,1,1);
  //allCracks.add(new Pixel(7,20,1,1));
  //rect(4,21,1,1);
  //allCracks.add(new Pixel(4,21,1,1));
  //rect(5,21,1,1);
  //allCracks.add(new Pixel(5,21,1,1));
  //rect(6,22,1,1);
  //allCracks.add(new Pixel(6,22,1,1));
  //rect(7,22,1,1);
  //allCracks.add(new Pixel(7,22,1,1));
  
  if (isActivated5_ && startTime5_ == 0) {
    isDrawing5_ = true;
    startTime5_ = millis();
    isActivated5_ = false;
  }
  int rectNum = crack5Pixels_.size()-1;
  
  if(isDrawing5_) {
      int currentTime = millis();
      if ((currentTime-startTime5_)>200) {
            println("hit");
            allCracks.add(crack5Pixels_.get(counter5_));
            counter5_++;
            startTime5_=millis();
      }
  }
  if(counter5_ > rectNum) {
    isDrawing5_ = false;
  }
}

void drawCrack6() {
  fill(crackColor);
  //rect(24,16,1,1);
  //allCracks.add(new Pixel(24,16,1,1));
  //rect(24,17,1,1);
  //allCracks.add(new Pixel(24,17,1,1));
  //rect(23,15,1,1);
  //allCracks.add(new Pixel(23,15,1,1));
  //rect(22,16,1,1);
  //allCracks.add(new Pixel(22,16,1,1));
  //rect(21,17,1,1);
  //allCracks.add(new Pixel(21,17,1,1));
  //rect(25,17,1,1);
  //allCracks.add(new Pixel(25,17,1,1));
  //rect(26,17,1,1);
  //allCracks.add(new Pixel(26,17,1,1));
  //rect(27,17,1,1);
  //allCracks.add(new Pixel(27,17,1,1));
  //rect(26,18,1,1);
  //allCracks.add(new Pixel(26,18,1,1));
  //rect(27,19,1,1);
  //allCracks.add(new Pixel(27,19,1,1));
  //rect(28,19,1,1);
  //allCracks.add(new Pixel(28,19,1,1));
  //rect(29,20,1,1);
  //allCracks.add(new Pixel(29,20,1,1));
  
  if (isActivated6 && startTime6 == 0) {
    isDrawing6 = true;
    startTime6 = millis();
    isActivated6 = false;
  }
  int rectNum = crack6Pixels.size()-1;
  
  if(isDrawing6) {
      int currentTime = millis();
      if ((currentTime-startTime6)>200) {
            println("hit");
            allCracks.add(crack6Pixels.get(counter6));
            counter6++;
            startTime6=millis();
      }
  }
  if(counter6 > rectNum) {
    isDrawing6 = false;
  }
}

void drawCrack6_() {
  fill(crackColor);
  
  //rect(24-20,16,2,1);
  //allCracks.add(new Pixel(24-20,16,1,1));
  //rect(24-20,17,1,1);
  //allCracks.add(new Pixel(24-20,17,1,1));
  //rect(2,15,1,1);
  //allCracks.add(new Pixel(22-20,15,1,1));
  //rect(3,15,1,1);
  //allCracks.add(new Pixel(23-20,15,1,1));
  //rect(23-20,16,1,1);
  //allCracks.add(new Pixel(23-20,16,1,1));
  //rect(22-20,16,1,1);
  //allCracks.add(new Pixel(22-20,16,1,1));
  //rect(0,17,1,1);
  //allCracks.add(new Pixel(0,17,1,1));
  //rect(1,17,1,1);
  //allCracks.add(new Pixel(1,17,1,1));
  //rect(25-20,17,1,1);
  //allCracks.add(new Pixel(25-20,17,1,1));
  //rect(26-20,17,1,1);
  //allCracks.add(new Pixel(26-20,17,1,1));
  //rect(27-20,17,1,1);
  //allCracks.add(new Pixel(27-20,17,1,1));
  //rect(26-20,18,1,1);
  //allCracks.add(new Pixel(26-20,18,1,1));
  //rect(27-20,18,1,1);
  //allCracks.add(new Pixel(27-20,18,1,1));
  //rect(28-20,19,1,1);
  //allCracks.add(new Pixel(28-20,19,1,1));
  //rect(29-20,19,1,1);
  //allCracks.add(new Pixel(29-20,19,1,1));
  
  if (isActivated6_ && startTime6_ == 0) {
    isDrawing6_ = true;
    startTime6_ = millis();
    isActivated6_ = false;
  }
  int rectNum = crack6Pixels_.size()-1;
  
  if(isDrawing6_) {
      int currentTime = millis();
      if ((currentTime-startTime6_)>200) {
            println("hit");
            allCracks.add(crack6Pixels_.get(counter6));
            counter6_++;
            startTime6_=millis();
      }
  }
  if(counter6_ > rectNum) {
    isDrawing6_ = false;
  }
}

void drawCrack7() {
  fill(crackColor);
  //rect(22,2,1,1);
  //allCracks.add(new Pixel(22,2,1,1));
  //rect(22,3,1,1);
  //allCracks.add(new Pixel(22,3,1,1));
  //rect(23,1,1,1);
  //allCracks.add(new Pixel(23,1,1,1));
  
  if (isActivated7 && startTime7 == 0) {
    isDrawing7 = true;
    startTime7 = millis();
    isActivated7 = false;
  }
  int rectNum = crack7Pixels.size()-1;
  
  if(isDrawing7) {
      int currentTime = millis();
      if ((currentTime-startTime7)>200) {
            println("hit");
            allCracks.add(crack7Pixels.get(counter7));
            counter7++;
            startTime7=millis();
      }
  }
  if(counter7 > rectNum) {
    isDrawing7 = false;
  }
}

void drawCrack7_() {
  fill(crackColor);
  //rect(22-18,1,1,1);
  //allCracks.add(new Pixel(22-18,1,1,1));
  //rect(23-18,1,1,1);
  //allCracks.add(new Pixel(23-18,1,1,1));
  //rect(20-18,2,1,1);
  //allCracks.add(new Pixel(2,2,1,1));
  //rect(3,2,1,1);
  //allCracks.add(new Pixel(3,2,1,1));
  //rect(2,3,1,1);
  //allCracks.add(new Pixel(2,3,1,1));
  //rect(3,3,1,1);
  //allCracks.add(new Pixel(3,3,1,1));
  
  if (isActivated7_ && startTime7_ == 0) {
    isDrawing7_ = true;
    startTime7_ = millis();
    isActivated7_ = false;
  }
  int rectNum = crack7Pixels_.size()-1;
  
  if(isDrawing7_) {
      int currentTime = millis();
      if ((currentTime-startTime7_)>200) {
            println("hit");
            allCracks.add(crack7Pixels_.get(counter7_));
            counter7_++;
            startTime7_=millis();
      }
  }
  if(counter7_ > rectNum) {
    isDrawing7_ = false;
  }
 
}

void drawCrack8() {
  fill(crackColor);
  //rect(26,4,1,1);
  //allCracks.add(new Pixel(26,4,1,1));
  //rect(25,3,1,1);
  //allCracks.add(new Pixel(25,3,1,1));
  //rect(25,2,1,1);
  //allCracks.add(new Pixel(25,2,1,1));
  //rect(24,3,1,1);
  //allCracks.add(new Pixel(24,3,1,1));
  //rect(23,4,1,1);
  //allCracks.add(new Pixel(23,4,1,1));
  //rect(23,5,1,1);
  //allCracks.add(new Pixel(23,5,1,1));
  //rect(23,6,1,1);
  //allCracks.add(new Pixel(23,6,1,1));
  
  if (isActivated8 && startTime8 == 0) {
    isDrawing8 = true;
    startTime8 = millis();
    isActivated8 = false;
  }
  int rectNum = crack8Pixels.size()-1;
  
  if(isDrawing8) {
      int currentTime = millis();
      if ((currentTime-startTime8)>200) {
            println("hit");
            allCracks.add(crack8Pixels.get(counter8));
            counter8++;
            startTime8=millis();
      }
  }
  if(counter8 > rectNum) {
    isDrawing8 = false;
  }
}

void drawCrack8_() {
  fill(crackColor);
  //rect(26-17,4,1,1);
  //allCracks.add(new Pixel(26-17,4,1,1));
  //rect(8,4,1,1);
  //allCracks.add(new Pixel(8,4,1,1));
  //rect(23-17,3,1,1);
  //allCracks.add(new Pixel(23-17,3,1,1));
  //rect(24-17,3,1,1);
  //allCracks.add(new Pixel(24-17,3,1,1));
  //rect(22-17,4,1,1);
  //allCracks.add(new Pixel(22-17,4,1,1));
  //rect(22-17,5,1,1);
  //allCracks.add(new Pixel(22-17,5,1,1));
  //rect(22-17,6,1,1);
  //allCracks.add(new Pixel(22-17,6,1,1));
  //rect(21-17,4,1,1);
  //allCracks.add(new Pixel(21-17,4,1,1));
  //rect(21-17,5,1,1);
  //allCracks.add(new Pixel(21-17,5,1,1));
  //rect(21-17,6,1,1);
  //allCracks.add(new Pixel(21-17,6,1,1));
  
  if (isActivated8_ && startTime8_ == 0) {
    isDrawing8_ = true;
    startTime8_ = millis();
    isActivated8_ = false;
  }
  int rectNum = crack8Pixels_.size()-1;
  
  if(isDrawing8_) {
      int currentTime = millis();
      if ((currentTime-startTime8_)>200) {
            println("hit");
            allCracks.add(crack8Pixels_.get(counter8_));
            counter8_++;
            startTime8_=millis();
      }
  }
  if(counter8_ > rectNum) {
    isDrawing8_ = false;
  }
}
void drawCrack9() {
  fill(crackColor);
  //rect(25,8,1,1);
  //allCracks.add(new Pixel(25,8,1,1));
  //rect(26,9,1,1);
  //allCracks.add(new Pixel(26,9,1,1));
  //rect(24,7,1,1);
  //allCracks.add(new Pixel(24,7,1,1));
  //rect(24,9,1,1);
  //allCracks.add(new Pixel(24,9,1,1));
  //rect(24,10,1,1);
  //allCracks.add(new Pixel(24,10,1,1));
  //rect(23,11,1,1);
  //allCracks.add(new Pixel(23,11,1,1));
  //rect(22,12,1,1);
  //allCracks.add(new Pixel(22,12,1,1));
  
  if (isActivated9 && startTime9 == 0) {
    isDrawing9 = true;
    startTime9 = millis();
    isActivated9 = false;
  }
  int rectNum = crack9Pixels.size()-1;
  if(isDrawing9) {
      int currentTime = millis();
      if ((currentTime-startTime9)>200) {
            println("hit");
            allCracks.add(crack9Pixels.get(counter9));
            counter9++;
            startTime9=millis();
      }
  }
  if(counter9 > rectNum) {
    isDrawing9 = false;
  }
}

void drawCrack9_() {
  fill(crackColor);
  //rect(8,9,1,1);
  //allCracks.add(new Pixel(8,9,1,1));
  //rect(9,9,1,1);
  //allCracks.add(new Pixel(9,9,1,1));
  //rect(6,8,1,1);
  //allCracks.add(new Pixel(6,8,1,1));
  //rect(7,8,1,1);
  //allCracks.add(new Pixel(7,8,1,1));
  //rect(6,7,1,1);
  //allCracks.add(new Pixel(6,7,1,1));
  //rect(7,7,1,1);
  //allCracks.add(new Pixel(7,7,1,1));
  //rect(4,9,1,1);
  //allCracks.add(new Pixel(4,9,1,1));
  //rect(5,9,1,1);
  //allCracks.add(new Pixel(5,9,1,1));
  //rect(4,10,1,1);
  //allCracks.add(new Pixel(4,10,1,1));
  //rect(5,10,1,1);
  //allCracks.add(new Pixel(5,10,1,1));
  //rect(4,11,1,1);
  //allCracks.add(new Pixel(4,11,1,1));
  //rect(5,11,1,1);
  //allCracks.add(new Pixel(5,11,1,1));
  //rect(2,12,1,1);
  //allCracks.add(new Pixel(2,12,1,1));
  //rect(3,12,1,1);
  //allCracks.add(new Pixel(3,12,1,1));
  
  if (isActivated9_ && startTime9_ == 0) {
    isDrawing9_ = true;
    startTime9_ = millis();
    isActivated9_ = false;
  }
  int rectNum = crack9Pixels_.size()-1;
  if(isDrawing9_) {
      int currentTime = millis();
      if ((currentTime-startTime9_)>200) {
            println("hit");
            allCracks.add(crack9Pixels_.get(counter9_));
            counter9_++;
            startTime9_=millis();
      }
  }
  if(counter9_ > rectNum) {
    isDrawing9_ = false;
  }
}


void drawCrack10() {
  fill(crackColor);
  //rect(39,3,1,1);
  //allCracks.add(new Pixel(39,3,1,1));
  //rect(38,4,1,1);
  //allCracks.add(new Pixel(38,4,1,1));
  //rect(38,5,1,1);
  //allCracks.add(new Pixel(38,5,1,1));
  //rect(37,6,1,1);
  //allCracks.add(new Pixel(37,6,1,1));
  //rect(38,7,1,1);
  //allCracks.add(new Pixel(38,7,1,1));
  //rect(38,8,1,1);
  //allCracks.add(new Pixel(38,8,1,1));
  //rect(37,9,1,1);
  //allCracks.add(new Pixel(37,9,1,1));
  
  if (isActivated10 && startTime10 == 0) {
    isDrawing10 = true;
    startTime10 = millis();
    isActivated10 = false;
  }
  int rectNum = crack10Pixels.size()-1;
  
  if(isDrawing10) {
      int currentTime = millis();
      if ((currentTime-startTime10)>200) {
            println("hit");
            allCracks.add(crack10Pixels.get(counter10));
            counter10++;
            startTime10=millis();
      }
  }
  if(counter10 > rectNum) {
    isDrawing10 = false;
  }
}

void drawCrack10_() {
  fill(crackColor);
  //rect(39-20,3,1,1);
  //allCracks.add(new Pixel(39-20,3,1,1));
  //rect(38-20,4,1,1);
  //allCracks.add(new Pixel(38-20,4,1,1));
  //rect(38-20,5,1,1);
  //allCracks.add(new Pixel(38-20,5,1,1));
  //rect(37-20,6,1,1);
  //allCracks.add(new Pixel(37-20,6,1,1));
  //rect(38-20,7,1,1);
  //allCracks.add(new Pixel(38-20,7,1,1));
  //rect(38-20,8,1,1);
  //allCracks.add(new Pixel(38-20,8,1,1));
  //rect(37-20,9,1,1);
  //allCracks.add(new Pixel(37-20,9,1,1));
  
  if (isActivated10_ && startTime10_ == 0) {
    isDrawing10_ = true;
    startTime10_ = millis();
    isActivated10_ = false;
  }
  int rectNum = crack10Pixels_.size()-1;
  
  if(isDrawing10_) {
      int currentTime = millis();
      if ((currentTime-startTime10_)>200) {
            println("hit");
            allCracks.add(crack10Pixels_.get(counter10_));
            counter10_++;
            startTime10_=millis();
      }
  }
  if(counter10_ > rectNum) {
    isDrawing10_ = false;
  }
}

void drawHuman() {
   
  fill(255, 255, 0);
  rect(mouseX/aec.getScaleX(), mouseY/aec.getScaleY(), 1, 1);
  rect(mouseX/aec.getScaleX(), mouseY/aec.getScaleY()+1, 1, 1);
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
