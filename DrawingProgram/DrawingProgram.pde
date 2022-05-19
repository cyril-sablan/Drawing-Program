//Global Variables
Boolean draw=false; 
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
int reset=1; 
color white=255, resetColor= white, red=#FF0303, black=0, quitButtonColor;
//
void setup() {
  fullScreen(); //size, displayWidth, displayHeight 
  population(); 
  textSetup();
  pieceOfPaper();
  //
}//End setup
void draw() {
  //
  if ( paper==true ) pieceOfPaper(); 
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
  //second rectangle with more text
  fill(white);
  rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  fill(black); //ink 
  textAlign (CENTER, CENTER);
  //Values : {LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
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
  //
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) paper=true; 
  //
}//End mousePressed
//
//End MAIN
