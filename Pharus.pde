// Version 4.1

float cursor_size = 25;
PFont font;
int scaleFactor = 3;
int windowWidth = 1200;   //3030/scaleFactor; // for real Deep Space this should be 3030
int windowHeight = 400; //3712/scaleFactor; // for real Deep Space this should be 3712
int wallHeight =  0; //1914/scaleFactor; // for real Deep Space this should be 1914 (Floor is 1798)

boolean ShowTrack = true;
boolean ShowPath = true;
boolean ShowFeet = true;

int show = 0xffff;


/*
void settings()
{
  size(windowWidth, windowHeight); 
  //fullScreen(P2D, SPAN);  
}
*/

void setupPharus()
{
  noStroke();
  fill(0);

  font = createFont("Arial", 18);
  textFont(font, 18);
  textAlign(CENTER, CENTER);
  windowWidth = width / aec.getScaleX(); 
  windowHeight = height /2 / aec.getScaleY();
  wallHeight = 0; //(height / 2) / aec.getScaleY();
  initTracking(false, wallHeight); //wallHeight);
}

void drawPharus() {
 
  // clear background with white
  //background(255);

  // set upper half of window (=wall projection) bluish
  noStroke();
  fill(70, 100, 150);
  rect(0, 0, windowWidth, wallHeight);
  fill(150);
  text((int)frameRate + " FPS", width / 2, 10);
  
  
  /*
  if (ShowPath)
  {
    // show the motion path of each track on the floor    
    for (int trackID=0; trackID<GetNumTracks (); trackID++) 
    {      
      stroke(70, 100, 150, 25);
      int numPoints = GetNumPathPoints (trackID);
      if (numPoints > 1)
      {      
        int maxDrawnPoints = 300;      
        int startX = GetPathPointX(trackID, numPoints - 1);
        int startY = GetPathPointY(trackID, numPoints - 1);
        for (int pointID = numPoints - 2; pointID > max(0, numPoints - maxDrawnPoints); pointID--) 
        {  
          int endX = GetPathPointX(trackID, pointID);
          int endY = GetPathPointY(trackID, pointID);
          line(startX, startY, endX, endY);
          startX = endX;
          startY = endY;
        }
      }
    }
  }
  */
      //println("num tracks: " + GetNumTracks());
      //if (GetNumTracks() == 0) {
      //  fill(255,255,0);
      //  //println("num tracks again: " + GetNumTracks());
      //  boolean ready1 = startCounter(4000);
      //  if (ready1) {
      //    println("hi");
      //    isActivated1 = true;
      //    isActivated1_ = true;
      //    isActivated5 = true;
      //    isActivated5_ = true;
      //    isActivated9 = true;
      //    isActivated9_ = true;
      //  }
      //  println("hello");
      //  ready1 = false;
      //  boolean ready2 = startCounter(4000);
      //  if (ready2) {
      //    isActivated2 = true;
      //    isActivated2_ = true;
      //    isActivated6 = true;
      //    isActivated6_ = true;
      //  }
      //  ready2 = false;
      //  boolean ready3 = startCounter(4000);
      //  if (ready3) {
      //    isActivated3 = true;
      //    isActivated3_ = true;
      //    isActivated8 = true;
      //    isActivated8_ = true;
      //  }
      //  ready3 = false;
      //  boolean ready4 = startCounter(1000);
      //  if (ready4) {
      //    isActivated4 = true;
      //    isActivated4_ = true;
      //  }
      //  ready4 = false;
      //  boolean ready10 = startCounter(4000);
      //  if (ready10) {
      //    isActivated7 = true;
      //    isActivated7_ = true;
      //    isActivated10 = true;
      //    isActivated10_ = true;
      //  }
      //  ready10 = false;
      //  drawCrackTop();
      //  drawCrackTop2();
      //  drawCrack2();
      //  drawCrack2_();
      //  drawCrack3();
      //  drawCrack3_();
      //  drawCrack4();
      //  drawCrack4_();
      //  drawCrack5();
      //  drawCrack5_();
      //  drawCrack6();
      //  drawCrack6_();
      //  drawCrack7();
      //  drawCrack7_();
      //  drawCrack8();
      //  drawCrack8_();
      //  drawCrack9();
      //  drawCrack9_();
      //  drawCrack10();
      //  drawCrack10_();
      //  delay(1000);
      //  drawExtra();
      //  boolean ready = startCounter(2000);
      ////int frame = frameCount;
      //  if (ready) {
      //  //flashColors(color(crackColor), color(255), 3);  
      //    stageFinished = true;
      //  }
      //} 
      // show each track with the corresponding  id number
      for (int trackID=0; trackID<GetNumTracks (); trackID++) {
        //noStroke();
        //fill(225);
        fill(255,255,0);
        
        int x = GetX(trackID);/// aec.getScaleX();
        int y = GetY(trackID);// / aec.getScaleY();
        x = int(map(x,0,1200,30,40));
        y = int(map(y,0,400,0,28));
        rect(x, y, 1 , 1);
        rect(x, y+1, 1 , 1);
        //rect(x+1, y, 1 , 1);
        //rect(x, y+1, 1 , 1);
        //rect(x, y-1, 1 , 1);
        //rect(x-1, y, 1 , 1);
    
  
        if (x == trigger1.x && y == trigger1.y) {
          //isActivated1 = true;
          //drawCrackTop();
          //crackFill1 = crackColor;
          ////drawCrack1();
          //drawCrack9();
          //isActivated5 = true;
          crackFill1 = crackColor;
          //drawCrack9();
          isActivated1 = true;
          isActivated1_ = true;
          isActivated5 = true;
          isActivated5_ = true;
          isActivated9 = true;
          isActivated9_ = true;
          //drawCrack1();
        } else if (x == trigger2.x && y == trigger2.y) {
          //drawCrack2();
          ////sub side
          //drawCrack6();
          //isActivated2 = true;
          isActivated2 = true;
          isActivated2_ = true;
          isActivated6 = true;
          isActivated6_ = true;
        } else if (x == trigger3.x && y == trigger3.y) {
          //drawCrack3();
          ////sub side
          //drawCrack8();
          //isActivated3 = true;
          isActivated3 = true;
          isActivated3_ = true;
          isActivated8 = true;
          isActivated8_ = true;
        } else if (x == trigger4.x && y == trigger4.y) {
          //drawCrack4();
          isActivated4 = true;
          isActivated4_ = true;
        } else if (x == trigger5.x && y == trigger5.y) {
          isActivated5 = true;
          //drawCrack5();
        } else if (x == trigger6.x && y == trigger6.y) {
          drawCrack6();
        } else if (x == trigger7.x && y == trigger7.y) {
          drawCrack7();
        } else if (x == trigger8.x && y == trigger8.y) {
          drawCrack8();
        }  else if (x == trigger9.x && y == trigger9.y) {
          drawCrack9();
        } else if (x == trigger10.x && y == trigger10.y) {
          //drawCrack10();
          ////sub side
          //drawCrack4();
          //drawCrack7();
          //isActivated10 = true;
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
    //if (extraDoneDrawing) {
    //  fillFacade(color(crackColor));
    //} 
  }
       // fill(255);
       // text(GetCursorID(trackID), GetX(trackID), GetY(trackID));
      
  }

/*
  if (ShowFeet)
  {
    // show the feet of each track
    for (int trackID=0; trackID<GetNumTracks (); trackID++) 
    { 
      // if we had used keys <0> .. <9> to deactivate the feet for this track, then we skip it here
      if (((int)pow(2, trackID) & show) != (int)pow(2, trackID))
      {
        continue;
      }
      stroke(70, 100, 150, 200);
      noFill();
      // paint all the feet that we can find for one character
      for (int footID=0; footID<GetNumFeet (trackID); footID++)
      {
        ellipse(GetFootX(trackID, footID), GetFootY(trackID, footID), cursor_size / 3, cursor_size / 3);
      }
    }
  }
  */


void keyPressedPharus()
{
  switch(key)
  {
  case 'p':
    ShowPath = !ShowPath;
    break;
  case 't':
    ShowTrack = !ShowTrack;
    break;
  case 'f':
    ShowFeet = !ShowFeet;
    break;
  }
  
  // use keys <0> .. <9> to toggle foot drawing of tracks 0 .. 9
  if (key >= '0' && key <= '9')
  {
    show = show ^ (int)pow(2, key - '0');
  }
}
