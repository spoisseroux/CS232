#include<stdio.h>
#include<stdlib.h>
typedef struct node {
    char * value; //must use dynamic allocation 
    struct node* next;
} node_t;

node_t * construct_3_strs() {
    
    struct node * x;
    struct node * y;
    struct node * z;
    
    x = calloc(sizeof(char), 7);
    y = calloc(sizeof(char), 4);
    z = calloc(sizeof(char), 9);
    
    x->value = "CS232";
    y->value = "is";
    z->value = "awesome";
    
    x->next = y;
    y->next = z;
    z->next = x;
    
    return x;//just to pass compiler, please edit as needed.
}

//You can ignore the following code for testing
int dump_all(node_t*);
int main (int argc, char ** argv) {
    node_t * x = construct_3_strs();
    return dump_all(x);

}

int dump_all(node_t * x) {
    printf("x -> %s", x->value);
    node_t * y = x->next;
    printf(" %s", y->value);
    node_t * z = y->next;
    printf(" %s\n", z->value);
    if(z->next != x) {
    	printf("failed");
	return -1;
    } else {
        return 0;
    }
    free(x);
    free(y);
    free(z);
}
