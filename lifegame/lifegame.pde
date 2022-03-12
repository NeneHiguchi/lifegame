int clickedMode, clickedModeTemp, hoverMode;
int special, specialTemp, hoverSpecial;
int specialWidth = 20;
int specialHeight = 50;
int cellWidth = 8; //cellは8*8
int cellHeight = 8;
int widthDisplay = 800;
int heightDisplay = 800;
int numCellX, numCellY;
int targetMouseX, targetMouseY;
int [][] cell;
int [][] temp;
boolean stop, stopHover;
int stopNum;
boolean edit, editHover, editBefore;
int editNum;
int [] buttonLeftX    = new int [] {0, 832, 912, 820, 910, 882, 832, 912, 835, 915, 870};
int [] buttonUpperY = new int [] {0, 180, 180, 280, 280, 380, 484, 480, 580, 580, 680};
int stopLeftX = 832;
int stopUpperY = 80;
int editLeftX = 912;
int editUpperY = 80;
int generationUpperY = 40;
int generationHeight = 20;
int stopEditWH = 56; //width & height
int [] buttonWidth   = new int [] {0, 56, 56, 64, 72, 40, 48, 64, 56, 56, 64};
int [] buttonHeight  = new int [] {0, 56, 56, 56, 56, 40, 48, 56, 56, 56, 64};
boolean generation, generationHover;

void setup() {
  clickedMode = 0;
  clickedModeTemp = 0;
  hoverMode = 0;
  stop = false;
  stopHover = false;
  stopNum = 0;
  edit = false;
  editBefore = false;
  editNum = 0;
  targetMouseX = 0;
  targetMouseY = 0;
  generation = false;
  generationHover = false;
  special = 1;
  specialTemp = 0;
  hoverSpecial = 0;
  
  
  size(1000, 808);

  numCellX = widthDisplay / cellWidth;
  numCellY = heightDisplay / cellHeight;

  cell = new int [numCellX + 2][numCellY + 2];
  temp = new int [numCellX + 2][numCellY + 2];

  int x=0;
  while ( x<numCellX+2 ) {
    int y=0;
    while ( y<numCellY+2 ) {
      if ( x == 0 || x == numCellX+1 || y == 0 || y == numCellY+1 ) {
        cell[x][y] = 0;
      } else {
        // 初期状態（ランダム）
        cell[x][y] = (int)random(2);
      }
      y++;
    }
    x++;
  }
  frameRate(10);
}

void draw() {
  background( 0 );

  stroke( 0 );
  for (int x=0; x<numCellX; x++) {
    for (int y=0; y<numCellY; y++) {
      if (cell[x][y]==0) {
        fill(0);
      } else {
        fill(0, 255, 0);
      }
      rect(x*8, y*8, 8, 8);
    }
  }

  //hover & button描画
  for (int i=1; i<buttonLeftX.length; i++) {
    if (mouseX>buttonLeftX[i] && mouseX<buttonLeftX[i]+buttonWidth[i] && mouseY>buttonUpperY[i] && mouseY<buttonUpperY[i]+buttonHeight[i]) {
      hoverMode = i;
    } else {
      hoverMode = 0;
    }
    button(clickedMode, hoverMode, buttonLeftX[i], buttonUpperY[i], buttonWidth[i], buttonHeight[i], i);
  }


  if (mouseX>stopLeftX && mouseX<stopLeftX+stopEditWH && mouseY>stopUpperY && mouseY<stopUpperY+stopEditWH) {
    stopHover = true;
  } else {
    stopHover = false;
  }
  if (mouseX>editLeftX && mouseX<editLeftX+stopEditWH && mouseY>editUpperY && mouseY<editUpperY+stopEditWH) {
    editHover = true;
  } else {
    editHover = false;
  }
  if (mouseX>stopLeftX && mouseX<stopLeftX+stopEditWH  && mouseY>generationUpperY && mouseY<generationUpperY+generationHeight) {
    generationHover = true;
  } else {
    generationHover = false;
  }


  if (mouseX>numCellX*cellWidth && mouseX<numCellX*cellWidth+specialWidth && mouseY>10 && mouseY<10+specialHeight) {
    hoverSpecial = 1;
  } else if (mouseX>numCellX*cellWidth && mouseX<numCellX*cellWidth+specialWidth && mouseY>heightDisplay-10-specialHeight && mouseY < heightDisplay-10) {
    hoverSpecial = 2;
  } else if (mouseX>numCellX*cellWidth && mouseX<numCellX*cellWidth+specialWidth && mouseY>heightDisplay-10-specialHeight*2 && mouseY<heightDisplay-10-specialHeight) {
    hoverSpecial = 3;
  } else if (mouseX>numCellX*cellWidth && mouseX<numCellX*cellWidth+specialWidth && mouseY>heightDisplay-10-specialHeight*3 && mouseY<heightDisplay-10-specialHeight*2) {
    hoverSpecial = 4;
  } else {
    hoverSpecial = 0;
  }

  specialButton(special, hoverSpecial);

  //生死判定
  if (stop == false || generation == true) {
    for (int x=1; x<numCellX; x++) {
      for (int y=1; y<numCellY; y++) {
        int count=0;
        if (cell[x-1][y-1]==1) {
          count++;
        }
        if (cell[x][y-1]==1) {
          count++;
        }
        if (cell[x+1][y-1]==1) {
          count++;
        }
        if (cell[x-1][y]==1) {
          count++;
        }
        if (cell[x+1][y]==1) {
          count++;
        }
        if (cell[x-1][y+1]==1) {
          count++;
        }
        if (cell[x][y+1]==1) {
          count++;
        }
        if (cell[x+1][y+1]==1) {
          count++;
        }
        if (count==3) {
          temp[x][y]=1;
        } else if (count==2) {
        } else {
          temp[x][y]=0;
        }
      }
    }
    generation = false;
  }
  //スタンプ
  for (int i=1; i<11; i++) {
    if (clickedMode == i && targetMouseX != 0) {
      shapeStamp(i, targetMouseX, targetMouseY);
    }
  }
  for (int x=0; x<numCellX + 2; x++) {
    for (int y=0; y<numCellY + 2; y++) {
      cell[x][y]=temp[x][y];
    }
  }

  stroke(255);
  line(numCellX * cellWidth, 0, numCellX * cellWidth, numCellY * cellHeight);

  stopButton(stopLeftX, stopUpperY, stopEditWH, stop, stopHover);
  editButton(editLeftX, editUpperY, stopEditWH, edit, editHover);
  generationButton(stopLeftX, generationUpperY, stopEditWH, generationHeight, generationHover);

  //枠
  noStroke();
  fill(150);
  rect(0, 0, widthDisplay+cellWidth, cellHeight);
  rect(widthDisplay, 0, cellWidth, heightDisplay+cellHeight);
  rect(0, heightDisplay, widthDisplay+cellWidth, cellHeight);
  rect(0, 0, cellWidth, heightDisplay+cellHeight);
}

