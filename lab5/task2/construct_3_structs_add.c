#include "snode.h"
typedef struct snode node_t;

node_t * setup() {
    //TODO:head declared for you
    //node_t * head;
    
    //Allocate three more pointers
    //head for the first Node, and temporary pointers node1, node2 and node3
    node_t * node1 = NULL;
    node_t * node2 = NULL;
    node_t * node3 = NULL;
    
    
    //Allocate three node pointees and store references to them in the three pointers
    
    node1 = (node_t*)malloc(sizeof(char));
    node2 = (node_t*)malloc(sizeof(char));
    node3 = (node_t*)malloc(sizeof(char));
    
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

void teardown(node_t * head) {
    //TODO: free all dynamic memory you requested.
    //Please complete the prototype of teardown.
    //You are not allowed to use globals

    while (head != NULL)
    {
        node_t* temp = head;
        head = head->next;
        free(temp);
    }
    
}

void add(node_t ** head, char * str, int length){
    //TODO: implement add to add a new node to front, pointed by head
    
    //set head to new values
    //copy head to new pointer
    //point head to new
    
    node_t * new;
    new = (node_t*)malloc(sizeof(char));
    new->next = (*head)->next;
    strcpy(new->str, (*head)->str);
    new->length = (*head)->length;
    (*head)->next = new;
    (*head)->length = length;
    free(*head);
    *head = (node_t*)malloc(sizeof(char));
    strcpy((*head)->str, str);
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
    }
    printf("\ndone\n ");
}
