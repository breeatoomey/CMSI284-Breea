/**
 * Reads a number from the command line arguments and swaps its byte order,
 * if necessary, to be in Network Byte Order. Create a test program to call
 * your function and display the results on stdout.
 * 
 * To compile on Windows: gcc makeNBO.c -lws2_32 -o makeNBO.exe
 */

#include <stdio.h>
#include <stdlib.h>
#include <winsock2.h>

int makeNBO (int number) {
    return htonl(number);
}

int main (int argc, char* argv[]) {
    int number = atoi(argv[1]);
    printf("%d\n", makeNBO(number));
    return 0;
}