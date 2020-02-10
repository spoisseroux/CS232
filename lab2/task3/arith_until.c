/*  Example: C program to find area of a circle */

#include <stdio.h>
#include <stdlib.h>
#define PI 3.14159

int main()
{
    
    float r, a, x, b;
    r = 1;
    
    while(r != 0) {
        printf("Enter radius (in millimeters):\n");
        scanf("%f", &r);
        
        if (r == 0) {
            printf("Exit");
            exit(0);
        }
        
        x = r / 25.4;
        a = PI * x * x;
        b = 2 * PI * x;

        printf("Circle's area is %3.2f (sq in).\n", a);
        printf("Circle's circumfrence is %3.2f (in).\n", b);
    }
}

