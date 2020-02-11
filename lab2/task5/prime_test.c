#include <stdio.h>
#include <stdlib.h>
void get_valid_number(int *n);
int is_prime(int x);

//main() uses a sentinel controlled loop to test the primality of numbers
//, without knowing how many numbers to be tested.
// -1 is the sentinel value
// the loop repeats the cycle of read->test->process->read ...
int main()
{
    int n = 1; 
    while (n !=- 1) { //test
        //process
        get_valid_number(&n);
        
        if (is_prime(n) == 1) {
            printf("%d is a prime number!\n", n);
        }
        else {
            printf("%d is not a prime number!\n", n);
        }
        //read again then loop back to test
        
    }
    return 0;
}

int is_prime(int n) {
    //if n is divisible by any number greater or equal to 2 and less than n, then n is not prime.
    int i = 2;
    for (int i = 2; i < n; i++) {
        if (n%i == 0) {
            return 0;
            break;
        }
    }
    return 1;

}

void get_valid_number(int *n) {
    //The valid number is either -1 (to exit the program) or an integer greater than 2.
    //A loop is used to implement input validation, that is, user will be asked to
    //enter a valid number over and over again until a valid number is received.
        printf("Please enter an integer greater than 2 to test its primality, enter -1 to exit \n");
    scanf("%d", n);
    while (*n <= 2) {
        
        if (*n == -1) {
            exit(0);
        }
        
        printf("Please enter an integer greater than 2 to test its primality, enter -1 to exit \n");
        scanf("%d", n);
        
    }
    
}
