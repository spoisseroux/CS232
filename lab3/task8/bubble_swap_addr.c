/* Example: bubble sort strings in array */

#include <stdio.h>  /* Need for standard I/O functions */
#include <string.h> /* Need for strlen() */


//#define NUM 30 /* number of strings */
#define NUM 30
#define LEN 1200  /* max length of each string */

void swap(char *a,char *b)
{
    char temp;
    temp=*a;
    *a=*b;
    *b=temp;
}


int main()
{
  char Strings[NUM];

  printf("Please enter %d strings, one per line:\n", NUM);
    
    for (int i=0; i<NUM; i++) {
        fgets(&Strings[i], LEN, stdin);
    }

  puts("\nHere are the strings in the order you entered:");

  /* Write a for loop here to print all the strings. */

    for (int i=0; i<NUM; i++) {
        printf("%c\n", Strings[i]);
    }
  
  /* Bubble sort */
  /* Write code here to bubble sort the strings in ascending alphabetical order

     Your code must meet the following requirements:
        (i) The comparison of two strings must be done by checking them one
            character at a time, without using any C string library functions.
            That is, write your own while/for loop to do this.
       (ii) The swap of two strings must be done by copying them
            (using a temp variable of your choice) one character at a time,
            without using any C string library functions.
            That is, write your own while/for loop to do this.
      (iii) You are allowed to use strlen() to calculate string lengths.
  */
    puts("\nIn alphabetical order, the strings are:");
    
    //bubble sort
    
    for (int x = 0; x<LEN; x++) {
    for (int i = NUM; i>0; i--) {
        for (int j=0; j<NUM-i; j++) {
            if (Strings[i-1] > Strings[i]) {
                swap(&Strings[i-1], &Strings[i]);
                //swap
            }
        }
    }
    }
    
    //print final strings
    for (int i =0; i<NUM; i++){
        printf("%c\n", Strings[i]);
    }
    

}
