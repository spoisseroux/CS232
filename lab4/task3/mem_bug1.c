/*memleak_example.c*/
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char * argv[]){

  int * a = malloc(sizeof(int *));

  *a = 10;  

  printf("%d\n", *a);

    free(a); //a was not freed here before
  a = calloc(3, sizeof(int *));
  a[0] = 10;
  a[1] = 20;
  a[2] = 30;

    free(a); //a was also not freed here before
}
