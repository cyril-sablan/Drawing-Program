String shapes = "Shapes:", eraserSizes = "Eraser Sizes:", brushSizes = "Brush Sizes:", inkColour = "Ink Colours:";

//Eraser Sizes //Is no longer a dropdown menu because the canvas can't be placed in void draw
void eraserSizes() {
  border();
  rect(leftRowX, eraserSizesY, leftRowWidth, leftRowHeight);
  fill(darkBlue);
  rect(leftRowX, eraserSizesY, leftRowWidth, leftRowHeight*2/5);
  reset();
  eraserSizesText();
  if (mouseX>leftRowX && mouseX<leftRowX+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*1/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*1/5, leftRowChoicesWidth*1/5);
  } else {
    border();
    rect(leftRowX, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*1/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*1/5, leftRowChoicesWidth*1/5);
  }
  if (mouseX>leftRowX+leftRowWidth*1/5 && mouseX<leftRowX+leftRowWidth*1/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*1/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*3/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*2/5, leftRowChoicesWidth*2/5);
  } else {
    border();
    rect(leftRowX+leftRowWidth*1/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*3/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*2/5, leftRowChoicesWidth*2/5);
  }
  if (mouseX>leftRowX+leftRowWidth*2/5 && mouseX<leftRowX+leftRowWidth*2/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*2/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*5/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*3/5, leftRowChoicesWidth*3/5);
  } else {
    border();
    rect(leftRowX+leftRowWidth*2/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*5/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*3/5, leftRowChoicesWidth*3/5);
  }
  if (mouseX>leftRowX+leftRowWidth*3/5 && mouseX<leftRowX+leftRowWidth*3/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*3/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*7/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*4/5, leftRowChoicesWidth*4/5);
  } else {
    border();
    rect(leftRowX+leftRowWidth*3/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*7/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*4/5, leftRowChoicesWidth*4/5);
  }
  if (mouseX>leftRowX+leftRowWidth*4/5 && mouseX<leftRowX+leftRowWidth*4/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*4/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*9/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth, leftRowChoicesWidth);
  } else {
    border();
    rect(leftRowX+leftRowWidth*4/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*9/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth, leftRowChoicesWidth);
  }
}//End of Eraser Sizes


