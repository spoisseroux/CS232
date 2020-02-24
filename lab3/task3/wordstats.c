#include <stdio.h>
#include <string.h>
#define MAX_BUF 1024

int main () {

  /* Zero out the array */
  //int letter_frequency[26] = {0};
  int i;
    int acount = 0, bcount = 0, ccount= 0, dcount= 0, ecount= 0, fcount= 0, gcount= 0, hcount= 0, icount= 0, jcount= 0, kcount= 0, lcount= 0, mcount= 0, ncount= 0, ocount= 0, pcount= 0, qcount= 0, rcount= 0,
        scount= 0, tcount= 0, ucount= 0, vcount= 0, wcount= 0, xcount= 0,
        ycount= 0, zcount= 0 ;
  char buf[MAX_BUF];

    printf("Enter for word stats: \n");
    fgets(buf, MAX_BUF, stdin);
    //length = strlen(text) - 1;
    
    for (i=0; buf[i] != '\0'; i++) {
        //if it is an ASCII lowercase
        if(buf[i] == 'A' || buf[i] == 'a') {
            acount++;
        }
        if(buf[i] == 'B' || buf[i] == 'b') {
            bcount++;
        }
        if(buf[i] == 'C' || buf[i] == 'c') {
            ccount++;
        }
        if(buf[i] == 'D' || buf[i] == 'd') {
            dcount++;
        }
        if(buf[i] == 'E' || buf[i] == 'e') {
            ecount++;
        }
        if(buf[i] == 'F' || buf[i] == 'f') {
            fcount++;
        }
        if(buf[i] == 'G' || buf[i] == 'g') {
            gcount++;
        }
        if(buf[i] == 'H' || buf[i] == 'h') {
            hcount++;
        }
        if(buf[i] == 'I' || buf[i] == 'i') {
            icount++;
        }
        if(buf[i] == 'J' || buf[i] == 'j') {
            jcount++;
        }
        if(buf[i] == 'K' || buf[i] == 'k') {
            kcount++;
        }
        if(buf[i] == 'L' || buf[i] == 'l') {
            lcount++;
        }
        if(buf[i] == 'M' || buf[i] == 'm') {
            mcount++;
        }
        if(buf[i] == 'N' || buf[i] == 'n') {
            ncount++;
        }
        if(buf[i] == 'O' || buf[i] == 'o') {
            ocount++;
        }
        if(buf[i] == 'P' || buf[i] == 'p') {
            pcount++;
        }
        if(buf[i] == 'Q' || buf[i] == 'q') {
            qcount++;
        }
        if(buf[i] == 'R' || buf[i] == 'r') {
            rcount++;
        }
        if(buf[i] == 'S' || buf[i] == 's') {
            scount++;
        }
        if(buf[i] == 'T' || buf[i] == 't') {
            tcount++;
        }
        if(buf[i] == 'U' || buf[i] == 'u') {
            ucount++;
        }
        if(buf[i] == 'V' || buf[i] == 'v') {
            vcount++;
        }
        if(buf[i] == 'W' || buf[i] == 'w') {
            wcount++;
        }
        if(buf[i] == 'X' || buf[i] == 'x') {
            xcount++;
        }
        if(buf[i] == 'Y' || buf[i] == 'y') {
            ycount++;
        }
        if(buf[i] == 'Z' || buf[i] == 'z') {
            zcount++;
        }
    }
    
    printf("Distribution of letters: \n");
    printf("A: %i \n", acount);
    printf("B: %i \n", bcount);
    printf("C: %i \n", ccount);
    printf("D: %i \n", dcount);
    printf("E: %i \n", ecount);
    printf("F: %i \n", fcount);
    printf("G: %i \n", gcount);
    printf("H: %i \n", hcount);
    printf("I: %i \n", icount);
    printf("J: %i \n", jcount);
    printf("K: %i \n", kcount);
    printf("L: %i \n", lcount);
    printf("M: %i \n", mcount);
    printf("N: %i \n", ncount);
    printf("O: %i \n", ocount);
    printf("P: %i \n", pcount);
    printf("Q: %i \n", qcount);
    printf("R: %i \n", rcount);
    printf("S: %i \n", scount);
    printf("T: %i \n", tcount);
    printf("U: %i \n", ucount);
    printf("V: %i \n", vcount);
    printf("W: %i \n", wcount);
    printf("X: %i \n", xcount);
    printf("Y: %i \n", ycount);
    printf("Z: %i \n", zcount);
    

//  do {
//  } while (len > 1);
//
//  printf("Distribution of letters in corpus:\n");
//  for (i = 0; i < 26; i++) {
//    // 'A' is ASCII code 65
//    printf("%c: %d\n", 65+i, letter_frequency[i]);
//  }
}
