#ifndef DICTIONARY_H
#define DICTIONARY_H

#define DICTIONARY_SIZE 23628

class Dictionary {
  static const char dictionary[][8];

	Dictionary();
	~Dictionary();

public:
  static bool        isWord(const char *s);
  static const char* rand(size_t len);
};

#endif /* DICTIONARY_H */

