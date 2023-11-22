/* To Do List
*/
//
//Global Variables
int appWidth, appHeight, smallDimension;
//
void setup() {
  //Display, based on google tic tac toe
  size(600, 400);
  appWidth = width; //display width
  appHeight = height; //display height
  smallDimension = ( appWidth < appHeight ) ? appWidth : appHeight;
  //
  //population
  //
  //DIVs
  rect(); //game space
  rect(); //Buttons (bottom): reset, quit
  rect(); //Buttons (top):
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
