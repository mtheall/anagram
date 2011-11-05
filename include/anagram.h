#ifndef ANAGRAM_H
#define ANAGRAM_H

#define GRAM_SIZE 169 //this is the most anagrams possible (for the word 'carpets')

#include <string.h>

typedef struct
{
  char word[8];
  bool solved;
} gram;

class Anagram {
private:
  int  numGrams;
  gram grams[GRAM_SIZE];
  char scrambled[8];

  void add(char *s);
  bool exists(char *s);
  void permute(char *v, const int start, const int n);

public:
  Anagram();
  ~Anagram();

  char* init();
  int   attempt(char *s);
  int   gramLen(int index);
  const char* getGram(int index);
};

static inline char* strfry(char *s)
{
  char t;
  int i, x, y, len;

  len = strlen(s);

  for(i = 0; i < len; i++)
  {
    //choose what to swap
    x = rand()%len;
    y = rand()%len;

    //swap
    t = s[x];
    s[x] = s[y];
    s[y] = t;
  }

  return s;
}

#endif /* ANAGRAM_H */

