#include <feos.h>
#include <string.h>
#include "gfx.h"
#include "gui.h"
#include "decompress.h"

#define CHOICE_SIZE 32
#define CHOICE_X    ((256-strlen(choices)*CHOICE_SIZE)/2)
#define CHOICE_Y    ((192-CHOICE_SIZE)/2)

#define GUESS_SIZE  16
#define GUESS_X     ((256-strlen(guess)*GUESS_SIZE)/2)
#define GUESS_Y     ((CHOICE_Y-GUESS_SIZE)/2)

#define SUBMIT_W    128
#define SUBMIT_H    32
#define SUBMIT_X    ((256-SUBMIT_W)/2)
#define SUBMIT_Y    ((192-SUBMIT_H)*7/8)

Gui::Gui() {
  //enable video
  videoSetMode(MODE_0_2D);
  videoSetModeSub(MODE_0_2D);

  lcdMainOnBottom();

  //set up VRAM Banks
  vramSetPrimaryBanks(VRAM_A_MAIN_BG,
                      VRAM_B_MAIN_SPRITE,
                      VRAM_C_SUB_BG,
                      VRAM_D_SUB_SPRITE);

  //initialize main bg
  bgInit(0, BgType_Text8bpp, BgSize_T_256x256, 1, 0);

  //copy bg data
  decompress(bgTiles, bgGetGfxPtr(0));
  decompress(bgPal,   BG_PALETTE);
  dmaFillHalfWords(0, bgGetMapPtr(0), 2048);

  //initialize OAM
  oamInit(&oamMain, SpriteMapping_1D_128, false);

  //copy font tiles
  decompress(spriteTiles, oamGetGfxPtr(&oamMain, 0)-32);

  //copy sprite palette
  decompress(spritePal, SPRITE_PALETTE);

  //calculate addresses to tiles
  for(int i = 0; i < 26; i++)
    font[i] = oamGetGfxPtr(&oamMain, i*2);
  for(int i = 0; i < 2; i++)
    submit[i] = oamGetGfxPtr(&oamMain, 26*2 + i*16);

  //set up affine for double size
  oamRotateScale(&oamMain, 0, 0, 1<<7, 1<<7);
}

Gui::~Gui() {
  //free font tiles
  for(int i = 0; i < 26; i++) {
    oamFreeGfx(&oamMain, font[i]);
  }
  //free submit tiles
  for(int i = 0; i < 2; i++) {
    oamFreeGfx(&oamMain, submit[i]);
  }
}

GuiRC_t Gui::update(char *choices, char *guess, const styluspos_t &touch) {
  word_t x, y;
  int picked;
  int index = 0;
  int offset;
  GuiRC_t rc = GuiRC_None;

  x = touch.x;
  y = touch.y;

  //move a letter from the choices list to the guess list
  if(x > CHOICE_X && x < CHOICE_SIZE*strlen(choices)+CHOICE_X && y > CHOICE_Y && y < CHOICE_Y+CHOICE_SIZE) {
    picked = (x-CHOICE_X)/CHOICE_SIZE;
    guess[strlen(guess)+1] = 0;
    guess[strlen(guess)] = choices[picked];
    for(int i = picked; i < 8; i++)
      choices[i] = choices[i+1];
  }
  if(x > SUBMIT_X && x < SUBMIT_X+SUBMIT_W && y > SUBMIT_Y && y < SUBMIT_Y+SUBMIT_H)
    rc = GuiRC_Submit;

  oamClear(&oamMain, 0, 128);

  /* draw choice tiles */
  x = CHOICE_X-CHOICE_SIZE;
  y = CHOICE_Y;
  while(*choices) {
    offset = (*choices - 'a');
    x += CHOICE_SIZE;

    oamSet(&oamMain,
           index++,
           x, y,
           0,     //priority
           0,     //palette
           SpriteSize_16x16, SpriteColorFormat_256Color,
           font[offset],
           0,     //affine index
           true,  //double size
           false, //hide
           false, //hflip
           false, //vflip
           false);//mosaic

    choices++;
  }

  /* draw guess tiles */
  x = GUESS_X-GUESS_SIZE;
  y = GUESS_Y;
  while(*guess) {
    offset = (*guess - 'a');
    x += GUESS_SIZE;

    oamSet(&oamMain,
           index++,
           x, y,
           0,     //priority
           0,     //palette
           SpriteSize_16x16, SpriteColorFormat_256Color,
           font[offset],
           -1,    //affine index
           false, //double size
           false, //hide
           false, //hflip
           false, //vflip
           false);//mosaic

    guess++;
  }

  /* draw submit tiles */
  for(int i = 0; i < 2; i++) {
    oamSet(&oamMain,
           index++,
           SUBMIT_X + i*64, SUBMIT_Y,
           0,     //priority
           0,     //palette
           SpriteSize_64x32, SpriteColorFormat_256Color,
           submit[i],
           -1,    //affine index
           false, //double size
           false, //hide
           false, //hflip
           false, //vflip
           false);//mosaic
  }

  return rc;      
}
