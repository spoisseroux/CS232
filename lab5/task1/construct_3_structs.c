#include<stdio.h>
#include<stdlib.h>
#include "snode.h"
typedef struct snode node_t;

node_t * setup() {
    //TODO:head declared for you
    //node_t * head;
    
    //Allocate three more pointers
    //head for the first Node, and temporary pointers node1, node2 and node3
    node_t * node1;
    node_t * node2;
    node_t * node3;
    
    
    //Allocate three node pointees and store references to them in the three pointers
    
    node1 = calloc(6, sizeof(char));
    node2 = calloc(6, sizeof(char));
    node3 = calloc(5, sizeof(char));
    
    //Dereference each pointer to store the appropriate number and string into the length and str fields in its pointee.
    node1->length = 5;
    strcpy(node1->str, "hello");
    
    node2->length = 5;
    strcpy(node2->str, "there");
    
    node3->length = 4;
    strcpy(node3->str, "prof");
    
    //Dereference each pointer to access the .next field in its pointee,
    //and use pointer assignment to set the .next field to point to the appropriate Node.
   
    //head->next = node1;
    node1->next = node2;
    node2->next = node3;
    node3->next = NULL;
    
   return node1;
}

void teardown(node_t * head) {
    //TODO: free all dynamic memory you requested.
    //Please complete the prototype of teardown.
    //You are not allowed to use globals
    free(head);
}

//You can ignore the following code for testing
void dump_all(node_t*);
int main (int argc, char ** argv) {
    node_t * head = setup();
    dump_all(head);
    teardown(head);
    return 0;
}

void dump_all(node_t * head) {
    printf("head -> ");
    node_t * cur = head;
    while(cur != NULL) {
        printf("%s ", cur->str);
	cur = cur->next;
    free(cur);
    }
    printf("\ndone\n ");
}
