void tpButDraw () {
  if(mouseX>=tpbx && mouseX<=tpbx+mbw && mouseY>=tpby && mouseY<=tpby+mbh) {
    noStroke();
    tpColor = blue;
    fill (tpColor);
    rect(tpbx, tpby, mbw, mbh);
    fill (white);
    stroke(reset);
   
    
  } else {
    noStroke();
    tpColor = gray;
    fill (tpColor);
    rect(tpbx, tpby, mbw, mbh);
    fill (white);
    stroke(reset);
  }
  
  textCode(tptxt, 10, tpbx, tpby, mbw, mbh);
  
  
  
  if (templButtonON == true) {
  noStroke();
      rect(tpmx, tpmy, sideMenuW , sideMenuH);
      
  

      rect(exSkullX, exY, exW, exH); 
      image(skull, exSkullX, exY, exW, exH);

      fill(Lgrey);
      rect(exDogX, exY, exW, exH); 
      image(dog, exDogX, exY, exW, exH);
      fill(white);

      rect(exFishX, exY, exW, exH);
      image(fish, exFishX, exY, exW, exH);

      
      
 fill(white);     
 stroke(reset); 
 }
 
 if (templButtonRESET == true) {
   noStroke();
   menuColor = gray;
   fill(menuColor);
      rect(tpmx, tpmy, sideMenuW , sideMenuH);
      fill(white);
      stroke(reset);
 }
 } 
 
void tpMP () {
  mandelaMP();
  DogMP();
  dragonMP();

  if (mouseX>tpbx && mouseX<tpbx+mbw && mouseY>tpby && mouseY<tpby+mbh) {
    if (templButtonON == false) {
      templButtonON = true;
      templButtonRESET = false;
    } else {
      templButtonON = false;
      templButtonRESET = true;
    }
}

}

void mandelaMP () {
  if (templButtonON == true && mouseX>exSkullX && mouseX<exSkullX+exW && mouseY>exY && mouseY<exY+exH) {
   image(skull, dsx, dsy, dsw, dsh);
  }
}
  
void DogMP () {
  if (templButtonON == true && mouseX>exDogX && mouseX<exDogX+exW && mouseY>exY && mouseY<exY+exH) {
   image(dog, dsx, dsy, dsw, dsh);
  }
}
  
void dragonMP () {
 if (templButtonON == true && mouseX>exFishX && mouseX<exFishX+exW && mouseY>exY && mouseY<exY+exH) {
  image(fish, dsx, dsy, dsw, dsh);
  }
}
