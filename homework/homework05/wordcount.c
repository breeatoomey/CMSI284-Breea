/**
 * @author Breea Toomey, Kimberly Kubo
 * Counts the number of words in a file of text. Your program
 * should take a file name as a command line argument.
*/

#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

/*
 * helper method to output instructions for the user for next time
 */
void instructions() {
   printf( "\n\n   This is a word counter program.\n" );
   printf( "   It counts the number of words in a file of text.\n" );
   printf( "   The input file name should be given as an argument.\n" );
   printf( "   If one is not provided, you will be asked for it.\n" );
   printf( "\n\n" );
}

/*
 * main method
 */
int main( int argc, char * argv[] ) {

  FILE * file;
  char path[100];

  char ch;
  int words, characters;

  instructions();
  printf("Enter source file path: ");
  scanf("%s", path);

  file = fopen(path, "r");

  if (file == NULL) {
    printf("\n Unable to open file. \n");
    exit(EXIT_FAILURE);
  }

  words = characters = 0;
  while ((ch = fgetc(file)) != EOF) {
    characters++;

    if (ch == ' ' || ch == '\t' || ch == '\n' || ch == '\0') {
      words++;
    }
  }

  if (characters > 0) {
    words++;
  }

  printf("\n");
  printf("Total words = %d\n", words);

  fclose(file);
  return 0;
}
