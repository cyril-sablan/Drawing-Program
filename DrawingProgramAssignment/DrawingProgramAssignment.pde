import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; 
int currentSong = numberOfSongs - numberOfSongs; //Current Song is 0

//

void setup () {
  println("start of console :)");
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("MusicDownload/The_Simplest.mp3");
  song[currentSong + 1] = minim.loadFile("MusicDownload/Newsroom.mp3");
  song[currentSong + 2] = minim.loadFile("MusicDownload/Music Program_FreeWare Music_MusicDownload_groove.mp3");
  //song1.play(); //put number in ms to start or leave empty


  //functions
  fullScreen();
  population();
  textSetup();
  noStroke();
  BGcolor = white;



  //drawing surface
  fill(BGcolor);
  rect(dsx, dsy, dsw, dsh);
  fill(white);

  //menuBase
  rect(mx, my, mw, mh);

  //rect(mw, displayHeight*0, displayWidth*2/10, displayHeight);

  stroke(reset);
}


void draw () {

  //==16unctions===
  quitButDraw();
  brButDraw();
  coButDraw();
  tbButDraw();
  backButDraw();
  tpButDraw();
  mpButDraw();
  noStroke();


  fill(gray);
  rect(mw+sideMenuW, displayHeight*0, displayWidth*2.1/64, displayHeight*1); 
  fill(white);


}

void mousePressed () {
  quitButMP();
  bbMP();
  tbMP();
  cbMP();
  brbMP();
  tpMP();
  mpMP();



  //draw func
  if (mouseX>dsx && mouseX<dsx+dsw && mouseY>dsy && mouseY<dsy+dsh) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
}


void keyPressed () {
}
