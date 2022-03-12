void shapeInButton(int buttonLeftX, int buttonUpperY, int mode) {
  int x;
  int y;

  if (mode == 1) {
    x = buttonLeftX + 16;//緑左上
    y = buttonUpperY + 16;//緑左上
    int [] xPlus = new int [] {0, 1, 2, 0, 1};
    int [] yPlus = new int [] {0, 0, 0, 1, 2};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 1);
    }
  }
  if (mode == 2) {
    x = buttonLeftX + 8;
    y = buttonUpperY + 16;
    int [] xPlus = new int [] {1, 4, 0, 0, 4, 0, 1, 2, 3};
    int [] yPlus = new int [] {0, 0, 1, 2, 2, 3, 3, 3, 3};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 2);
    }
  }
  if (mode == 3) {
    x = buttonLeftX + 8;
    y = buttonUpperY + 8;
    int [] xPlus = new int [] {3, 1, 5, 0, 0, 5, 0, 1, 2, 3, 4};
    int [] yPlus = new int [] {0, 1, 1, 2, 3, 3, 4, 4, 4, 4, 4};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 3);
    }
  }
  if (mode == 4) {
    x = buttonLeftX + 8;
    y = buttonUpperY + 8;
    int [] xPlus = new int [] {3, 4, 1, 6, 0, 0, 6, 6, 0, 1, 2, 3, 4, 5};
    int [] yPlus = new int [] {0, 0, 1, 1, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 4);
    }
  }
  if (mode == 5) {
    x = buttonLeftX + 16;
    y = buttonUpperY + 16;
    int [] xPlus = new int [] {0};
    int [] yPlus = new int [] {0};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 5);
    }
  }
  if (mode == 6) {
    x = buttonLeftX + 16;
    y = buttonUpperY + 16;
    int [] xPlus = new int [] {0, 1, 0, 1};
    int [] yPlus = new int [] {0, 0, 1, 1};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 6);
    }
  }
  if (mode == 7) {
    x = buttonLeftX + 16;
    y = buttonUpperY + 16;
    int [] xPlus = new int [] {1, 2, 0, 3, 1, 2};
    int [] yPlus = new int [] {0, 0, 1, 1, 2, 2};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 7);
    }
  }
  if (mode == 8) {
    x = buttonLeftX + 16;
    y = buttonUpperY + 16;
    int [] xPlus = new int [] {0, 1, 0, 2, 1};
    int [] yPlus = new int [] {0, 0, 1, 1, 2};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 8);
    }
  }
  if (mode == 9) {
    x = buttonLeftX + 16;
    y = buttonUpperY + 16;
    int [] xPlus = new int [] {1, 2, 0, 2, 0, 1};
    int [] yPlus = new int [] {0, 0, 1, 1, 2, 2};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 9);
    }
  }
  if (mode == 10) {
    x = buttonLeftX + 16;
    y = buttonUpperY + 16;
    int [] xPlus = new int [] {1, 2, 0, 3, 0, 3, 1, 2};
    int [] yPlus = new int [] {0, 0, 1, 1, 2, 2, 3, 3};
    for (int i=0; i<xPlus.length; i++) {
      shapeDraw(x, y, xPlus[i], yPlus[i], 10);
    }
  }
}

void shapeDraw(int x, int y, int xPlus, int yPlus, int mode) {
  stroke(0);
  fill(0, 255, 0);
  rect(x+cellWidth*xPlus, y+cellHeight*yPlus, cellWidth, cellHeight);
  if (clickedMode == mode) {
    if (mouseX < numCellX * cellWidth) {
      fill(255);
      stroke(0);
      rect(mouseX+cellWidth*xPlus, mouseY+cellHeight*yPlus, cellWidth, cellHeight);
    }
  }
}
