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
boolean o1 = false, o2 = false, o3 = false, o4 = false, o5 = false, o6 = false, o7 = false, o8 = false, o9;
boolean s1 = false, s2 = false, s3 = false, s4 = false, s5 = false, s6 = false, s7 = false, s8 = false, s9;
boolean xWin = false;
boolean oWin = false;
PImage x, o;
int turn = 1;
//PImage o = loadImage("../TicTacToe Images/o.png");
//text variables
String restart = "RESTART";
String bestOfText = "Best Of: ";
String tie = "TIE!";
String winX = "X Wins!";
String winO = "O Wins!";
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
  o = loadImage("../TicTacToe Images/o.png");
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
  fill(#8695A2);
  rect(-2, -2, appWidth+4, appHeight+4); //bg
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
  //
  if (o1 == true) image(o, appWidth*1.06/2, appHeight*1/4, appHeight*1/6, appHeight*1/6);
  if (o2 == true) image(o, appWidth*1.06/2+appHeight*1/6, appHeight*1/4, appHeight*1/6, appHeight*1/6);
  if (o3 == true) image(o, appWidth*1.06/2+appHeight*2/6, appHeight*1/4, appHeight*1/6, appHeight*1/6);
  if (o4 == true) image(o, appWidth*1.06/2, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
  if (o5 == true) image(o, appWidth*1.06/2+appHeight*1/6, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
  if (o6 == true) image(o, appWidth*1.06/2+appHeight*2/6, appHeight*1/4+appHeight*1/6, appHeight*1/6, appHeight*1/6);
  if (o7 == true) image(o, appWidth*1.06/2, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
  if (o8 == true) image(o, appWidth*1.06/2+appHeight*1/6, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
  if (o9 == true) image(o, appWidth*1.06/2+appHeight*2/6, appHeight*1/4+appHeight*2/6, appHeight*1/6, appHeight*1/6);
  //
  //end game
  if (turn == 10)
  {
    rect(appWidth/2-appWidth*1/10, appHeight/2-appHeight*1/10, appWidth*1/5, appHeight*1/5);
    textDrawLarge(black, CENTER, CENTER, font, tie, 0, 0, appWidth, appHeight);
  }
  //x win
  if (xWin==true)
  {
    rect(appWidth/2-appWidth*1/6, appHeight/2-appHeight*1/10, appWidth*1/3, appHeight*1/5);
    textDrawLarge(black, CENTER, CENTER, font, winX, 0, 0, appWidth, appHeight);
  }
  if (x1==true && x2==true && x3==true) xWin=true;
  if (x4==true && x5==true && x6==true) xWin=true;
  if (x7==true && x8==true && x9==true) xWin=true;
  if (x1==true && x4==true && x7==true) xWin=true;
  if (x2==true && x5==true && x8==true) xWin=true;
  if (x3==true && x6==true && x9==true) xWin=true;
  if (x1==true && x5==true && x9==true) xWin=true;
  if (x3==true && x5==true && x7==true) xWin=true;
  //o win
  if (oWin==true)
  {
    rect(appWidth/2-appWidth*1/6, appHeight/2-appHeight*1/10, appWidth*1/3, appHeight*1/5);
    textDrawLarge(black, CENTER, CENTER, font, winO, 0, 0, appWidth, appHeight);
  }
  if (o1==true && o2==true && o3==true) oWin=true;
  if (o4==true && o5==true && o6==true) oWin=true;
  if (o7==true && o8==true && o9==true) oWin=true;
  if (o1==true && o4==true && o7==true) oWin=true;
  if (o2==true && o5==true && o8==true) oWin=true;
  if (o3==true && o6==true && o9==true) oWin=true;
  if (o1==true && o5==true && o9==true) oWin=true;
  if (o3==true && o5==true && o7==true) oWin=true;
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
  //
  if (xWin==true || oWin==true || turn==10)
  {
    xWin=false;
    oWin=false;
    x1 = false; x2 = false; x3 = false; x4 = false; x5 = false; x6 = false; x7 = false; x8 = false; x9 = false;
    o1 = false; o2 = false; o3 = false; o4 = false; o5 = false; o6 = false; o7 = false; o8 = false; o9 = false;
    s1 = false; s2 = false; s3 = false; s4 = false; s5 = false; s6 = false; s7 = false; s8 = false; s9 = false;
    turn = 1;
  }
  //
  if (mouseX>=restartX && mouseX<=restartX+restartWidth && mouseY>=restartY && mouseY<=restartHeight+restartY)
  {
    xWin=false;
    oWin=false;
    x1 = false; x2 = false; x3 = false; x4 = false; x5 = false; x6 = false; x7 = false; x8 = false; x9 = false;
    o1 = false; o2 = false; o3 = false; o4 = false; o5 = false; o6 = false; o7 = false; o8 = false; o9 = false;
    s1 = false; s2 = false; s3 = false; s4 = false; s5 = false; s6 = false; s7 = false; s8 = false; s9 = false;
    turn = 1;
  }
  
} //End mousePressed
//
void keyPressed() {
//
println("s1: "+s1);
println("turn: "+turn);
if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9)
{
  if (s1 == false && (key=='Q' || key=='q'))
  {
    x1 = true;
    s1 = true;
    turn++;
  }
  if (s2 == false && (key=='W' || key=='w'))
  {
    x2 = true;
    s2 = true;
    turn++;
  }
  if (s3 == false && (key=='E' || key=='e'))
  {
    x3 = true;
    s3 = true;
    turn++;
  }
  if (s4 == false && (key=='A' || key=='a'))
  {
    x4 = true;
    s4 = true;
    turn++;
  }
  if (s5 == false && (key=='S' || key=='s'))
  {
    x5 = true;
    s5 = true;
    turn++;
  }
  if (s6 == false && (key=='D' || key=='d'))
  {
    x6 = true;
    s6 = true;
    turn++;
  }
  if (s7 == false && (key=='Z' || key=='z'))
  {
    x7 = true;
    s7 = true;
    turn++;
  }
  if (s8 == false && (key=='X' || key=='x'))
  {
    x8 = true;
    s8 = true;
    turn++;
  }
  if (s9 == false && (key=='C' || key=='c'))
  {
    x9 = true;
    s9 = true;
    turn++;
  }
}
  //o
  if (turn == 2 || turn == 4 || turn == 6 || turn == 8)
  {
  if (s1 == false && (key=='T' || key=='t'))
  {
    o1 = true;
    s1 = true;
    turn++;
  }
  if (s2 == false && (key=='Y' || key=='y'))
  {
    o2 = true;
    s2 = true;
    turn++;
  }
  if (s3 == false && (key=='U' || key=='u'))
  {
    o3 = true;
    s3 = true;
    turn++;
  }
  if (s4 == false && (key=='G' || key=='g'))
  {
    o4 = true;
    s4 = true;
    turn++;
  }
  if (s5 == false && (key=='H' || key=='h'))
  {
    o5 = true;
    s5 = true;
    turn++;
  }
  if (s6 == false && (key=='J' || key=='j'))
  {
    o6 = true;
    s6 = true;
    turn++;
  }
  if (s7 == false && (key=='B' || key=='b'))
  {
    o7 = true;
    s7 = true;
    turn++;
  }
  if (s8 == false && (key=='N' || key=='n'))
  {
    o8 = true;
    s8 = true;
    turn++;
  }
  if (s9 == false && (key=='M' || key=='m'))
  {
    o9 = true;
    s9 = true;
    turn++;
  }
  }
//
}//End keyPressed
//End MAIN Program
