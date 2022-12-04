/**
 * In networking, it is necessary to make sure that bytes are transimitted 
 * in the proper order so the receiving device can interpret them correctly. 
 * This requires that big-endian and little-endian values are converted to 
 * something called Network Byte Order before they are transmitted. For this 
 * problem, write a C program whichEndIsUp.cthat will determine whether your 
 * computer is big-endian or little-endian.
*/

#include <stdio.h>

int main() {
    int x = 1;
    if(*(char*)&x == 1) {
        printf("little-endian");
    }
    else {
        printf("big-endian");
    }
    return 0;
}