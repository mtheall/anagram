#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "anagram.h"
#include "dictionary.h"

static int size = 0;
static gram **grams = NULL;
char scrambled[8];

static int strorder(char *x, char *y)
{
  int xlen = strlen(x);
  int ylen = strlen(y);

  if(xlen < ylen)
    return -1;
  else if(ylen < xlen)
    return 1;
  else
    return strcmp(x, y);
}

static int gramcmp(gram **g1, gram **g2)
{
  return strorder((*g1)->word, (*g2)->word);
}

#ifndef strfry
char* strfry(char *s)
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
#endif

void cleanup()
{
  int i;
  if(grams)
  {
    for(i = 0; i < size; i++)
      free(grams[i]);
    free(grams);
  }
  grams = NULL;
}

static void add(char *s)
{
  gram **tlist = NULL;
  gram *tgram = NULL;
  if((tlist = realloc(grams, sizeof(gram*)*(size+1))))
  {
    grams = tlist;
    if((tgram = malloc(sizeof(gram))))
    {
      grams[size] = tgram;
      strncpy(grams[size]->word, s, 8);
      grams[size]->solved = 0;
      size++;
    }
    else
      grams = realloc(grams, sizeof(gram*)*size);
  }
  qsort(grams, size, sizeof(gram**), (int(*)(const void*, const void*)) gramcmp);
}

static char* isWord(char *s)
{
  return (char *)bsearch(s, dictionary, DICTIONARY_SIZE, sizeof(char[8]), (int(*)(const void*, const void*)) strcmp);
}

static gram* exists(char *s)
{
  gram g;
  gram *key = &g;
  strcpy(g.word, s);

  return (gram*)bsearch(&key, grams, size, sizeof(gram*), (int(*)(const void*, const void*)) gramcmp);
}

static void permute(char *v, const int start, const int n)
{
  int i;
  if(start == n-1)
  {
    if(!exists(v) && isWord(v))
      add(v);
  }
  else
  {
    for(i = start; i < n; i++)
    {
      //swap characters
      char tmp = v[i];
      v[i] = v[start];
      v[start] = tmp;

      //recurse
      permute(v, start+1, n);

      //swap back
      v[start] = v[i];
      v[i] = tmp;
    }
  }
}

int attempt(char *s)
{
  int upper = size;
  int lower = 0;
  int mid = (upper+lower)/2;
  int rc;

  while(mid != lower && (rc = strorder(s, grams[mid]->word)))
  {
    if(rc < 0)
      upper = mid;
    else if(rc > 0)
      lower = mid;
    mid = (upper+lower)/2;
  }

  if(grams != NULL && !strcmp(s, grams[mid]->word) && !grams[mid]->solved)
  {
    grams[mid]->solved = 1;
    return strlen(grams[mid]->word);
  }

  return 0;
}

void init()
{
  int i = rand()%DICTIONARY_SIZE;
  cleanup();

  while(strlen(dictionary[i]) < 7)
    i = rand()%DICTIONARY_SIZE;

  strcpy(scrambled, dictionary[i]);

  permute(scrambled, 0, 8);
  strfry(scrambled);
}

void print(int index)
{
  int i;

  if(grams && index >= 0 && index < size)
  {
    if(grams[index]->solved)
      printf("%s", grams[index]->word);
    else for(i = 0; i < strlen(grams[index]->word); i++)
      printf("-");
    printf("\n");
  }
}

