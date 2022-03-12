void button(int clickedMode, int hoverMode, int buttonLeftX, int buttonUpperY, int buttonWidth, int buttonHeight, int mode) {
  stroke(255);
  buttonColor(clickedMode, hoverMode, mode);
  rect(buttonLeftX, buttonUpperY, buttonWidth, buttonHeight);
  shapeInButton(buttonLeftX, buttonUpperY, mode);
}

void buttonColor(int clickedMode, int hoverMode, int mode) {
  if (clickedMode == mode || hoverMode == mode) {
    fill(150);
  } else {
    fill(0);
  }
}

void stopButton(int x, int y, int wh, boolean stop, boolean stopHover) {
  stroke(255);
  if (stopHover == true) {
    fill(150);
  } else {
    fill(0);
  }
  rect(x, y, wh, wh);
  if (stop == true) {
    triangle(x+10, y+10, x+10, y+wh-10, x+wh-10, y+wh/2);
  } else {
    rect(x+10, y+10, 10, 35);
    rect(x+35, y+10, 10, 35);
  }
}

void editButton(int x, int y, int wh, boolean edit, boolean editHover) {
  stroke(255);
  if (edit == true || editHover == true) {
    fill(150);
  } else {
    fill(0);
  }
  rect(x, y, wh, wh);
  line(x+wh*2/3, y+5, x+wh-5, y+wh/3);
  line(x+wh*2/3-wh/3, y+5+wh/3+5, x+wh-5-wh/3, y+wh/3+wh/3+5);
  line(x+wh*2/3, y+5, x+wh*2/3-wh/3, y+5+wh/3+5);
  line(x+wh-5, y+wh/3,  x+wh-5-wh/3, y+wh/3+wh/3+5);
  
  line(x+wh*2/3-wh/3, y+5+wh/3+5, x+wh-5-wh/3, y+wh/3+wh/3+5);
  line(x+wh-5-wh/3, y+wh/3+wh/3+5, x+14, y+wh-8);
  line(x+14, y+wh-8, x+wh*2/3-wh/3, y+5+wh/3+5);
 
  fill(255);
  triangle(x+14, y+wh-8, x+18, y+wh-10, x+14, y+wh-12);
}

void generationButton(int x, int y, int w, int h, boolean generationHover){
  if(generationHover == true){
     fill(150);
  }else{
     fill(0);
  }
   rect(x, y, w, h);
   
   triangle(x+10, y+5, x+10, y+h-5, x+20, y+h/2);
   line(x+w/2-3, y+5, x+w/2+6, y+h-5);
   line(x+w/2-3, y+h-5, x+w/2+6, y+5);
   line(x+w-13, y+5, x+w-13, y+h-5);
}
