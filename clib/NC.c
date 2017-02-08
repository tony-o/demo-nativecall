#include <stdio.h>
#include <stdlib.h>

struct point {
  int x, y;
};

void* native_call(int len, int arr[]){

  struct point *j = malloc(sizeof(struct point));
  int i;

  j->x = 50;
  j->y = 150;

  for(i = 0; i < len; i++){
    printf("arr[%d] = %d\n", i, arr[i]);
  }

  return j;
}
