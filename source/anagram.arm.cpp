#include <stdlib.h>
#include <string.h>
#include "anagram.h"
#include "dictionary.h"

static int gramcmp(const void* x, const void* y) {
  int xlen = strlen((char*)x);
  int ylen = strlen((char*)y);

  if(xlen < ylen)
    return -1;
  else if(ylen < xlen)
    return 1;
  else
    return strcmp((char*)x, (char*)y);
}

Anagram::Anagram() {
  memset(grams, 0, sizeof(gram)*GRAM_SIZE);
  memset(scrambled, 0, sizeof(scrambled));
  numGrams = 0;
}

Anagram::~Anagram() {
}

void Anagram::add(char *s) {
  strcpy(grams[numGrams].word, s);
  grams[numGrams++].solved = 0;

  qsort(grams, numGrams, sizeof(gram), gramcmp);
}

bool Anagram::exists(char *s) {
  int upper = numGrams;
  int lower = 0;
  int mid = (upper+lower)/2;
  int rc;

  while(mid != lower && (rc = gramcmp(s, grams[mid].word))) {
    if(rc < 0)
      upper = mid;
    else if(rc > 0)
      lower = mid;
    mid = (upper+lower)/2;
  }

  if(numGrams > 0 && strcmp(s, grams[mid].word) == 0)
    return true;

  return false;
}

int Anagram::attempt(char *s) {
  int upper = numGrams;
  int lower = 0;
  int mid = (upper+lower)/2;
  int rc;

  while(mid != lower && (rc = gramcmp(s, grams[mid].word))) {
    if(rc < 0)
      upper = mid;
    else if(rc > 0)
      lower = mid;
    mid = (upper+lower)/2;
  }

  if(numGrams > 0 && strcmp(s, grams[mid].word) == 0 && !grams[mid].solved) {
    grams[mid].solved = true;
    return strlen(grams[mid].word);
  }

  return 0;
}

int Anagram::gramLen(int index) {
  if(index >= 0 && index < numGrams)
    return strlen(grams[index].word);

  return 0;
}

char* Anagram::init() {
  memset(grams, 0, sizeof(gram)*GRAM_SIZE);
  numGrams = 0;

  strcpy(scrambled, Dictionary::rand(7));

  permute(scrambled, 0, 8);
  strfry(scrambled);

  return scrambled;
}

void Anagram::permute(char *v, const int start, const int n) {
  int i;
  for(i = start; i < n; i++) {
    //swap characters
    char tmp = v[i];
    v[i] = v[start];
    v[start] = tmp;

    //recurse
    if(start == n-1 && strlen(v) > 2) {
      if(!exists(v) && Dictionary::isWord(v))
        add(v);
    }
    else
      permute(v, start+1, n);

    //swap back
    v[start] = v[i];
    v[i] = tmp;
  }
}

const char* Anagram::getGram(int index) {
  static const char unsolved[][8] = {
    "---",
    "----",
    "-----",
    "------",
    "-------",
  };

  if(index >= 0 && index < numGrams) {
    if(grams[index].solved)
      return grams[index].word;
    else
      return unsolved[strlen(grams[index].word)-3];
  }

  return NULL;
}

