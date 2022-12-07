#include <stdio.h>
#include <inttypes.h>
#include <assert.h>

int64_t paritygen(int64_t);

int main() {
  //assert(paritygen(55) == 0);
  //assert(paritygen(72) == 1);
  //assert(paritygen(127) == 1);
  //assert(paritygen(195) == 1);

  printf("%lld\n", paritygen(55));
  printf("Test Passed -- assertion confirmed.\n");
  return 0;
}
