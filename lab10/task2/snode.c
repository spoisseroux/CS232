#include "snode.h"
#include "frame.h"

struct snode* snode_create(frame_t *s)
{

 //TODO: implement snode_create, change the prototype to
 //match with header file
    //allocate mem for snode struct (strlen+1)
    //copy contents of parameter s to new alloc mem
    //return node address;

    struct snode *new = malloc(sizeof(struct snode*));
    new->data = (void*) malloc(sizeof(frame_t));
    new->data = s;
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
