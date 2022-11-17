#include <inttypes.h>
#include <stdio.h>

uint64_t sayHiTimes(uint64_t x) {
  uint64_t count = 0;
  while (count < x) {
    printf("Hello\n");
    count++;
  }
  return count;
}
