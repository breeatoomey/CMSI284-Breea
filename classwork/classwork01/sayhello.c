#include <stdio.h>
#include <stdlib.h>

  int main( int argc, char * argv[] ) {

    char name[15];

    printf( "Enter your name: ");
    gets( name );
    printf( "\n\n   Hello, %s!  \n\n", name );

}
