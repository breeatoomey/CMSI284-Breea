/**
 * Reads a number from the command line arguments and swaps its byte order,
 * if necessary, to be in Network Byte Order. Create a test program to call
 * your function and display the results on stdout.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <winsock2.h>

uint32_t makeNBO (uint32_t number) {
    int x = 1;
    if (*(char *)&x == 1) {
        uint32_t nboNumber = htonl(number);
        return nboNumber;
    } else {
        return number;
    }
    
}

int main (int argc, char* argv[]) {
    WSADATA wsa;
    if (WSAStartup(MAKEWORD(2, 2), &wsa) != 0) {
        printf("Failed. Error Code : %d", WSAGetLastError());
        return 1;
    }
    uint32_t number = (uint32_t) argv[1];
    printf("%ul", makeNBO(number));
    WSACleanup();
    return 0;
}