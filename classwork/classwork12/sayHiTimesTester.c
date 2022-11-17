#include <stdio.h>
#include <inttypes.h>

uint64_t sayHiTimes(uint64_t);

int main() {
    printf( "%llu\n", sayHiTimes(0) );
    printf( "%llu\n", sayHiTimes(1) );
    printf( "%llu\n", sayHiTimes(2) );
    printf( "%llu\n", sayHiTimes(3) );
    return 0;
}
