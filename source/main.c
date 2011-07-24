#include <stdio.h>
#include <string.h>
#include "anagram.h"

char guess[8];

int main(int argc, char *argv[])
{
  int i;
  int scroll = 0;

  init();
//  printf("\x1b[2J");
  for(i = scroll; i < scroll+23; i++)
  {
//    printf("\x1b[%d;0H", i);
    print(i);
  }
  
  while(scanf("%7s", guess))
  {
    if(strcmp(guess, "QUIT") == 0)
      break;
    if(attempt(guess))
    {
//      printf("\x1b[2J");
      for(i = scroll; i < scroll+23; i++)
      {
//        printf("\x1b%d;0H", i);
        print(i);
      }
    }
  }
  cleanup();

  return 0;
}

