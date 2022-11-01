/**
 * Output the 32-bit hexidecimal value equivalent. For this 
 * modification, you must also handle an optional command line 
 * argument which indicates the number of bits that the output 
 * hex value will represent, either 32 or 64.
 * 
 * look up printf format specifiers
 * dec to hex has been done already
 */

#include <stdio.h>
#include <stdlib.h>

int main( int argc, char * argv[] ) {
    int decimal = atoi( argv[1] );
    int bits = atoi( argv[2] );

    if( bits == 64 ) {
        printf("%016x", decimal);
    }
    
    else {
        printf("%08x", decimal);
    }

    return 0;
}