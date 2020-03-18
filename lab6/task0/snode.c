#include "snode.h"

struct snode* snode_create(void *s)
{
    
 //TODO: implement snode_create, change the prototype to
 //match with header file
    //allocate mem for snode struct (strlen+1)
    //copy contents of parameter s to new alloc mem
    //return node address;
    
    struct snode *new = (struct snode*)malloc(sizeof(struct snode*));
    new->data = malloc(10*sizeof(s));
    
    for (int i = 0; i<(10*sizeof(s)); i++) {
        strcpy((new->data + i), (s + i));
    }
    
    new->next = NULL;
    
    return &(*new);
}

void snode_destroy(struct snode * s)
{

 //TODO: implement snode_destroy
    //free mem from string
    //free mem from struct
    free(s->data);
    free(s);
 
};
 
