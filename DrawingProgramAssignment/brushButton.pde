void brButDraw () {
  if(mouseX>=brbx && mouseX<=brbx+mbw && mouseY>=brby && mouseY<=brby+mbh) {
    noStroke();
    brbColor = blue;
    fill (brbColor);
    rect(brbx, brby, mbw, mbh);
    fill (white);
    stroke(reset);
   
    
  } else {
    noStroke();
    brbColor = gray;
    fill (brbColor);
    rect(brbx, brby, mbw, mbh);
    fill (white);
    stroke(reset);
  }
  
  textCode(brbtxt, 10, brbx, brby, mbw, mbh);
  
  if (brushButtonON == true) {
  noStroke();
  fill(white);
    rect(brbmx, brbmy, sideMenuW , sideMenuH);
    
    rect(thinX, thinY, bruSelW, bruSelH);
    textCode(thintxt, 16, thinX, thinY, bruSelW, bruSelH); 

    fill(Lgrey);
    rect(medX, medY, bruSelW, bruSelH);
    textCode(medtxt, 16, medX, medY, bruSelW, bruSelH);

    fill(white);
    rect(thickX, thickY, bruSelW, bruSelH);
    textCode(thicktxt, 16, thickX, thickY, bruSelW, bruSelH);
    
    
 stroke(reset); }
 
 if (brushButtonRESET == true) {
   noStroke();
   menuColor = gray;
   fill(menuColor);
       rect(brbmx, brbmy, sideMenuW , sideMenuH);
      fill(white);
      stroke(reset);
 }
 
} 
void brbMP () {
  thinMP();
  medMP();
  thickMP();
  
  if (mouseX>brbx && mouseX<brbx+mbw && mouseY>brby && mouseY<brby+mbh) {
    if (brushButtonON == false) {
      brushButtonON = true;
      brushButtonRESET = false;
    } else {
      brushButtonON = false;
      brushButtonRESET = true;
    }
}

}

 void thinMP() {
   if(brushButtonON == true && mouseX>thinX && mouseX<thinX+bruSelW && mouseY>thinY && mouseY<thinY+bruSelH)
   drawStroke = 1;
   
 }
 
  void medMP() {
   if(brushButtonON == true && mouseX>medX && mouseX<medX+bruSelW && mouseY>medY && mouseY<medY+bruSelH)
   drawStroke = 5;
   
 }
 
   void thickMP() {
   if(brushButtonON == true && mouseX>thickX && mouseX<thickX+bruSelW && mouseY>thickY && mouseY<thickY+bruSelH)
   drawStroke = 9;
   
 }
