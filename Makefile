# Global Makefile for CS50 C projects
LDLIBS = -lcs50 -lm
CFLAGS = -Wall -Werror -Wextra -std=c11

readability: readability.c
	$(CC) $(CFLAGS) readability.c -o readability $(LDLIBS)
