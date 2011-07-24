#ifndef ANAGRAM_H
#define ANAGRAM_H

typedef struct
{
  char word[8];
  int solved;
} gram;

void init();
void cleanup();
void print(int index);
int  attempt(char *s);

#endif /* ANAGRAM_H */
