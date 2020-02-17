#include <stdio.h>

int main() {
    char str[10090];
    int i;
    
    //input str to uppercase
    printf("Input String: ");
    fgets(str, 10090, stdin);

    //go thru each char of string
    for (i=0; str[i] != '\0'; i++) {
        //if it is an ASCII lowercase
        if(str[i] >='a' && str[i] <= 'z') {
            //to uppercase!
            str[i] = str[i] - 32;
        }
    }
    
    //output new string
    printf("Uppercase String: %s", str);
    return 0;
}

