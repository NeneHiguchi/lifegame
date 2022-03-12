void specialButton(int special, int hoverSpecial) {
  stroke(255);
  if (special == 0 || hoverSpecial == 0) {
  }
  if (special == 1 || hoverSpecial == 1) {
    fill(150);
  } else {
    fill(0);
  }
  rect(widthDisplay, 10, specialWidth, specialHeight);


  if (special == 2 || hoverSpecial == 2) {
    fill(150);
  } else {
    fill(0);
  }
  rect(widthDisplay, heightDisplay-10-specialHeight, specialWidth, specialHeight);

  if (special == 3 || hoverSpecial == 3) {
    fill(150);
  } else {
    fill(0);
  }
  rect(widthDisplay, heightDisplay-10-specialHeight*2, specialWidth, specialHeight);

  if (special == 4 || hoverSpecial == 4) {
    fill(150);
  } else {
    fill(0);
  }
  rect(widthDisplay, heightDisplay-10-specialHeight*3, specialWidth, specialHeight);
}


void shapeSpecial(int special, int hoverSpecial) {
  if (special == 1 && special == hoverSpecial) {
    int x=0;
    while ( x<numCellX+2 ) {
      int y=0;
      while ( y<numCellY+2 ) {
        cell[x][y] = (int)random(2);
        y++;
      }
      x++;
    }
  }

  if (special == 2 ) {
    stop = true;
    stopNum++;
    for (int i=0; i<numCellX+2; i++) {
      for (int j=0; j<numCellY+2; j++) {
        if (j == 50) {
          temp[i][50] = 1;
        } else if (i == 50) {
          temp[50][j] = 1;
        } else {
          temp[i][j] = 0;
        }
      }
    }
  }

  if (special == 3 ) {
    stop = true;
    stopNum++;
    int baseX = 50; 
    int baseY = 50;
    
        for (int i=0; i<numCellX+2; i++) {
      for (int j=0; j<numCellY+2; j++) {
        temp[i][j] = 0;
      }
        }
    
    for (int i=0; i<numCellX+2; i++) {
      for (int j=0; j<numCellY+2; j++) {
        for (baseX = 20; baseX<90; baseX = baseX+20) {
          for (baseY = 20; baseY<90; baseY = baseY+20) {
            if (i>=baseX-4 && i<=baseX+1 && j>=baseY-4 && j<=baseY-3) {
              temp[i][j] = 1;
            } else if (i>=baseX+3 && i<=baseX+4 && j>=baseY-4 && j<=baseY+1) {
              temp[i][j] = 1;
            } else if (i>=baseX-1 && i<=baseX+4 && j>=baseY+3 && j<=baseY+4) {
              temp[i][j] = 1;
            } else if (i>=baseX-4 && i<=baseX-3 && j>=baseY-1 && j<=baseY+4) {
              temp[i][j] = 1;
            } 
          }
        }
      }
    }
  }
  if (special == 4 ) {
    int baseX = 5;
    int baseY = 10;
    stop = true;
    stopNum++;
    for (int i=0; i<numCellX+2; i++) {
      for (int j=0; j<numCellY+2; j++) {
        if (i == baseX && j>=baseY && j<=baseY+1) {
          temp[i][j] = 1;
        } else if (i == baseX+1 && j>=baseY && j<=baseY+1) {
          temp[i][j] = 1;
        } else if (i == baseX+9 && j == baseY) {
          temp[i][j] = 1;
        } else if (i == baseX+10 && j>=baseY-1 && j<=baseY+1) {
          temp[i][j] = 1;
        } else if (i == baseX+11 && j>=baseY-2 && j<=baseY+2) {
          temp[i][j] = 1;
        } else if (i==baseX + 12 &&((j>=baseY-3 && j<=baseY-2) ||  (j>=baseY+2 && j<=baseY+3))) {
          temp[i][j] = 1;
        } else if (i == baseX+16 && j>=baseY-1 && j<=baseY+1) {
          temp[i][j] = 1;
        } else if (i == baseX+17 && j>=baseY-1 && j<=baseY+1) {
          temp[i][j] = 1;
        } else if (i == baseX + 19 && j == baseY-2) {
          temp[i][j] = 1;
        } else if (i == baseX + 20 && (j == baseY-3 || j == baseY-1)) {
          temp[i][j] = 1;
        } else if (i == baseX + 21 && (j == baseY-4 || j == baseY)) {
          temp[i][j] = 1;
        } else if (i == baseX + 22 && j >= baseY-3 && j<= baseY-1) {
          temp[i][j] = 1;
        } else if (i == baseX + 23 &&( (j >= baseY-5 && j<=baseY-4)|| (j>=baseY && j<=baseY+1))) {
          temp[i][j] = 1;
        } else if (i == baseX + 34 && j>=baseY-3 && j<=baseY-2) {
          temp[i][j] = 1;
        } else if (i == baseX + 35 &&j>=baseY-3 && j<=baseY-2) {
          temp[i][j] = 1;
        } else {
          temp[i][j] = 0;
        }
      }
    }
  }
}
