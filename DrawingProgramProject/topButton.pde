String restart= "Restart Canvas", eraserText= "Eraser", drawingToolsText= "Drawing Tools", template1Text= "Template 1", template2Text= "Template 2", canvasColourText= "Canvas Colour";


//Restart Canvas
void restartCanvas() {
  if (mouseX>restartX && mouseX<restartX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(restartX, topRowY, topRowWidth, topRowHeight);
    reset();
    restartButtonText();
  } else {
    border(); //found in canvas tab //the border that is used alot throughout the whole project
    fill(blue);
    rect(restartX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    restartButtonText();
    reset();
  }
} //End of Restart Canvas


//Template
void template() { 
  if (mouseX>templateX && mouseX<templateX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) { 
    fill(darkBlue);
    rect(templateX, topRowY, topRowWidth, topRowHeight);
    reset();
    template1Text();
  } else {
    border();
    fill(blue);
    rect(templateX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    template1Text();
    reset();
  }
  if (mouseX>template2X && mouseX<template2X+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) { 
    fill(darkBlue);
    rect(template2X, topRowY, topRowWidth, topRowHeight);
    reset();
    template2Text();
  } else {
    border();
    fill(blue);
    rect(template2X, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    template2Text();
    reset();
  }
  if (template1 == true && template2 == false) image(pic, imageX, imageY, imageWidth, imageHeight);
  if (template1 == false && template2 == true) image(pic2, imageX2, imageY2, imageWidth2, imageHeight2);
} //End of Template


//Eraser
void eraserButton() { 
  if (mouseX>eraserButtonX && mouseX<eraserButtonX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(eraserButtonX, topRowY, topRowWidth, topRowHeight);
    reset();
    eraserButtonText();
    reset();
  } else {
    border();
    fill(blue);
    rect(eraserButtonX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    eraserButtonText();
    reset();
  }
} 
void eraser() {
  if (eraser == true) {
    strokeWeight(eraserThickness);
    stroke(canvasColour);
    line(mouseX, mouseY, pmouseX, pmouseY);
    reset();
  }
} //End of Eraser


//Drawing Tools (Pen, Spray Paint, and hopefully Paint Bucket (flood fill)
void drawingTools() {
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(drawingToolsX, topRowY, topRowWidth, topRowHeight);
    reset();
    drawingToolsText();
  } else {
    border();
    fill(blue);
    rect(drawingToolsX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    drawingToolsText();
    reset();
  }
} //End of Drawing Tools


//Background Colour // Changes the colour of the canvas
void backgroundColour() {
  if (mouseX>backgroundColourX && mouseX<backgroundColourX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(backgroundColourX, topRowY, topRowWidth, topRowHeight);
    reset();
    canvasColourText();
  } else {
    border();
    fill(blue);
    rect(backgroundColourX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    canvasColourText();
    reset();
  }
}
