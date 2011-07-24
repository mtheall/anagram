#include <stdio.h>
#include <string.h>
#include "anagram.h"

char guess[8];

int main(int argc, char *argv[])
{
  int scroll = 0;
  int row = 0;

  init();
  while(scroll > 0 && gramLen(scroll+22) == 0)
    scroll--;
  if(scroll < 0)
    scroll = 0;

  for(row = scroll; row < scroll+23 && gramLen(row) != 0; row++)
  {
    print(row);
  }
  
  while(scanf("%7s", guess))
  {
    if(strcmp(guess, "QUIT") == 0)
      break;
    else if(strcmp(guess, "UP") == 0)
      scroll--;
    else if(strcmp(guess, "DOWN") == 0)
      scroll++;
    else
      attempt(guess);

    while(scroll > 0 && gramLen(scroll+22) == 0)
      scroll--;
    if(scroll < 0)
      scroll = 0;
    for(row = scroll; row < scroll+23; row++)
      print(row);
  }
  cleanup();

  return 0;
}

