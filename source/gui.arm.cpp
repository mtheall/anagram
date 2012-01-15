#include <feos.h>
#include <feos3d.h>
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
  videoSetMode(MODE_0_3D);
  videoSetModeSub(MODE_0_2D);

  lcdMainOnBottom();

  //set up VRAM Banks
  vramSetPrimaryBanks(VRAM_A_TEXTURE_SLOT0,
                      VRAM_B_MAIN_BG_0x06000000,
                      VRAM_C_SUB_BG,
                      VRAM_D_SUB_SPRITE);
  vramSetBankE(VRAM_E_TEX_PALETTE);

  //initialize main bg
  bgInit(1, BgType_Text8bpp, BgSize_T_256x256, 1, 0);

  //copy bg data
  decompress(bgTiles, bgGetGfxPtr(1));
  decompress(bgPal,   BG_PALETTE);
  dmaFillHalfWords(0, bgGetMapPtr(1), 2048);

  //initialize 3D
  glInit();

  glEnable(GL_TEXTURE_2D);
  glClearColor(0, 0, 0, 0);
  glClearPolyID(63);
  glClearDepth(GL_MAX_DEPTH);
  glViewport(0, 0, 255, 191);

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  glOrthof32(0, 256, 192, 0, -1<<12, 1<<12);
  glPolyFmt(POLY_ALPHA(31) | POLY_CULL_NONE);
  glMatrixMode(GL_MODELVIEW);
  glColor(RGB15(31, 31, 31));

  texdata = decompress(fontTex, NULL);
  texpal = decompress(spritePal, NULL);

  glGenTextures(2, textures);
  glBindTexture(0, textures[0]);
  glTexImage2D(0, 0, GL_RGB256, TEXTURE_SIZE_512, TEXTURE_SIZE_16, 0, TEXGEN_TEXCOORD | GL_TEXTURE_COLOR0_TRANSPARENT, texdata);
  glColorTableEXT(0, 0, 256, 0, 0, (hword_t*)texpal);

  delete texdata;
  delete texpal;

  texdata = decompress(submitTex, NULL);

  glBindTexture(0, textures[1]);
  glTexImage2D(0, 0, GL_RGB256, TEXTURE_SIZE_128, TEXTURE_SIZE_32, 0, TEXGEN_TEXCOORD | GL_TEXTURE_COLOR0_TRANSPARENT, texdata);
  glAssignColorTable(0, textures[0]);

  delete texdata;
}

Gui::~Gui() {
  glDeinit();
}

static inline void drawLetter(int offset, int x, int y, int size) {
  glTexCoord2t16(inttot16(offset*16),    inttot16(0));
  glVertex3v16(x,      y,      1);
  glTexCoord2t16(inttot16(offset*16+16), inttot16(0));
  glVertex3v16(x+size, y,      1);
  glTexCoord2t16(inttot16(offset*16+16), inttot16(16));
  glVertex3v16(x+size, y+size, 1);
  glTexCoord2t16(inttot16(offset*16),    inttot16(16));
  glVertex3v16(x,      y+size, 1);
}

GuiRC_t Gui::update(char *choices, char *guess, const styluspos_t &touch) {
  word_t x, y;
  int picked;
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

  glBegin(GL_QUAD);

    glBindTexture(GL_TEXTURE_2D, textures[0]);

    /* draw choice tiles */
    x = CHOICE_X-CHOICE_SIZE;
    y = CHOICE_Y;
    while(*choices) {
      offset = (*choices - 'a');
      x += CHOICE_SIZE;

      drawLetter(offset, x, y, CHOICE_SIZE);
      choices++;
    }

    /* draw guess tiles */
    x = GUESS_X-GUESS_SIZE;
    y = GUESS_Y;
    while(*guess) {
      offset = (*guess - 'a');
      x += GUESS_SIZE;

      drawLetter(offset, x, y, GUESS_SIZE);
      guess++;
    }

    /* draw submit tiles */
    glBindTexture(GL_TEXTURE_2D, textures[1]);
    glTexCoord2t16(inttot16(0),        inttot16(0));
    glVertex3v16(SUBMIT_X,          SUBMIT_Y,          1);
    glTexCoord2t16(inttot16(SUBMIT_W), inttot16(0));
    glVertex3v16(SUBMIT_X+SUBMIT_W, SUBMIT_Y,          1);
    glTexCoord2t16(inttot16(SUBMIT_W), inttot16(SUBMIT_H));
    glVertex3v16(SUBMIT_X+SUBMIT_W, SUBMIT_Y+SUBMIT_H, 1);
    glTexCoord2t16(inttot16(0),        inttot16(SUBMIT_H));
    glVertex3v16(SUBMIT_X,          SUBMIT_Y+SUBMIT_H, 1);

  glEnd();

  glFlush(0);
  return rc;      
}
