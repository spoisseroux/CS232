#ifndef _snode_H_
#define _GNU_SOURCE
#define _snode_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "frame.h"

struct snode {
  //TODO: change str to dynamic allcoation
    //int length;
    struct snode *next;
    frame_t* data;
} snode;

//TODO: change prototypes of functions to remove
//length
struct snode* snode_create(frame_t *s);
void snode_destroy(struct snode * s);

#endif
