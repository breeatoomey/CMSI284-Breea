/**
 * Reads a number from the command line arguments and swaps its byte order, 
 * if necessary, to be in Network Byte Order. Create a test program to call 
 * your function and display the results on stdout.
*/

#include <stdio.h>
#include <stdlib.h>
#include <winsock2.h>

int main( int argc, char * argv[] ) {
    int x = 1;
    int byte = atoi(argv[1]);
    if(*(char*)&x != 1) {
        printf("little-endian");
        // printf("%l", htonl(byte));
    }
    else {
        printf("big-endian");
        printf("%d", byte);
    }
    return 0;
}