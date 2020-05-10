#ifndef _snode_H_
#define _GNU_SOURCE
#define _snode_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct snode {
  //TODO: change str to dynamic allcoation
    //int length;
    struct snode *next;
    void* data;
};

//TODO: change prototypes of functions to remove
//length
struct snode* snode_create(void *s);
void snode_destroy(struct snode * s);

#endif
