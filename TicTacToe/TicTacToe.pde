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
int bestOf = 1;
boolean bestOfSelection = false;
boolean player2Selection = false;
boolean x1 = false, x2 = false, x3 = false, x4 = false, x5 = false, x6 = false, x7 = false, x8 = false, x9;
boolean o1 = false, o2 = false, o3 = false, o4 = false, o5 = false, o6 = false, o7 = false, o8 = false, o9;
boolean s1 = false, s2 = false, s3 = false, s4 = false, s5 = false, s6 = false, s7 = false, s8 = false, s9;
boolean xWin = false;
boolean oWin = false;
PImage x, o, crown, player, bot;
int turn = 1;
int oWins = 0;
int xWins = 0;
int AItype = 0;
boolean xMatchWin = false;
boolean oMatchWin = false;
//PImage o = loadImage("../TicTacToe Images/o.png");
//text variables
String restart = "RESTART";
String bestOfText = "Best Of: ";
String tie = "TIE!";
String winX = "X Wins!";
String winO = "O Wins!";
String player2;
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
  crown = loadImage("../TicTacToe Images/crown.png");
  player = loadImage("../TicTacToe Images/player.png");
  bot = loadImage("../TicTacToe Images/bot.png");
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
  println("Turn "+(turn)+" (X)");
  //
} //End setup
//
void draw() {
  //functions
  easyAI();
  //DIVs
  fill(#676767);
  rect(-2, -2, appWidth+4, appHeight+4); //bg
  fill(#B7B7B7);
  rect(gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight); //gameSpace
  fill(#FAFAFA);
  rect(restartX, restartY, restartWidth, restartHeight); //restart
  fill(#79C6FF);
  rect(appWidth*11/20, appHeight*1/20, teamWidth, teamHeight); //team icons
  fill(#F24C57);
  rect(appWidth*11/20, appHeight*16/20, teamWidth, teamHeight);
  fill(#FAFAFA);
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
  if (bestOf > 1)
  {
    rect(appWidth*1.35/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);//win dots
    rect(appWidth*2.3/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    if (bestOf > 3)
    {
    rect(appWidth*1.35/10, appHeight*7/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    rect(appWidth*2.3/10, appHeight*7/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    if (bestOf > 5)
    {
    rect(appWidth*1.35/10, appHeight*8.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    rect(appWidth*2.3/10, appHeight*8.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);
    }
    }
  }
  //win dot color
  if (bestOf == 1)
  {
    if (xWins>0) {fill(#79C6FF); rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);}
    if (oWins>0) {fill(#F24C57); rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);}
  }
  if (bestOf == 3)
  {
    if (xWins>0) {fill(#79C6FF); rect(appWidth*1.35/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (oWins>0) {fill(#F24C57); rect(appWidth*2.3/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (xWins>1) {fill(#79C6FF); rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);}
    if (oWins>1) {fill(#F24C57); rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);}
  }
  if (bestOf == 5)
  {
    if (xWins>0) {fill(#79C6FF); rect(appWidth*1.35/10, appHeight*7/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (oWins>0) {fill(#F24C57); rect(appWidth*2.3/10, appHeight*7/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (xWins>1) {fill(#79C6FF); rect(appWidth*1.35/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (oWins>1) {fill(#F24C57); rect(appWidth*2.3/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (xWins>2) {fill(#79C6FF); rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);}
    if (oWins>2) {fill(#F24C57); rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);}
  }
  if (bestOf == 7)
  {
    if (xWins>0) {fill(#79C6FF);rect(appWidth*1.35/10, appHeight*8.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (oWins>0) {fill(#F24C57); rect(appWidth*2.3/10, appHeight*8.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (xWins>1) {fill(#79C6FF); rect(appWidth*1.35/10, appHeight*7/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (oWins>1) {fill(#F24C57); rect(appWidth*2.3/10, appHeight*7/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (xWins>2) {fill(#79C6FF); rect(appWidth*1.35/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (oWins>2) {fill(#F24C57); rect(appWidth*2.3/10, appHeight*5.5/20+appHeight*1/5, appWidth*1/30, appWidth*1/30);}
    if (xWins>3) {fill(#79C6FF); rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);}
    if (oWins>3) {fill(#F24C57); rect(appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);}
  } 
  fill(#FAFAFA);
  rect(appWidth*6.7/10, appHeight*1/20, appWidth*1/6, appHeight*1/20); //player X title
  rect(appWidth*6.7/10, appHeight*16/20, appWidth*1/6, appHeight*1/20); //player O title
  rect(appWidth*6.7/10, appHeight*2.5/20, appWidth*1/7, appHeight*1/25); //team X
  rect(appWidth*6.7/10, appHeight*17.5/20, appWidth*1/7, appHeight*1/25); //team O
  //
  image(crown, appWidth*1.5/10, appHeight*1/3.5, appWidth*1/10, appWidth*1/10);
  image(x, appWidth*1/15, appHeight*1/3.2, appWidth*1/15, appWidth*1/15);
  image(o, appWidth*4/15, appHeight*1/3.2, appWidth*1/15, appWidth*1/15);
  image(player, appWidth*11/20+teamWidth*0.1, appHeight*1/20+teamWidth*0.1, teamWidth*0.8, teamHeight*0.8);
  if (AItype>0) image(bot, appWidth*11/20+teamWidth*0.12, appHeight*16/20+teamWidth*0.12, teamWidth*0.76, teamHeight*0.76);
  else image(player, appWidth*11/20+teamWidth*0.1, appHeight*16/20+teamWidth*0.1, teamWidth*0.8, teamHeight*0.8);
  //
  if ( bestOfSelection == true )
  {
    rect(restartX, smallDimension*0.5/5+restartHeight, restartWidth, restartHeight);
    rect(restartX, smallDimension*0.5/5+restartHeight*2, restartWidth, restartHeight);
    rect(restartX, smallDimension*0.5/5+restartHeight*3, restartWidth, restartHeight);
    rect(restartX, smallDimension*0.5/5+restartHeight*4, restartWidth, restartHeight);
  }
  //text
  textDrawMedium(black, CENTER, CENTER, font, restart, restartX, restartY-appHeight*1/100, restartWidth, restartHeight);
  textDrawMedSmall(black, CENTER, CENTER, font, bestOfText+String.valueOf(bestOf), restartX, smallDimension*0.5/5, restartWidth, restartHeight);
  textDrawTiny(black, CENTER, CENTER, font, "Team X", appWidth*6.7/10, appHeight*2.5/20, appWidth*1/7, appHeight*1/25);
  textDrawTiny(black, CENTER, CENTER, font, "Team O", appWidth*6.7/10, appHeight*17.5/20, appWidth*1/7, appHeight*1/25);
  textDrawSmall(black, CENTER, CENTER, font, "Player", appWidth*6.7/10, appHeight*1/20, appWidth*1/6, appHeight*1/20);
  if (AItype == 0) player2 = "Player";
  if (AItype == 1) player2 = "Bot (Easy)";
  if (AItype == 2) player2 = "Bot (Normal)";
  if (AItype == 3) player2 = "Bot (Hard)";
  if (AItype == 4) player2 = "Impossi-bot";
  textDrawSmall(black, CENTER, CENTER, font, player2, appWidth*6.7/10, appHeight*16/20, appWidth*1/6, appHeight*1/20);
  if (bestOfSelection == true)
  {
    textDrawMedSmall(black, CENTER, CENTER, font, "One", restartX, smallDimension*0.5/5+restartHeight, restartWidth, restartHeight);
    textDrawMedSmall(black, CENTER, CENTER, font, "Three", restartX, smallDimension*0.5/5+restartHeight*2, restartWidth, restartHeight);
    textDrawMedSmall(black, CENTER, CENTER, font, "Five", restartX, smallDimension*0.5/5+restartHeight*3, restartWidth, restartHeight);
    textDrawMedSmall(black, CENTER, CENTER, font, "Seven", restartX, smallDimension*0.5/5+restartHeight*4, restartWidth, restartHeight);
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
  fill(#C9C9C9);
  if ( player2Selection == true )
  {
    rect(appWidth*6.7/10, appHeight*16/20-appHeight*1/20, appWidth*1/6, appHeight*1/20);
    rect(appWidth*6.7/10, appHeight*16/20-appHeight*2/20, appWidth*1/6, appHeight*1/20);
    rect(appWidth*6.7/10, appHeight*16/20-appHeight*3/20, appWidth*1/6, appHeight*1/20);
    rect(appWidth*6.7/10, appHeight*16/20-appHeight*4/20, appWidth*1/6, appHeight*1/20);
    rect(appWidth*6.7/10, appHeight*16/20-appHeight*5/20, appWidth*1/6, appHeight*1/20);
  }
  fill(#FFFFFF);
  //
  if ( player2Selection == true )
  {
    textDrawSmall(black, CENTER, CENTER, font, "Impossible", appWidth*6.7/10, appHeight*16/20-appHeight*1/20, appWidth*1/6, appHeight*1/20);
    textDrawSmall(black, CENTER, CENTER, font, "Hard", appWidth*6.7/10, appHeight*16/20-appHeight*2/20, appWidth*1/6, appHeight*1/20);
    textDrawSmall(black, CENTER, CENTER, font, "Normal", appWidth*6.7/10, appHeight*16/20-appHeight*3/20, appWidth*1/6, appHeight*1/20);
    textDrawSmall(black, CENTER, CENTER, font, "Easy", appWidth*6.7/10, appHeight*16/20-appHeight*4/20, appWidth*1/6, appHeight*1/20);
    textDrawSmall(black, CENTER, CENTER, font, "Player", appWidth*6.7/10, appHeight*16/20-appHeight*5/20, appWidth*1/6, appHeight*1/20);
  }
  //
  //end game
  if (turn == 10 && xWin==false && oWin==false )
  {
    rect(appWidth/2-appWidth*1/10, appHeight/2-appHeight*1/10, appWidth*1/5, appHeight*1/5);
    textDrawLarge(black, CENTER, CENTER, font, tie, 0, 0, appWidth, appHeight);
  }
  //matchWin
  if (xWins > bestOf/2) xMatchWin=true;
  if (oWins > bestOf/2) oMatchWin=true;
  //x win
  if (xMatchWin==true)
  {
    rect(appWidth/2-appWidth*1/6, appHeight/2-appHeight*1/10, appWidth*1/3, appHeight*1/5);
    textDrawLarge(black, CENTER, CENTER, font, winX, 0, 0, appWidth, appHeight);
  }
  //o win
  if (oMatchWin==true)
  {
    rect(appWidth/2-appWidth*1/6, appHeight/2-appHeight*1/10, appWidth*1/3, appHeight*1/5);
    textDrawLarge(black, CENTER, CENTER, font, winO, 0, 0, appWidth, appHeight);
  }
} //End draw
//
void mousePressed() {
  if (bestOfSelection == true)
  {
    if (mouseX>restartX && mouseX<restartX+restartWidth && mouseY>smallDimension*0.5/5+restartHeight && mouseY<smallDimension*0.5/5+restartHeight*2) bestOf  = 1;
    if (mouseX>restartX && mouseX<restartX+restartWidth && mouseY>smallDimension*0.5/5+restartHeight*2 && mouseY<smallDimension*0.5/5+restartHeight*3) bestOf  = 3; 
    if (mouseX>restartX && mouseX<restartX+restartWidth && mouseY>smallDimension*0.5/5+restartHeight*3 && mouseY<smallDimension*0.5/5+restartHeight*4) bestOf  = 5; 
    if (mouseX>restartX && mouseX<restartX+restartWidth && mouseY>smallDimension*0.5/5+restartHeight*4 && mouseY<smallDimension*0.5/5+restartHeight*5) bestOf  = 7; 
    if (mouseX>restartX && mouseX<restartX+restartWidth && mouseY>smallDimension*0.5/5+restartHeight && mouseY<smallDimension*0.5/5+restartHeight*5)
    {
    xWin=false;
    oWin=false;
    x1 = false; x2 = false; x3 = false; x4 = false; x5 = false; x6 = false; x7 = false; x8 = false; x9 = false;
    o1 = false; o2 = false; o3 = false; o4 = false; o5 = false; o6 = false; o7 = false; o8 = false; o9 = false;
    s1 = false; s2 = false; s3 = false; s4 = false; s5 = false; s6 = false; s7 = false; s8 = false; s9 = false;
    xWins=0;
    oWins=0;
    turn = 1;
    }
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
  if (xMatchWin==true || oMatchWin==true)
  {
    xWin=false;
    oWin=false;
    xWins=0;
    oWins=0;
    xMatchWin=false;
    oMatchWin=false;
    x1 = false; x2 = false; x3 = false; x4 = false; x5 = false; x6 = false; x7 = false; x8 = false; x9 = false;
    o1 = false; o2 = false; o3 = false; o4 = false; o5 = false; o6 = false; o7 = false; o8 = false; o9 = false;
    s1 = false; s2 = false; s3 = false; s4 = false; s5 = false; s6 = false; s7 = false; s8 = false; s9 = false;
    turn = 1;
    println("Turn "+(turn)+" (X)");
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
    xWins=0;
    oWins=0;
    println("Turn "+(turn)+" (X)");
  }
  //
  if (player2Selection == true)
  {//appWidth*6.7/10, appHeight*16/20-appHeight*1/20, appWidth*1/6, appHeight*1/20
    if (mouseX>appWidth*6.7/10 && mouseX<appWidth*6.7/10+appWidth*1/6 && mouseY>appHeight*16/20-appHeight*1/20 && mouseY<appHeight*16/20-appHeight*1/20+appHeight*1/20) AItype  = 4;
    if (mouseX>appWidth*6.7/10 && mouseX<appWidth*6.7/10+appWidth*1/6 && mouseY>appHeight*16/20-appHeight*2/20 && mouseY<appHeight*16/20-appHeight*2/20+appHeight*1/20) AItype  = 3;
    if (mouseX>appWidth*6.7/10 && mouseX<appWidth*6.7/10+appWidth*1/6 && mouseY>appHeight*16/20-appHeight*3/20 && mouseY<appHeight*16/20-appHeight*3/20+appHeight*1/20) AItype  = 2;
    if (mouseX>appWidth*6.7/10 && mouseX<appWidth*6.7/10+appWidth*1/6 && mouseY>appHeight*16/20-appHeight*4/20 && mouseY<appHeight*16/20-appHeight*4/20+appHeight*1/20) AItype  = 1;
    if (mouseX>appWidth*6.7/10 && mouseX<appWidth*6.7/10+appWidth*1/6 && mouseY>appHeight*16/20-appHeight*5/20 && mouseY<appHeight*16/20-appHeight*5/20+appHeight*1/20) AItype  = 0;
    println("AI "+AItype);    
    if (mouseX>appWidth*6.7/10 && mouseX<appWidth*6.7/10+appWidth*1/6 && mouseY>appHeight*16/20-appHeight*5/20 && mouseY<appHeight*16/20-appHeight*1/20+appHeight*1/20)
    {
    xWin=false;
    oWin=false;
    x1 = false; x2 = false; x3 = false; x4 = false; x5 = false; x6 = false; x7 = false; x8 = false; x9 = false;
    o1 = false; o2 = false; o3 = false; o4 = false; o5 = false; o6 = false; o7 = false; o8 = false; o9 = false;
    s1 = false; s2 = false; s3 = false; s4 = false; s5 = false; s6 = false; s7 = false; s8 = false; s9 = false;
    xWins=0;
    oWins=0;
    turn = 1;
    }
  }
  //
  if (mouseX>=appWidth*6.7/10 && mouseX<=appWidth*6.7/10+appWidth*1/6 && mouseY>=appHeight*16/20 && mouseY<=appHeight*16/20+appHeight*1/20)
  {
    player2Selection=true;
  }
  else
  {
    player2Selection=false;
  }
  //
  suggestionsWinOrBlock();
  //
} //End mousePressed
//
void keyPressed() {
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
  if (xMatchWin==true || oMatchWin==true)
  {
    xWin=false;
    oWin=false;
    xWins=0;
    oWins=0;
    xMatchWin=false;
    oMatchWin=false;
    x1 = false; x2 = false; x3 = false; x4 = false; x5 = false; x6 = false; x7 = false; x8 = false; x9 = false;
    o1 = false; o2 = false; o3 = false; o4 = false; o5 = false; o6 = false; o7 = false; o8 = false; o9 = false;
    s1 = false; s2 = false; s3 = false; s4 = false; s5 = false; s6 = false; s7 = false; s8 = false; s9 = false;
    turn = 1;
  }
  //
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
if (AItype==0)
{
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
}
  //winning
  //x
  if (x1==true && x2==true && x3==true) {xWin=true; xWins++; println("X Wins: "+xWins);}
  if (x4==true && x5==true && x6==true) {xWin=true; xWins++; println("X Wins: "+xWins);}
  if (x7==true && x8==true && x9==true) {xWin=true; xWins++; println("X Wins: "+xWins);}
  if (x1==true && x4==true && x7==true) {xWin=true; xWins++; println("X Wins: "+xWins);}
  if (x2==true && x5==true && x8==true) {xWin=true; xWins++; println("X Wins: "+xWins);}
  if (x3==true && x6==true && x9==true) {xWin=true; xWins++; println("X Wins: "+xWins);}
  if (x1==true && x5==true && x9==true) {xWin=true; xWins++; println("X Wins: "+xWins);}
  if (x3==true && x5==true && x7==true) {xWin=true; xWins++; println("X Wins: "+xWins);}
  //o
  if (o1==true && o2==true && o3==true) {oWin=true; oWins++; println("O Wins: "+oWins);}
  if (o4==true && o5==true && o6==true) {oWin=true; oWins++; println("O Wins: "+oWins);}
  if (o7==true && o8==true && o9==true) {oWin=true; oWins++; println("O Wins: "+oWins);}
  if (o1==true && o4==true && o7==true) {oWin=true; oWins++; println("O Wins: "+oWins);}
  if (o2==true && o5==true && o8==true) {oWin=true; oWins++; println("O Wins: "+oWins);}
  if (o3==true && o6==true && o9==true) {oWin=true; oWins++; println("O Wins: "+oWins);}
  if (o1==true && o5==true && o9==true) {oWin=true; oWins++; println("O Wins: "+oWins);}
  if (o3==true && o5==true && o7==true) {oWin=true; oWins++; println("O Wins: "+oWins);}
//
//turn
if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9) println("Turn "+(turn)+" (X)");
if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Turn "+(turn)+" (O)");
//

suggestionsWinOrBlock();
//
}//End keyPressed
//End MAIN Program
