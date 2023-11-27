/* To Do List
*/
//
//Global Variables
int appWidth, appHeight, smallDimension;
float gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight;
float bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight;
float topButtonX, topButtonY, topButtonWidth, topButtonHeight;
float restartX, restartY, restartWidth, restartHeight;
float teamWidth, teamHeight;
//
void setup() {
  //Display
  size(600, 400);
  appWidth = width; //display width
  appHeight = height; //display height
  smallDimension = ( appWidth < appHeight ) ? appWidth : appHeight;
  //
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
  //DIVs
  rect(gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight); //gameSpace
  fill(#B9B6B6);
  rect(restartX, restartY, restartWidth, restartHeight); //restart
  rect(appWidth*11/20, appHeight*1/20, teamWidth, teamHeight);
  rect(appWidth*11/20, appHeight*16/20, teamWidth, teamHeight);
  rect(appWidth*1.06/2, appHeight*1/4, appHeight*1/2, appHeight*1/2); //board 
  rect(restartX, smallDimension*3/5, restartWidth, restartHeight); //change match style
  rect(appWidth*1.5/10, appHeight*1/12, appWidth*1/10, appWidth*1/10); //crown icon
    rect(appWidth*1.35/10, appHeight*5.5/20, appWidth*1/30, appWidth*1/30);//win dots
    rect(appWidth*1.35/10, appHeight*7/20, appWidth*1/30, appWidth*1/30);
    rect(appWidth*1.35/10, appHeight*8.5/20, appWidth*1/30, appWidth*1/30);
    rect(appWidth*2.3/10, appHeight*5.5/20, appWidth*1/30, appWidth*1/30);
    rect(appWidth*2.3/10, appHeight*7/20, appWidth*1/30, appWidth*1/30);
    rect(appWidth*2.3/10, appHeight*8.5/20, appWidth*1/30, appWidth*1/30);
  rect(appWidth*6.7/10, appHeight*1/20, appWidth*1/6, appHeight*1/20); //player 1 title
  rect(appWidth*6.7/10, appHeight*16/20, appWidth*1/6, appHeight*1/20); //player 2 title
  rect(appWidth*6.7/10, appHeight*2.5/20, appWidth*1/7, appHeight*1/25); //player 1
  rect(appWidth*6.7/10, appHeight*17.5/20, appWidth*1/7, appHeight*1/25); //player 2
  //
} //End setup
//
void draw() {} //End setup
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {}//End keyPressed
//
//End MAIN Program
