#include <stdio.h>

int tag[2][4];
int mru[4] = {1,1,1,1};

void mruUpdate(int index)
{
    int i;
    // find index in mru
    for (i = 0; i < 4; i++)
        if (mru[i] == index)
            break;
    // move earlier refs one later
    while (i > 0) {
        mru[i] = mru[i-1];
        i--;
    }
    mru[0] = index;
}

int main( )
{
    int addr;
    int i, j, t;
    int hits, accesses;
    FILE *fp;

    fp = fopen("trace.txt", "r");
    hits = 0;
    accesses = 0;
    while (fscanf(fp, "%x", &addr) > 0) {
        /********* YOUR CODE HERE ************/
        accesses += 1;
        printf("%3d: 0x%08x ", accesses, addr);
        i = addr & 1; //0 or 1 to choose line
        mruUpdate(i);
        j = (addr >> 2) & 3; //00 01 10 or 11 to choose col
        t = addr | 0x1f;
        if (tag[j][i] == t) {
            hits += 1;
            printf("Hit%d ", i);
        } else {
            /* allocate entry */
            printf("Miss ");
            tag[j][i] = t;
        }
        for (i = 0; i < 2; i++){
            for (int j = 0; j < 4; j++) {
                printf("0x%08x ", tag[j][i]);
            }
        }
        for (i = 0; i < 4; i++) {
            printf("%d ", mru[i]);
        }
        printf("\n");
    }
    printf("Hits = %d, Accesses = %d, Hit ratio = %f\n", hits, accesses, ((float)hits)/accesses);
    close(fp);
}
