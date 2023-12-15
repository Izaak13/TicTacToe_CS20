PFont font;
color white=#FFFFFF, gray=#747473, black=#0A0A0A;//not night mode friendly
//
void textSetup() {
  //Fonts from OS
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choos, then createFont
  //
  font = createFont ("Tahoma", 389); //Verify font exists
  //Tools create Font / find font / DO NOT PRESS "OK", known bug
  //
}//End text setup
//
  void textDrawLarge( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill( ink ); //Ink, hexadecimal
  textAlign ( alignX, alignY ); //Align X&Y
  float size = appWidth*1/12;
  //println(size);
  textFont(font, size); //Change the number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill ( white ); //Default
  } //End textDraw
  
    void textDrawSmall( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill( ink ); //Ink, hexadecimal
  textAlign ( alignX, alignY ); //Align X&Y
  float size = appWidth*1/42;
  //println(size);
  textFont(font, size); //Change the number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill ( white ); //Default
  } //End textDraw
  
  void textDrawMedium( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill( ink ); //Ink, hexadecimal
  textAlign ( alignX, alignY ); //Align X&Y
  float size = appWidth*1/20;
  //println(size);
  textFont(font, size); //Change the number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill ( white ); //Default
  } //End textDraw
  
  void textDrawMedSmall( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill( ink ); //Ink, hexadecimal
  textAlign ( alignX, alignY ); //Align X&Y
  float size = appWidth*1/28;
  //println(size);
  textFont(font, size); //Change the number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill ( white ); //Default
  } //End textDraw
  
  void textDrawTiny( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill( ink ); //Ink, hexadecimal
  textAlign ( alignX, alignY ); //Align X&Y
  float size = appWidth*1/50;
  //println(size);
  textFont(font, size); //Change the number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill ( white ); //Default
  } //End textDraw
