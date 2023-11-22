/* To Do List
*/
//
//Global Variables
int appWidth, appHeight, smallDimension;
float gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight;
float bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight;
float topButtonX, topButtonY, topButtonWidth, topButtonHeight;
float restartX, restartY, restartWidth, restartHeight;
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
  //
  //DIVs
  rect(gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight); //gameSpace
  rect(bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight); //bottomButtons: reset, quit
  rect(topButtonX, topButtonY, topButtonWidth, topButtonHeight); //topButtons:
  fill(#B9B6B6);
  rect(restartX, restartY, restartWidth, restartHeight);
  //rect(team1X, team1Y, team1Width, team1Height);
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
