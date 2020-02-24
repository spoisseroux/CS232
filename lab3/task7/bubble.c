/* Example: bubble sort strings in array */

#include <stdio.h>  /* Need for standard I/O functions */
#include <string.h> /* Need for strlen() */


//#define NUM 30 /* number of strings */
#define NUM 30
#define LEN 1200  /* max length of each string */

//only working on chars now


int main()
{
  char Strings[NUM][LEN];

  printf("Please enter %d strings, one per line:\n", NUM);
    
    for (int i=0; i<NUM; i++) {
        fgets(Strings[i], LEN, stdin);
    }

  puts("\nHere are the strings in the order you entered:");

  /* Write a for loop here to print all the strings. */

    for (int i=0; i<NUM; i++) {
        printf("%s", Strings[i]);
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
   
    char temp1[NUM][LEN];
    char temp2[NUM][LEN];
    
    for (int x = 0; x<LEN; x++) {
    for (int i = 0; i<NUM-1; i++) {
        for (int j = 0; j < LEN; j++) {
            if (Strings[i][j] > Strings[i+1][j]) {
                temp1[i][j] = Strings[i][j];
                temp2[i][j] = Strings[i+1][j];
                Strings[i][j] = temp2[i][j];
                Strings[i+1][j] = temp1[i][j];
                //swap
            }
        }
    }
    }
    
    //print final strings
    for (int i =0; i<NUM; i++){
        printf("%s", Strings[i]);
    }
    

}


