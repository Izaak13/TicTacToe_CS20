void suggestionsWinOrBlock()
{
  //x horizontal
  if (x1==true && x2==true && s3==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 3 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 3 To Block");
  }
  if (x1==true && x3==true && s2==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 2 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 2 To Block");
  }
  if (x2==true && x3==true && s1==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 1 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 1 To Block");
  }
  if (x4==true && x5==true && s6==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 6 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 6 To Block");
  }
  if (x4==true && x6==true && s5==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 5 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 5 To Block");
  }
  if (x5==true && x6==true && s4==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 4 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 4 To Block");
  }
  if (x7==true && x8==true && s9==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 9 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 9 To Block");
  }
  if (x7==true && x9==true && s8==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 8 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 8 To Block");
  }
  if (x8==true && x9==true && s7==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 7 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 7 To Block");
  }
  //x vertical
  if (x1==true && x4==true && s7==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 7 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 7 To Block");
  }
  if (x1==true && x7==true && s4==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 4 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 4 To Block");
  }
  if (x4==true && x7==true && s1==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 1 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 1 To Block");
  }
  if (x2==true && x5==true && s8==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 8 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 8 To Block");
  }
  if (x2==true && x8==true && s5==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 5 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 5 To Block");
  }
  if (x5==true && x8==true && s2==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 2 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 2 To Block");
  }
  if (x3==true && x6==true && s9==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 9 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 9 To Block");
  }
  if (x3==true && x9==true && s6==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 6 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 6 To Block");
  }
  if (x6==true && x9==true && s3==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 3 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 3 To Block");
  }
  //x diagonal
  if (x1==true && x5==true && s9==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 9 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 9 To Block");
  }
  if (x1==true && x9==true && s5==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 5 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 5 To Block");
  }
  if (x5==true && x9==true && s1==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 1 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 1 To Block");
  }
  if (x3==true && x5==true && s7==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 7 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 7 To Block");
  }
  if (x3==true && x7==true && s5==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 5 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 5 To Block");
  }
  if (x5==true && x7==true && s3==false)
  {
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 3 For Win");
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 3 To Block");
  }
  //
  //
  //o horizontal
  if (o1==true && o2==true && s3==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 3 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 3 To Block");
  }
  if (o1==true && o3==true && s2==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 2 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 2 To Block");
  }
  if (o2==true && o3==true && s1==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 1 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 1 To Block");
  }
  if (o4==true && o5==true && s6==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 6 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 6 To Block");
  }
  if (o4==true && o6==true && s5==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 5 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 5 To Block");
  }
  if (o5==true && o6==true && s4==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 4 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 4 To Block");
  }
  if (o7==true && o8==true && s9==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 9 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 9 To Block");
  }
  if (o7==true && o9==true && s8==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 8 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 8 To Block");
  }
  if (o8==true && o9==true && s7==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 7 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 7 To Block");
  }
  //o vertical
  if (o1==true && o4==true && s7==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 7 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 7 To Block");
  }
  if (o1==true && o7==true && s4==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 4 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 4 To Block");
  }
  if (o4==true && o7==true && s1==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 1 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 1 To Block");
  }
  if (o2==true && o5==true && s8==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 8 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 8 To Block");
  }
  if (o2==true && o8==true && s5==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 5 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 5 To Block");
  }
  if (o5==true && o8==true && s2==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 2 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 2 To Block");
  }
  if (o3==true && o6==true && s9==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 9 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 9 To Block");
  }
  if (o3==true && o9==true && s6==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 6 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 6 To Block");
  }
  if (o6==true && o9==true && s3==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 3 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 3 To Block");
  }
  //o diagonal
  if (o1==true && o5==true && s9==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 9 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 9 To Block");
  }
  if (o1==true && o9==true && s5==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 5 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 5 To Block");
  }
  if (o5==true && o9==true && s1==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 1 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 1 To Block");
  }
  if (o3==true && o5==true && s7==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 7 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 7 To Block");
  }
  if (o3==true && o7==true && s5==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 5 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 5 To Block");
  }
  if (o5==true && o7==true && s3==false)
  {
    if (turn == 2 || turn == 4 || turn == 6 || turn == 8 ) println("Place Square 3 For Win");
    if (turn == 1 || turn == 3 || turn == 5 || turn == 7 || turn == 9 ) println("Place Square 3 To Block");
  }
} //endWinOrBlock
