#include <stdio.h>
#include <string.h>
#include <ctype.h>
#define MAX_BUF 1024

int main () {
    
    //init
    FILE *file_ptr;
    char ch;
    int i;
    int charc = 0;
    int wordsc = 0;
    int linesc = 0;
    int whitec = 0;
    int upperc = 0;
    int lowerc = 0;
    int digitsc = 0;
      
    
    //open file
    file_ptr = fopen("inputfile", "r");
    
    //check if null
    if (file_ptr == NULL){
            printf("File not found \n");
    } else {
        while ((ch = fgetc(file_ptr)) != EOF) {
                //check lowercase
                if(ch >= 'a' && ch <= 'z') {
                    lowerc++;
                }
                
                //check uppercase
                if(ch >= 'A' && ch <= 'Z') {
                    upperc++;
                }
                
                //check digits
                if(isdigit(ch)) {
                    digitsc++;
                }
                
                //check whitec and words
                if(ch == ' ') {
                    whitec++;
                    //wordsc++;
                }
                
                //check new line
                if(ch == '\n') {
                    linesc++;
                }
            
                wordsc = whitec + linesc;
                charc++;
            }
        }
    
    //close when done
    fclose(file_ptr);

    //print results
    printf("%i ", charc);
    printf("%i ", wordsc);
    printf("%i ", linesc);
    printf("%i ", whitec);
    printf("%i ", upperc);
    printf("%i ", lowerc);
    printf("%i", digitsc);
    
    return 0;
    
}
