void shapeStamp(int clickedMode, int x, int y) {
  if (clickedMode == 1) {
    int [] xPlus = new int [] {0, 1, 2, 0, 1};
    int [] yPlus = new int [] {0, 0, 0, 1, 2};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
  if (clickedMode == 2) {
    int [] xPlus = new int [] {1, 4, 0, 0, 4, 0, 1, 2, 3};
    int [] yPlus = new int [] {0, 0, 1, 2, 2, 3, 3, 3, 3};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
  if (clickedMode == 3) {
    int [] xPlus = new int [] {3, 1, 5, 0, 0, 5, 0, 1, 2, 3, 4};
    int [] yPlus = new int [] {0, 1, 1, 2, 3, 3, 4, 4, 4, 4, 4};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
  if (clickedMode == 4) {
    int [] xPlus = new int [] {3, 4, 1, 6, 0, 0, 6, 6, 0, 1, 2, 3, 4, 5};
    int [] yPlus = new int [] {0, 0, 1, 1, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
  if (clickedMode == 5) {
    int [] xPlus = new int [] {0};
    int [] yPlus = new int [] {0};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
  if (clickedMode == 6) {
    int [] xPlus = new int [] {0, 1, 0, 1};
    int [] yPlus = new int [] {0, 0, 1, 1};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
  if (clickedMode == 7) {
    int [] xPlus = new int [] {1, 2, 0, 3, 1, 2};
    int [] yPlus = new int [] {0, 0, 1, 1, 2, 2};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
  if (clickedMode == 8) {
    int [] xPlus = new int [] {0, 1, 0, 2, 1};
    int [] yPlus = new int [] {0, 0, 1, 1, 2};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
  if (clickedMode == 9) {
    int [] xPlus = new int [] {1, 2, 0, 2, 0, 1};
    int [] yPlus = new int [] {0, 0, 1, 1, 2, 2};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  } 
  if (clickedMode == 10) {
    int [] xPlus = new int [] {1, 2, 0, 3, 0, 3, 1, 2};
    int [] yPlus = new int [] {0, 0, 1, 1, 2, 2, 3, 3};
    for (int i=0; i<xPlus.length; i++) {
      temp[x + xPlus[i]][y + yPlus[i]] = 1;
    }
  }
}
