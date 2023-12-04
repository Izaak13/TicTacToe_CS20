/* To Do List
*/
//
//Global Variables
int appWidth, appHeight, smallDimension;
float gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight;
float bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight;
float topButtonX, topButtonY, topButtonWidth, topButtonHeight;
float restartX, restartY, restartWidth, restartHeight;
float teamWidth, teamHeight, widthSquare, heightSquare;
int bestOf;
boolean bestOfSelection = false;
boolean x1 = false, x2 = false, x3 = false, x4 = false, x5 = false, x6 = false, x7 = false, x8 = false, x9;
PImage x;
//PImage o = loadImage("../TicTacToe Images/o.png");
//text variables
String restart = "RESTART";
String bestOfText = "Best Of: ";
//
void setup() {
  //
  textSetup();
  //
  //Display
  size(600, 400);
  appWidth = width; //display width
  appHeight = height; //display height
  smallDimension = ( appWidth < appHeight ) ? appWidth : appHeight;
  widthSquare = appHeight*1/4;
  heightSquare = widthSquare;
  //
  x = loadImage("../TicTacToe Images/x.png");
  //population
  gameSpaceX = appWidth*0;
  gameSpaceY = appHeight*0;
  gameSpaceWidth = appWidth*2/5;
  gameSpaceHeight = appHeight;
  bottomButtonX = gameSpaceX;
  bottomButtonY = smallDimension*25/30; 
  bottomButtonWidth = appWidth;
  bottomButtonHeight = smallDimension*5/30;
  topButtonX = gameSpaceX;
  topButtonY = smallDimension*0;
  topButtonWidth = appWidth;
  topButtonHeight = smallDimension*7/30;
  restartX = appWidth*0.155/3;
  restartY = smallDimension*4/5;
  restartWidth = appWidth*0.9/3;
  restartHeight = smallDimension*3/30;
  teamWidth = appWidth*1/10;
  teamHeight = teamWidth;
  //
} //End setup
//
void draw() {
  //
  //DIVs
  fill(#FF8F1F);
  rect(gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight); //gameSpace
  fill(#FAE079);
  rect(restartX, restartY, restartWidth, restartHeight); //restart
  rect(appWidth*11/20, appHeight*1/20, teamWidth, teamHeight);
  rect(appWidth*11/20, appHeight*16/20, teamWidth, teamHeight);
  //rect(appWidth*1.06/2, appHeight*1/4, appHeight*1/2, appHeight*1/2); //board 
    rect(appWidth*1.06/2, appHeight*1/4, appHeight*1/6, appHeight*1/6);
    rect(appWidth*1.06/2+appHeight*1/6, appHeight*1/4, appHeight*1/6, appHeight*1/6);
    rect(appWidth*1.06/2+appHeight*2/6, appHeight*1/4, appHeight*1/6, appHeight*1/6);
    rect(appWidth*1.06/2, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
    rect(appWidth*1.06/2+appHeight*1/6, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
    rect(appWidth*1.06/2+appHeight*2/6, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
    rect(appWidth*1.06/2, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
    rect(appWidth*1.06/2+appHeight*1/6, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
    rect(appWidth*1.06/2+appHeight*2/6, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
  rect(restartX, smallDimension*0.5/5, restartWidth, restartHeight); //change match style
  rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10); //crown icon
    rect(appWidth*1.35/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);//win dots
    rect(appWidth*1.35/10, appHeight*7/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    rect(appWidth*1.35/10, appHeight*8.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    rect(appWidth*2.3/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    rect(appWidth*2.3/10, appHeight*7/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    rect(appWidth*2.3/10, appHeight*8.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
  rect(appWidth*6.7/10, appHeight*1/20, appWidth*1/6, appHeight*1/20); //player 1 title
  rect(appWidth*6.7/10, appHeight*16/20, appWidth*1/6, appHeight*1/20); //player 2 title
  rect(appWidth*6.7/10, appHeight*2.5/20, appWidth*1/7, appHeight*1/25); //player 1
  rect(appWidth*6.7/10, appHeight*17.5/20, appWidth*1/7, appHeight*1/25); //player 2
  //text
  textDrawMedium(black, CENTER, CENTER, font, restart, restartX, restartY-appHeight*1/100, restartWidth, restartHeight);
  textDrawMedSmall(black, CENTER, CENTER, font, bestOfText+String.valueOf(bestOf), restartX, smallDimension*0.5/5, restartWidth, restartHeight);
  //
  if ( bestOfSelection == true )
  {
    rect(restartX, smallDimension*0.5/5+restartHeight, restartWidth, restartHeight);
    rect(restartX, smallDimension*0.5/5+restartHeight*2, restartWidth, restartHeight);
    rect(restartX, smallDimension*0.5/5+restartHeight*3, restartWidth, restartHeight);
    rect(restartX, smallDimension*0.5/5+restartHeight*4, restartWidth, restartHeight);
  }
  //
  //gameplay
  if (x1 == true) image(x, appWidth*1.06/2, appHeight*1/4, appHeight*1/6, appHeight*1/6);
  if (x2 == true) image(x, appWidth*1.06/2+appHeight*1/6, appHeight*1/4, appHeight*1/6, appHeight*1/6);
  if (x3 == true) image(x, appWidth*1.06/2+appHeight*2/6, appHeight*1/4, appHeight*1/6, appHeight*1/6);
  if (x4 == true) image(x, appWidth*1.06/2, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
  if (x5 == true) image(x, appWidth*1.06/2+appHeight*1/6, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
  if (x6 == true) image(x, appWidth*1.06/2+appHeight*2/6, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
  if (x7 == true) image(x, appWidth*1.06/2, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
  if (x8 == true) image(x, appWidth*1.06/2+appHeight*1/6, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
  if (x9 == true) image(x, appWidth*1.06/2+appHeight*2/6, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
} //End draw
//
void mousePressed() {
  if (bestOfSelection == true)
  {
  }
  if ( mouseX>restartX && mouseX<restartX+restartWidth && mouseY>smallDimension*0.5/5 && mouseY<smallDimension*0.5/5+restartHeight)
  {
    bestOfSelection = true;
  }
  else
  {
    bestOfSelection = false;
  }
} //End mousePressed
//
void keyPressed() {
//
  if (key=='Q' || key=='q')
  {
    x1 = true;
  }
  if (key=='W' || key=='w')
  {
    x2 = true;
  }
  if (key=='E' || key=='e')
  {
    x3 = true;
  }
  if (key=='A' || key=='a')
  {
    x4 = true;
  }
  if (key=='S' || key=='s')
  {
    x5 = true;
  }
  if (key=='D' || key=='d')
  {
    x6 = true;
  }
  if (key=='Z' || key=='z')
  {
    x7 = true;
  }
  if (key=='X' || key=='x')
  {
    x8 = true;
  }
  if (key=='C' || key=='c')
  {
    x9 = true;
  }
//
}//End keyPressed
//End MAIN Program
