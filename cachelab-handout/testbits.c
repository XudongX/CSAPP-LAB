#include <stdio.h>

int main(void){

  long unsigned a = (-1lu) << 10;
  printf("%lx\n", a);

  printf("%lu\n", sizeof(int *));
  return 0;
}