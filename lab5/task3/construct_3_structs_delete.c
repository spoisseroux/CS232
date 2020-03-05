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
     
     node1 = calloc(1, sizeof(char));
     node2 = calloc(1, sizeof(char));
     node3 = calloc(1, sizeof(char));
     
     //Dereference each pointer to store the appropriate number and string into the length and str fields in its pointee.
     
     node1->length = 5;
     strcpy(node1->str, "hello");
     
     node2->length = 5;
     strcpy(node2->str, "there");
     
     node3->length = 4;
     strcpy(node3->str, "prof");

     
     //Dereference each pointer to access the .next field in its pointee,
     //and use pointer assignment to set the .next field to point to the appropriate Node.
    
     node1->next = node2;
     node2->next = node3;
     
    return node1;
}

void teardown(/* what parameter */) {
    //TODO: free all dynamic memory you requested.
    //Please complete the prototype of teardown.
    //You are not allowed to use globals
    
}

void add(node_t * head, char * str, int length){
    node_t * new;
    new = calloc(1, sizeof(char));
    new->next = head->next;
    strcpy(new->str, head->str);
    new->length = head->length;
    head->next = new;
    head->length = length;
    free(head);
    head = calloc(1, sizeof(char));
    strcpy(head->str, str);
}
void delete_node_at(node_t ** head, int idx) {
    //TODO: implement delete a node based on index
	//deletes a node at index idx, which ranges from zero to the length of the list - 1.
    
    if (idx == 0) {
        node_t *new_head = (*head)->next;
        free(*head);
        (*head) = new_head;
    }
    
    for (int i = 0; i < idx; i++) {
        if (i == (idx-1)) {
            (*head)->next = (*head)->next->next;
            free((*head)->next);
        }
        head = &(*head)->next;
    }
}

void delete_node_key(node_t ** head, char * key) {
    //TODO: implement delete a node based on key
	//given a certain key, find and delete.
    
    int idx = 0;
    node_t * cur = *head;
    
    for (int i = 0; i < 1000; i++) {
        if (strcmp(cur->str, key) == 0) {
            idx = i;
            break;
        }
        cur = cur->next;
    }
    
    for (int i = 0; i < idx; i++) {
        if (i == (idx-1)) {
            (*head)->next = (*head)->next->next;
            free((*head)->next);
        }
        head = &(*head)->next;
    }
}

//You can ignore the following code for testing
void dump_all(node_t*);
int main (int argc, char ** argv) {
    node_t * head = setup();
    add(head, "hi", 2);
    delete_node_key(&head, "prof");
    delete_node_at(&head, 0);
    dump_all(head);
    teardown(/* what parameter */);
    return 0;
}

void dump_all(node_t * head) {
    printf("head -> ");
    node_t * cur = head;
    while(cur != NULL) {
        printf("%s ", cur->str);
	cur = cur->next;
    }
    printf("\ndone\n ");
}
