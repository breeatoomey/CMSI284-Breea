#include <stdio.h>
#include <assert.h>

int findGCD(int, int);

int main() {
    assert( findGCD(3113041662, 11570925) == 462837 );
    assert( findGCD(1, 2) == 1 );
    assert( findGCD(30, 40) == 10 );
    assert( findGCD(500, 600) == 100 );
    assert( findGCD(7000, 8000) == 1000 );
    return 0;
}
