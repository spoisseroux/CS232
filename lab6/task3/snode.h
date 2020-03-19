#ifndef _snode_H_
#define _snode_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct snode {
  //TODO: change str to dynamic allcoation
    //int length;
    struct snode *next;
    char* str;

};

//TODO: change prototypes of functions to remove
//length
struct snode* snode_create(char *s);
void snode_destroy(struct snode * s);

char * snode_get_str(struct snode * s);

struct snode * snode_get_next(struct snode * s);

 
#endif
