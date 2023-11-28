float[] x = new float [4];
float[] y = new float [4];
//
void board() {
  for (int i=0; i<4; i++ ) { //i stops for x, not y
    x[i] = appWidth*1.06+widthSquare*i;
    //println("Inside x", x[i]);
  } //End For
  for (int i=0; i<4; i++) {
    y[i] = appHeight*1/4+widthSquare*i;
    //println("Inside y", y[i]);
  }//End For
  
  for(int i=0; i<4; i++) {
    rect(x[i], y[i], widthSquare, heightSquare);
  }
}//end board
