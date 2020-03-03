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
    node_t * node4;
    
    
    //Allocate three node pointees and store references to them in the three pointers
    
    node1 = calloc(3, sizeof(char));
    node2 = calloc(6, sizeof(char));
    node3 = calloc(6, sizeof(char));
    node4 = calloc(5, sizeof(char));
    
    //Dereference each pointer to store the appropriate number and string into the length and str fields in its pointee.
    node1->length = 2;
    strcpy(node1->str, "hi");
    
    node2->length = 5;
    strcpy(node2->str, "hello");
    
    node3->length = 5;
    strcpy(node3->str, "there");
    
    node4->length = 4;
    strcpy(node4->str, "prof");
    
    //Dereference each pointer to access the .next field in its pointee,
    //and use pointer assignment to set the .next field to point to the appropriate Node.
   
    //head->next = node1;
    node1->next = node2;
    node2->next = node3;
    node3->next = node4;
    
   return node1;
}

void teardown(node_t * head) {
    //TODO: free all dynamic memory you requested.
    //Please complete the prototype of teardown.
    //You are not allowed to use globals
    free(head);
}

void add(node_t ** head, char * str, int length){
    //TODO: implement add to add a new node to front, pointed by head
}

//You can ignore the following code for testing
void dump_all(node_t*);
int main (int argc, char ** argv) {
    node_t * head = setup();
    add(&head, "hi", 2);
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