//Shape Choices
void shapes() {
  border();
  rect(leftRowX, shapesY, leftRowWidth, leftRowHeight);
  fill(darkBlue);
  rect(leftRowX, shapesY, leftRowWidth, leftRowHeight*2/5);
  reset();
  shapesButtonText();
  if (mouseX>leftRowX && mouseX<leftRowX+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    fill(lightGray);
    rect(leftRowX, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    ellipse(leftRowX+leftRowWidth/6, shapesY+leftRowHeight*7/10, leftRowHeight*4/10, leftRowHeight*4/10);
  } else {
    border();
    rect(leftRowX, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    ellipse(leftRowX+leftRowWidth/6, shapesY+leftRowHeight*7/10, leftRowHeight*4/10, leftRowHeight*4/10);
  }
  if (mouseX>(leftRowX+leftRowWidth*1/3) && mouseX<(leftRowX+leftRowWidth*1/3)+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    fill(lightGray);
    rect(leftRowX+leftRowWidth*1/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    rect(leftRowX+leftRowWidth*5/12, shapesY+leftRowHeight*19/40, leftRowWidth*1/6, leftRowWidth*1/6);
  } else {
    border();
    rect(leftRowX+leftRowWidth*1/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    rect(leftRowX+leftRowWidth*5/12, shapesY+leftRowHeight*19/40, leftRowWidth*1/6, leftRowWidth*1/6);
  }
  if (mouseX>(leftRowX+leftRowWidth*2/3) && mouseX<(leftRowX+leftRowWidth*2/3)+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    fill(lightGray);
    rect(leftRowX+leftRowWidth*2/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    triangle(leftRowX+leftRowWidth*9/12, shapesY+leftRowHeight*13/15, leftRowX+leftRowWidth*5/6, shapesY+leftRowHeight*7/15, leftRowX+leftRowWidth*11/12, shapesY+leftRowHeight*13/15);
  } else {
    border();
    rect(leftRowX+leftRowWidth*2/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    triangle(leftRowX+leftRowWidth*9/12, shapesY+leftRowHeight*13/15, leftRowX+leftRowWidth*5/6, shapesY+leftRowHeight*7/15, leftRowX+leftRowWidth*11/12, shapesY+leftRowHeight*13/15);
  }
}
void circles() {
  if (circle == true) {
    fill(ink);
    stroke(ink);
    ellipse(mouseX, mouseY, leftRowHeight*3/10, leftRowHeight*3/10); //you cannot change circle size
    reset();
  }
}
void squares() {
  if (square == true) {
    fill(ink);
    stroke(ink);
    rect(mouseX, mouseY, leftRowHeight*3/10, leftRowHeight*3/10);
    reset();
  }
}
void triangles() {
  if (triangle == true) {
    fill(ink);
    stroke(ink);
    triangle(mouseX-leftRowWidth*1/8, mouseY, mouseX, mouseY-leftRowHeight*1/2, mouseX+leftRowWidth*1/8, mouseY);
    reset();
  }
}//End of Shape Choices


//Brush Sizes
void brushSizes() {
  border();
  rect(leftRowX, brushSizesY, leftRowWidth, leftRowHeight);
  fill(darkBlue);
  rect(leftRowX, brushSizesY, leftRowWidth, leftRowHeight*2/5);
  reset();
  brushSizesText();
  if (mouseX>leftRowX && mouseX<leftRowX+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*1/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*1/15, leftRowChoicesWidth*1/15);
  } else {
    border();
    rect(leftRowX, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*1/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*1/15, leftRowChoicesWidth*1/15);
  }
  if (mouseX>leftRowX+leftRowWidth*1/5 && mouseX<leftRowX+leftRowWidth*1/5+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*1/5, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*3/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*4/15, leftRowChoicesWidth*4/15);
  } else {
    border();
    rect(leftRowX+leftRowWidth*1/5, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*3/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*4/15, leftRowChoicesWidth*4/15);
  }
  if (mouseX>leftRowX+leftRowWidth*2/5 && mouseX<leftRowX+leftRowWidth*2/5+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*2/5, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*5/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*7/15, leftRowChoicesWidth*7/15);
  } else {
    border();
    rect(leftRowX+leftRowWidth*2/5, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*5/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*7/15, leftRowChoicesWidth*7/15);
  }
  if (mouseX>leftRowX+leftRowWidth*3/5 && mouseX<leftRowX+leftRowWidth*3/5+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*3/5, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*7/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*10/15, leftRowChoicesWidth*10/15);
  } else {
    border();
    rect(leftRowX+leftRowWidth*3/5, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*7/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*10/15, leftRowChoicesWidth*10/15);
  }
  if (mouseX>leftRowX+leftRowWidth*4/5 && mouseX<leftRowX+leftRowWidth*4/5+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*4/5, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*9/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*13/15, leftRowChoicesWidth*13/15);
  } else {
    border();
    rect(leftRowX+leftRowWidth*4/5, brushSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*9/10, brushSizesY+leftRowHeight*7/10, leftRowChoicesWidth*13/15, leftRowChoicesWidth*13/15);
  }
}//End of Brush Sizes


//Ink Colours
void inkColours() {
  border();
  rect(leftRowX, inkColoursY, leftRowWidth, leftRowHeight);
  fill(darkBlue);
  rect(leftRowX, inkColoursY, leftRowWidth, leftRowHeight*2/5);
  reset();
  inkColourText();
  //Top Row
  rect(leftRowX, inkColoursY+leftRowHeight*2/5, colourChoicesWidth, colourChoicesHeight);
  fill(black);
  rect(leftRowX+colourChoicesWidth, inkColoursY+leftRowHeight*2/5, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(gray);
  rect(leftRowX+colourChoicesWidth*2, inkColoursY+leftRowHeight*2/5, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(red);
  rect(leftRowX+colourChoicesWidth*3, inkColoursY+leftRowHeight*2/5, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(orange);
  rect(leftRowX+colourChoicesWidth*4, inkColoursY+leftRowHeight*2/5, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(yellow);
  rect(leftRowX+colourChoicesWidth*5, inkColoursY+leftRowHeight*2/5, colourChoicesWidth, colourChoicesHeight);
  reset();
  //Bottom Row
  fill(lime);
  rect(leftRowX, inkColoursY+leftRowHeight*2/5+colourChoicesHeight, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(green);
  rect(leftRowX+colourChoicesWidth, inkColoursY+leftRowHeight*2/5+colourChoicesHeight, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(teal);
  rect(leftRowX+colourChoicesWidth*2, inkColoursY+leftRowHeight*2/5+colourChoicesHeight, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(blue2);
  rect(leftRowX+colourChoicesWidth*3, inkColoursY+leftRowHeight*2/5+colourChoicesHeight, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(purple);
  rect(leftRowX+colourChoicesWidth*4, inkColoursY+leftRowHeight*2/5+colourChoicesHeight, colourChoicesWidth, colourChoicesHeight);
  reset();
  fill(pink);
  rect(leftRowX+colourChoicesWidth*5, inkColoursY+leftRowHeight*2/5+colourChoicesHeight, colourChoicesWidth, colourChoicesHeight);
  reset();
  inkColourBorder();
}//End of Ink Colours
