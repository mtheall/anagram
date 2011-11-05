#ifndef GUI_H
#define GUI_H

#include <feos.h>

typedef enum
{
	GuiRC_None = 0,
	GuiRC_Submit,
} GuiRC_t;

class Gui {
private:
  hword_t *font[26];
  hword_t *submit[2];

public:
  Gui();
  ~Gui();

  GuiRC_t update(char *choices, char *guess, const styluspos_t &touch);
};

#endif /* GUI_H */

