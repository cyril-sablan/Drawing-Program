//Global Variables
Boolean draw=false; 
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int reset=1; 
color white=255, resetColor= white, red=#FF0303, black=0, quitButtonColor;
String quitButtonString = "QUIT";
//
PFont font;
int initialFontSize=55;
int size; 
//
void setup() {
  //
  fullScreen(); //size, displayWidth, displayHeight 
  //
  population(); 
  quitButtonX = displayWidth*18/20; // 18/20 = 9/10
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*2/20; // 2/20 = 1/10
  quitButtonHeight = displayHeight*1/20;
  //
  font = createFont ("SimSun", initialFontSize);
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
void draw() {
  //Drawing Tools
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
  if ( draw==true  && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle Drawing tool
  //
  //Quit Button Hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColor = red;
  } else {
    quitButtonColor = black;
  }//End Quit Button Hoverover
  fill(quitButtonColor);
  noStroke(); //removes rect() outline  
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  stroke(reset); 
  fill(resetColor); //white, not night mode friendly
  //
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  //Values : {LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Paper-Button
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
  }//Button Paper (Drawing Surface)
  if (draw == false) {
    draw = true;
  } else {
    draw = false;
  }//End draw Boolean
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
}//End mousePressed
//
//End MAIN
