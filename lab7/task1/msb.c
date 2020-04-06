#include <stdio.h>
#include <stdlib.h>

int msb(int x);
void print_binary(int n);

//Please do not modify main().
//All your changes should be made within msb()
int main(int argc, char **argv) {
	if (argc<2) {
		printf("Invoke as %s <n> \n\twhere <n> is an integer\n",argv[0]);
		return 1;
	}
	int x=atoi(argv[1]);
	printf("X= ");
	print_binary(x);
	printf("\n");
	printf("The most significant bit of %d is at position %d\n",x,msb(x));
	return 0;
}

int msb(int x) {
	if (x==0) return -1;
	//we are looking for a *range* that may contain most significant 1
	//the range is defined by width (w) and end_point (ep)
	//if we say range=6, ep=3, then it describes the following scenario:
	//                 |<--w->|
	//         0000 000* **** ****
	//                        ^
	//                        |
	//                        ep
	// in which * is a wild card which could be 0 or 1
	int w, ep;
	w=32; // Number of bits that might contain most significant 1
	ep=0; // Rightmost bit that might contain most significant 1
	//while(w>1) { //Narrow down to a single bit
		//TODO: Look at half the range of bits
        int hw = w/2;
		//TODO: create a mask.
        int mask = 4294901760;
				ep = 16;
        //11111111111111110000000000000000;
		// This mask is all one-bits in the left half of the range
		printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
		//TODO: use mask to figure out if the left half of the range has at least one bit

        //bits in left
        if ((mask&x) != 0) {
            //check left 2
            mask = 4278190080;
						hw = hw/2;
						ep = 24;
						printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
            //11111111000000000000000000000000;
            //bits in left 2
            if ((mask&x) != 0) {
                //check left most
                mask = 4026531840;
								hw = hw/2;
								ep = 28;
								printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
                //1111 0000 0000 0000 0000 0000 0000 0000;
                //bits in left most
                if ((mask&x) != 0) {

                    for(int n=31;n>=27;n--) {
                        if ((x & (1<<n))!= 0){
                            ep = n;
														return ep;
														w = 0;
                        }
                    }
                }


                //bits in right
                if ((mask&x) == 0) {

                    for(int n=26;n>=23;n--) {
                        if ((x & (1<<n))!= 0){
                            ep = n;
														return ep;
														w = 0;
                        }
                    }
                }

            //bits in right 2
            if ((mask&x) == 0) {
                //check right 2
                mask = 15728640;
								hw = hw/2;
								ep = 20;
								printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
                //00000000111100000000000000000000;

                //check left
                if (((mask&x) != 0)) {

                    for(int n=23;n>=19;n--) {
                        if ((x & (1<<n))!= 0){
                            ep = n;
														return ep;
														w = 0;
                        }
                    }

                }
                //check right
                if ((mask&x) == 0) {

                    for(int n=19;n>=15;n--) {
                        if ((x & (1<<n))!= 0){
                            ep = n;
														return ep;
														w = 0;
                        }
                    }

                }
            }
        }
        }

        //bits in right
        if ((mask&x) == 0) {

            //check left 2
            mask = 65280;
						hw = hw/2;
						ep = 8;
						printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
            //00000000000000001111111100000000;
            //bits in left 2
            if (((mask&x) != 0)) {
                //check left most
                mask = 61440;
								hw = hw/2;
								ep = 12;
								printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
                //00000000000000001111000000000000;

                //bits in left most
                if (((mask&x) != 0)) {

                    for(int n=15;n>=11;n--) {
                        if ((x & (1<<n))!= 0){
                            ep = n;
														return ep;
														w = 0;
                        }
                    }

                }

                //bits in right
                if ((mask&x) == 0) {

                    for(int n=11;n>=7;n--) {
                        if ((x & (1<<n))!= 0){
                            ep = n;
														return ep;
														w = 0;
                        }
                    }

                }

            }

            //bits in right 2
            if ((mask&x) == 0) {
                //check right 2
                mask = 240;
								hw = hw/2;
								ep = 4;
								printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
                //00000000000000000000000011110000;

                //check left
                if (((mask&x) != 0)) {

                    for(int n=7;n>=3;n--) {
                        if ((x & (1<<n))!= 0){
                            ep = n;
														return ep;
														w = 0;
                        }
                    }

                }

                //check right
                if ((mask&x) == 0) {

                    for(int n=3;n>=0;n--) {
                        if ((x & (1<<n))!= 0){
                            ep = n;
														return ep;
														w = 0;
                        }
                    }
                }
            }
        }




		//If the left half of the range has a one bit, focus on only the left half
		//else focus on only the right half
		//TODO: You have ruled out either the left half of the range or the right half of the range
		//set up ep and w accordingly
	//}
	return ep;
}
//Do not modify print_binary
void print_binary(int n) {
	int i;
	for(i=31;i>=0;i--) {
		printf("%c",(n&1<<i)?'1':'0');
		if (0==i%4) printf(" ");
	}
}
