#include <feos.h>
#include <string.h>
#include "console.h"
#include "consolefont.h"

Console::Console() {
  bg = bgInitSub(0, BgType_Text8bpp, BgSize_T_256x256, 4, 0);
  dmaCopy(consolefontTiles, bgGetGfxPtr(bg), consolefontTilesLen);
  dmaCopy(consolefontPal,   BG_PALETTE_SUB,  consolefontPalLen);
  memset(buffer, 0, sizeof(buffer));
  flush();
}

Console::~Console() {
}

void Console::print(const char *string) {
  char c;
  while((c = *string++)) {
    buffer[ypos*32 + xpos++] = c - ' ';
    if(xpos == 32) {
      xpos = 0;
      ypos++;
      if(ypos == 32)
        ypos = 0;
    }
  }
}

void Console::printAt(int x, int y, const char *string) {
  xpos = x;
  ypos = y;
  if(xpos >= 32) xpos = 0;
  if(ypos >= 32) ypos = 0;
  print(string);
}

void Console::clear() {
  memset(buffer, 0, sizeof(buffer));
}

void Console::flush() {
  DC_FlushRange(buffer, sizeof(buffer));
  dmaCopy(buffer, bgGetMapPtr(bg), sizeof(buffer));
}

