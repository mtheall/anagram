#ifndef DICTIONARY_H
#define DICTIONARY_H

#include <stdlib.h>

class Dictionary {
public:
	Dictionary();
	~Dictionary();

  bool        isWord(const char *s);
  const char* rand(size_t len);
};

#endif /* DICTIONARY_H */

