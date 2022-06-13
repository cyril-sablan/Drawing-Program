void mpButDraw () {
  if(mouseX>=mpx && mouseX<=mpx+mpw && mouseY>=mpy && mouseY<=mpy+mph) {
    noStroke();
    mpColor = blue;
    fill (mpColor);
    rect(mpx, mpy, mpw, mph);
    fill (white);
    stroke(reset);
   
    
  } else {
    noStroke();
    mpColor = gray;
    fill (mpColor);
    rect(mpx, mpy, mpw, mph);
    fill (white);
    stroke(reset);
  }
  
  textCode(mptxt, 13, mpx, mpy, mpw, mph);
  
  if (musicButtonON == true) {
  noStroke();
  rect(mpmx, mpmy, mpmw, mpmh);
  
  image(play, pauseplayX, pauseplayY, pauseplayD, pauseplayD);
  
  image(next, nextX, nextY, skipW, skipH);
  
  image(previous, prevX, prevY, skipW, skipH);
  
  image(loop, loopX, loopY, skipW, skipH);
  
  image(power, powerX, powerY, skipW, skipH);

    
   fill(white);   
 stroke(reset); }

 
 if (pauseON == true) {
  noStroke(); 
  fill(white);
  rect(pauseplayX, pauseplayY, pauseplayD, pauseplayD);
  
  image(pause, pauseplayX, pauseplayY, pauseplayD, pauseplayD);
   
 fill(white);
 stroke(reset);}
 
 if (playON == true) {
  noStroke(); 
  fill(white);
  rect(pauseplayX, pauseplayY, pauseplayD, pauseplayD);
  
  image(play, pauseplayX, pauseplayY, pauseplayD, pauseplayD);
   
 fill(white);
 stroke(reset);}
 
  
 if (musicButtonRESET == true) {
   noStroke();
   menuColor = gray;
   fill(menuColor);
       rect(mpmx, mpmy, mpmw, mpmh);
      fill(white);
      stroke(reset);
 }
 
} 
void mpMP () {
  playpauseMP();
  FFMP();
  FBMP();
  powerMP();
  loopMP();


  if (mouseX>mpx && mouseX<mpx+mpw && mouseY>mpy && mouseY<mpy+mph) {
    if (musicButtonON == false) {
      musicButtonON = true;
      musicButtonRESET = false;
    } else {
      musicButtonON = false;
      musicButtonRESET = true;
    }
}

}

void playpauseMP() {
  
  if (mouseX>pauseplayX && mouseX<pauseplayX+pauseplayD && mouseY>pauseplayY && mouseY<pauseplayY+pauseplayD) {
    if (pauseON == false) {
      pauseON = true;
      playON = false;
    } else {
      pauseON = false;
      playON = true;
    }
    
     if (playON == true) 
     song[currentSong].loop(0); 
     
     if ( pauseON == true && song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
}}

void FFMP() {
  if (mouseX>nextX && mouseX<nextX+skipW && mouseY>nextY && mouseY<nextY+skipH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      
      arrayFixError();
      
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      arrayFixError();
    }
  }
}

void FBMP () {
  if (mouseX>prevX && mouseX<prevX+skipW && mouseY>prevY && mouseY<prevY+skipH) {
      if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      //
      arrayFixError2();
      //
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      arrayFixError2();
    }
    
    
  }
}


void powerMP() {
if (mouseX>powerX && mouseX<powerX+skipW && mouseY>powerY && mouseY<powerY+skipH) {
    if ( song[currentSong].isPlaying() ) {
  song[currentSong].pause();
  song[currentSong].rewind();
  } else {
  song[currentSong].rewind();
  }
  
}
}

void loopMP() {
  if (mouseX>loopX && mouseX<loopX+skipW && mouseY>loopY && mouseY<loopY+skipH) {
    textCode(looptxt, 19, dsx, displayHeight*0, dsw, sideMenuH); 
    
    String keystr = String.valueOf(key);
  int num = int (keystr);
  if ( num > 0 && num < 9 )
  
    song[currentSong].loop(num);
    loopCount = num;
    
    
  }
}
