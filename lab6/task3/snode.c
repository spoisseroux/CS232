#include "snode.h"

struct snode * snode_create(char *s)
{
    
 //TODO: implement snode_create, change the prototype to
 //match with header file
    //allocate mem for snode struct (strlen+1)
    //copy contents of parameter s to new alloc mem
    //return node address;
    
    struct snode *new = malloc(sizeof(struct snode *));
    new->str = malloc(strlen(s) + 1);
    strcpy(new->str, s);
    new->next = NULL;
    
    return &(*new);
}

void snode_destroy(struct snode * s)
{

 //TODO: implement snode_destroy
    //free mem from string
    //free mem from struct
    free(s->str);
    free(s);
 
};

char * snode_get_str(struct snode * s){
//    char* str;
//    str = malloc(sizeof(char)*15);
//    strcpy(str, s->data);
//    return str;
    return s->str;

};

struct snode * snode_get_next(struct snode * s){
    if (s->next->next == NULL) {
        return NULL;
    } else {
        return s->next;
    }
};

 
