#include <stdio.h>
#include <stdlib.h>

int main(int argc, char * argv[]){

  int i, *a;

  a = calloc(11, sizeof(int)); //array was writing out of bounds

  for(i=0;i <= 10; i ++){
    a[i] = i;
  }
  for(i=0;i <= 10; i++){
    printf("%d\n", a[i]);
  }
    free(a); //a was not freed here before

}
