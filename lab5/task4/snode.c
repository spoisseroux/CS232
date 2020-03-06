#include "snode.h"
typedef struct snode node_t;

node_t* snode_create(char *s)
{
    
 //TODO: implement snode_create, change the prototype to
 //match with header file
    //allocate mem for snode struct (strlen+1)
    //copy contents of parameter s to new alloc mem
    //return node address;
    
    node_t *new = malloc(sizeof(node_t*));
    new->str = malloc(strlen(s) + 1);
    strcpy(new->str, s);
    new->next = NULL;
    
    return &(*new);
}

void snode_destroy(node_t * s)
{

 //TODO: implement snode_destroy
    //free mem from string
    //free mem from struct
    free(s->str);
    free(s);
 
};
 
