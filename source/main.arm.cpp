#include <feos.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "anagram.h"
#include "console.h"
#include "decompress.h"
#include "gfx.h"
#include "gui.h"

#define HISTORY_SIZE 22

char guess[8];
char choices[8];
char history[HISTORY_SIZE][8];
char *solution;

Gui     *gui;
Console *console;
Anagram *anagram;

static inline int printList(int scroll) {
  int row;

  while(scroll > 0 && anagram->gramLen(scroll+23) == 0)
    scroll--;
  if(scroll < 0)
    scroll = 0;

  for(row = scroll; row < scroll+25 && anagram->gramLen(row) != 0; row++) {
    console->printAt(0, row-scroll, "       ");
    console->printAt(0, row-scroll, anagram->getGram(row));
  }

  //print scroll arrows
  console->printAt(8, 0,  anagram->gramLen(scroll-1) ? "^":" ");
  console->printAt(8, 23, anagram->gramLen(scroll+24)? "v":" ");

  //print the history
  console->printAt(15, 0, "History");
  console->printAt(15, 1, "-------");
  for(row = 0; row < HISTORY_SIZE; row++) {
    console->printAt(15, HISTORY_SIZE-row+1, "       ");
    console->printAt(15, HISTORY_SIZE-row+1, history[row]);
  }

  return scroll;
}

static inline int reset() {
  solution = anagram->init();
  console->clear();
  console->flush();

  memset(guess,   0, sizeof(guess));
  memset(history, 0, sizeof(history));
  memset(choices, 0, sizeof(choices));
  strcpy(choices, solution);

  return 0;
}

void addHistory(char *guess) {
  int i;

  for(i = 0; i < HISTORY_SIZE-1; i++)
    strcpy(history[i], history[i+1]);
  strcpy(history[i], guess);
}

const hword_t* map[] = {
  carbonfiberMap,
  checkerMap,
  checker_darkMap,
  diamondMap,
  diamond_smallMap,
  fiberMap,
  weaveMap,
};
#define NUM_MAPS (sizeof(map)/sizeof(map[0]))

static int play(void *userData)
{
  srand(time(NULL));
  int scroll = 0;
  int quit = 0;
  int down;
  int redraw = 0;
  int mapNum = 0;
  touchPosition touch;

  gui     = new Gui();
  console = new Console();
  try {
    anagram = new Anagram();
  } catch (const char* err) {
    delete console;
    delete gui;

    return EXIT_FAILURE;
  }

  //copy bg tiles
  decompress(map[mapNum], bgGetMapPtr(1));

  reset();
  scroll = printList(scroll);
  console->flush();

  keysSetRepeat(30, 6);

  while(!quit) {
    bgScrollf(1, -48, 48);
    swiWaitForVBlank();
    if(redraw) {
      scroll = printList(scroll);
      console->flush();
    }
    redraw = 0;

    down = keysDown() | (keysDownRepeat() & (KEY_UP|KEY_DOWN));

    if(down & KEY_UP)
      redraw = 1, scroll--;
    else if(down & KEY_DOWN)
      redraw = 1, scroll++;
    else if(down & KEY_B)
      redraw = 1, quit = 1;
    else if(down & KEY_START)
      redraw = 1, scroll = reset();
    else if(down & KEY_X) {
      redraw = 1;
      strfry(choices);
      if(strlen(choices) == strlen(solution))
        strcpy(solution, choices);
    }
    else if(down & KEY_Y) {
      mapNum = (mapNum+1)%NUM_MAPS;
      decompress(map[mapNum], bgGetMapPtr(1));
    }

    if(down & KEY_TOUCH)
      touchRead(&touch);
    else
      memset(&touch, 0, sizeof(touch));

    if(gui->update(choices, guess, touch) == GuiRC_Submit) {
      if(strlen(guess) > 2) {
        anagram->attempt(guess);
        addHistory(guess);
      }
      memset(guess,   0, sizeof(guess));
      memset(choices, 0, sizeof(choices));
      strcpy(choices, solution);
      redraw = 1;
    }

  }

  delete gui;
  delete console;
  delete anagram;

  return EXIT_SUCCESS;
}

int main(int argc, char *argv[]) {
  return DSRequestHardware(play, NULL, NULL);
}
