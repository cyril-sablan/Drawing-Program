//Global Variables
Boolean draw=false; 
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//
void setup() {
  //
  fullScreen(); //size, displayWidth, displayHeight 
  //
  //Population
  drawingSurfaceX = displayWidth*0/4;
  drawingSurfaceY = displayHeight*0/5;
  drawingSurfaceWidth = displayWidth*3/4;
  drawingSurfaceHeight = displayHeight*4/5; 
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
void draw() {
  if ( draw==true ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
  }//Button Paper (Drawing Surface)
   if (draw == false) {
     draw = true;
   } else {
     draw = false;
   }//End draw Boolean 
}//End mousePressed
//
//End MAIN
