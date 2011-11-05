#ifndef CONSOLE_H
#define CONSOLE_H

#include <feos.h>

class Console {
private:
  int bg;
  hword_t *font;
  hword_t *palette;
  hword_t buffer[32*32];
  int xpos, ypos;

  void print(const char *string);

public:
  Console();
  ~Console();

  void printAt(int x, int y, const char *string);
  void clear();
  void flush();
};

#endif /* CONSOLE_H */

