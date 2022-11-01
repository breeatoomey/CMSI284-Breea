/**
 * Convert a base-10 number to its 32-bit binary value equivalent.
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main( int argc, char * argv[] ) {
    int binary[32];
    int decimal = atoi( argv[1] );

    for( int i = 0; i < 32; i++ ) {
        binary[i] = 0;
        if( decimal%2 == 1 ) {
            binary[i] = 1;
        }
        decimal /= 2;
    }

    for( int i = 31; i >= 0; i-- ) {
        printf("%d", binary[i]);
        fflush(stdout);
    }

    return 0;
}