#include <stdio.h>
#include <stdlib.h>

//main() uses a sentinel controlled loop to test the primality of numbers
//, without knowing how many numbers to be tested.
// -1 is the sentinel value
// the loop repeats the cycle of read->test->process->read ...

int main() {
    int n;
    int flag = 0;
    
    printf("Please enter an integer greater than 2 to test its primality, enter -1 to exit \n");
    scanf("%d", &n);
    
    
    if (n > (-1) && n <= 2){
        main();
    } else if (n != -1) {
        for (int i = 2; i < n; i++) {
            if (n%i == 0) {
                flag = 1;
                break;
            }
        } if (flag == 0) {
            printf("%d is a prime number!\n", n);
        } else {
            printf("%d is not a prime number!\n", n);
        }
        main();
    } else {
        printf("Exiting..,");
        exit(0);
    }
    return 0;
}
