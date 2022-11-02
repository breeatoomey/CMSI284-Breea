/**
 * @author Kimberly Kubo
 * Output the times tables from 2 to N, where N is a user-defined 
 * number take from the command line. Output the values in a nice 
 * table, using a format specifier that will allow for enough space 
 * for the results to be neatly aligned in columns.
 */

#include <stdio.h>
#include <stdlib.h>

int main( int argc, char * argv[] ){
    int n = atoi( argv[1] );

    for ( int i = 2; i <= n; i++ ){
        for ( int j = 1; j <= 12; j++ ){
            printf("%10d x %10d = %10d\n", i, j, i*j);
        }
        printf("\n");
    }
}