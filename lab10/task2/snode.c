#include "snode.h"
typedef struct snode node_t;

node_t* snode_create(void *s)
{
    
 //TODO: implement snode_create, change the prototype to
 //match with header file
    //allocate mem for snode struct (strlen+1)
    //copy contents of parameter s to new alloc mem
    //return node address;
    
    node_t *new = (node_t*)malloc(sizeof(node_t));
    new->data = malloc(10*sizeof(s));
    
    for (int i = 0; i<(10*sizeof(s)); i++) {
        *(char*)(new->data + i) = *(char*)(s + i);
    }
    
    new->next = NULL;
    
    return &(*new);
}

void snode_destroy(node_t * s)
{

 //TODO: implement snode_destroy
    //free mem from string
    //free mem from struct
    free(s->data);
    free(s);
 
};
 
