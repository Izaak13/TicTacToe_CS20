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
  //Display, based on google tic tac toe
  size(600, 400);
  appWidth = width; //display width
  appHeight = height; //display height
  smallDimension = ( appWidth < appHeight ) ? appWidth : appHeight;
  //
  //population
  gameSpaceX = appWidth*0;
  gameSpaceY = smallDimension*7/30;
  gameSpaceWidth = appWidth;
  gameSpaceHeight = smallDimension*18/30;
  bottomButtonX = gameSpaceX;
  bottomButtonY = smallDimension*25/30; 
  bottomButtonWidth = appWidth;
  bottomButtonHeight = smallDimension*5/30;
  topButtonX = gameSpaceX;
  topButtonY = smallDimension*0;
  topButtonWidth = appWidth;
  topButtonHeight = smallDimension*7/30;
  restartX = appWidth*1/3;
  restartY = smallDimension*26/30;
  restartWidth = appWidth*1/3;
  restartHeight = smallDimension*3/30;
  teamWidth = appWidth*1/10;
  teamHeight = teamWidth;
  //
  //DIVs
  rect(gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight); //gameSpace
  rect(bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight); //bottomButtons: reset, quit
  rect(topButtonX, topButtonY, topButtonWidth, topButtonHeight); //topButtons:
  fill(#B9B6B6);
  rect(restartX, restartY, restartWidth, restartHeight);
  rect(appWidth*1/20, appHeight*9/20, teamWidth, teamHeight);
  rect(appWidth*17/20, appHeight*9/20, teamWidth, teamHeight);
  rect(appWidth*3/8, appHeight*1/3, appWidth*1/4, appWidth*1/4); //board
  rect(appWidth*3/8, appHeight*1/3, appWidth*1/4, appWidth*1/4); 
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