void mouseReleased() {
  if (mouseX>stopLeftX && mouseX<stopLeftX+stopEditWH && mouseY>stopUpperY && mouseY<stopUpperY+stopEditWH) {
    stopNum ++;
  }
  if (stop == true && stopNum %2 == 0) {
    stop = false;
  } else if (stop == false && stopNum %2 == 1) {
    stop = true;
  }
  if (mouseX>editLeftX && mouseX<editLeftX+stopEditWH && mouseY>editUpperY && mouseY<editUpperY+stopEditWH) {
    editNum ++;
  }
  if (editNum %2 == 0) {
    editBefore = edit;
    edit = false;
    editNum = 0;
  } else {
    editBefore = edit;
    edit = true;
  }
  if (edit == true && edit != editBefore) {
    int x=0;
    while ( x<numCellX+2 ) {
      int y=0;
      while ( y<numCellY+2 ) {
        cell[x][y] = 0;
        y++;
      }
      x++;
    }
  } else if (edit == false && edit != editBefore) {
    int x=0;
    while ( x<numCellX+2 ) {
      int y=0;
      while ( y<numCellY+2 ) {
        // 初期状態（ランダム）
        cell[x][y] = (int)random(2);
        y++;
      }
      x++;
    }
  }

  if (mouseX > numCellX * cellWidth) {
    for (int i=1; i<buttonLeftX.length; i++) {
      if (mouseX>buttonLeftX[i] && mouseX<buttonLeftX[i]+buttonWidth[i] && mouseY>buttonUpperY[i] && mouseY<buttonUpperY[i]+buttonHeight[i]) {
        clickedModeTemp = i;
      }
    }
    //ボタン以外を押した時clickedModeを0にするため
    if (clickedMode ==clickedModeTemp) {
      clickedMode = 0;
      clickedModeTemp = 0;
    } else {
      clickedMode = clickedModeTemp;
    }
  }


  if (mouseX < numCellX * cellWidth) {
    int targetCellX = (int)(mouseX/cellWidth);
    int targetCellY = (int)(mouseY/cellHeight);

    if (clickedMode != 0) {
      targetMouseX = targetCellX;
      targetMouseY = targetCellY;
    }
  } else {
    targetMouseX = 0;
    targetMouseY = 0;
  }

  if (mouseX>stopLeftX && mouseX<stopLeftX+stopEditWH  && mouseY>generationUpperY && mouseY<generationUpperY+generationHeight) {
    generation = true;
  } else {
    generation = false;
  }

  if (mouseX>numCellX * cellWidth && mouseX<numCellX * cellWidth+specialWidth ) {
    if ( mouseY>10 && mouseY<10+specialHeight ) {
      special = 1;
    }
    if (mouseY>heightDisplay-10-specialHeight && mouseY < heightDisplay-10) {
      special = 2;
    }
    if (mouseY > heightDisplay-10-specialHeight*2 && mouseY<heightDisplay-10-specialHeight) {
      special = 3;
    }
    if (mouseY > heightDisplay-10-specialHeight*3 && mouseY<heightDisplay-10-specialHeight*2) {
      special = 4;
    }
  } else {
    special = 0;
  }

  shapeSpecial(special, hoverSpecial);
}
