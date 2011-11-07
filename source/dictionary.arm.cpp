#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "decompress.h"
#include "dictionary.h"

#define FILENAME "/data/anagram/dict.z"

typedef struct {
  char entry[8];
} dictEntry;

static dictEntry *dictionary = NULL;
static int size = 0;
static int refs = 0;

Dictionary::Dictionary() {
  if(refs == 0) {
    FILE *fp;
    int rc;

    if((fp = fopen(FILENAME, "r"))) {
      fseek(fp, 0, SEEK_END);
      int sz = ftell(fp);
      char *tmp = new char[sz];
      fseek(fp, 0, SEEK_SET);
      if((rc = fread(tmp, 1, sz, fp) == (word_t)sz)) {
        memcpy(&size, tmp, sizeof(size));
        size >>= 8;
        size /= sizeof(dictEntry);
        dictionary = new dictEntry[size];
        LZ77_Decompress(tmp, dictionary);
      }
      else {
        fclose(fp);
        delete [] tmp;
        throw "Failed to read from file";
      }
      fclose(fp);
      delete [] tmp;
    }
    else
      throw strerror(errno);
  }

  refs++;
}

Dictionary::~Dictionary() {
  refs--;
  if(refs == 0) {
    delete [] dictionary;
  }
}

bool Dictionary::isWord(const char *s) {
  int upper = size;
  int lower = 0;
  int mid   = (upper+lower)/2;
  int rc = 0;

  while(mid != lower && (rc = strcmp(s, dictionary[mid].entry))) {
    if(rc < 0)
      upper = mid;
    else if(rc > 0)
      lower = mid;
    mid = (upper+lower)/2;
  }

  if(rc == 0 || strcmp(s, dictionary[mid].entry) == 0)
    return true;

  return false;
}

const char* Dictionary::rand(size_t len) {
  int index;

  do {
    index = ::rand()%size;
  } while(strlen(dictionary[index].entry) != len);

  return dictionary[index].entry;
}

