#include "snode.h"
#define _GNU_SOURCE
#include "slist.h"
#include "frame.h"

/**
 * Allocates new slist dynamically.
 *
 * @return pointer to the list
 */
struct slist *slist_create() {
    //init
    struct frame_t * front = (frame_t *) malloc(sizeof(frame_t));
    struct frame_t * back = (frame_t *) malloc(sizeof(frame_t));
    struct snode* head = snode_create(front);
    struct snode* tail = snode_create(back);
    struct slist* newList = (struct slist*)malloc(sizeof(struct slist*));

    newList->front = head;
    newList->back = tail;

    newList->front->next = newList->back;

//    printf("%s", newList->front->str);
//    printf("%s", newList->back->str);


    return newList;
};




// struct snode* slist_add_back_int(struct slist *l, int i) {
//     //init OK
//     struct snode * p = l->front;
//     struct snode* addBack = snode_create(&i);
//
//
//     while(p->next != l->back) {
//         //puts("were in while");
//         p = p->next;
//     }
//
//     if (p->next == l->back) {
//         //puts("were in if");
//         p->next = addBack;
//         addBack->next = l->back;
//     }
//
//     //printf("%d \n", *((int*)addBack->data));
//
//     return addBack;
// }




/**
 * Inserts new node in slist after the last node.
 *
 * @param l pointer to the list (non-NULL)
 * @param str pointer to a C string to store in new list node
 * returns a pointer to the newly added node
 */
struct snode* slist_add_back(struct slist *l, frame_t *s){

    //init OK
    struct snode * p = l->front;
    struct snode* addBack = snode_create(s);


    while(p->next != l->back) {
        //puts("were in while");
        p = p->next;
    }

    if (p->next == l->back) {
        //puts("were in if");
        p->next = addBack;
        addBack->next = l->back;
    }

    return addBack;
};







/**
 * Inserts new node in slist before the first node.
 *
 * @param l pointer to the list (non-NULL)
 * @param str pointer to a C string to store in new list node
 * returns a pointer to the newly added node
 */
struct snode* slist_add_front(struct slist *l, void *s){

    //init OK
    struct snode* addFront = snode_create(s);
    addFront->next = l->front->next;
    l->front->next = addFront;

    return addFront;
};







/**
 * Returns the first snode with the given string.
 *
 * @param l pointer to the list (non-NULL)
 * @parap str pointer to a string
 * @return struct snode* or NULL if no match
 */
// struct snode* slist_find(struct slist *l, void *s){
//     struct snode * p = l->front;
//     p = p->next;
//
//     while(strcmp(p->data, s) != 0) {
//         if (p == l->back) {
//             return NULL;
//         }
//         p = p->next;
//     }
//
//     return p;
//
// };







/**
 * Deallocate a list and all snodes
 *
 * @param l pointer tot he list
 */
void slist_destroy(struct slist *l){
    free(l->front);
    free(l->back);
    free(l);
};



void printing(void* p, int i) {

    //if char
    if (sizeof(*p) == sizeof(char)) {
        printf("%c", *((char*)p) + i);

    }

    //if int
    else if (sizeof(*p) == sizeof(int)) {
        printf("%d", *((int*)p) + i);

    }

    //if long
    else if (sizeof(*p) == sizeof(float)) {
        printf("%f", *((float*)p) + i);

    }


}


/**
 * Traverse the list and print the content of each node.
 *
 * @param l pointer to the list (non-NULL)
 */
void slist_traverse(struct slist *l){
    struct snode * p = l->front;
    p = p->next;

    while(p != l->back) {
        //puts("were in while");
        printf("%p \n", p->data);
        p = p->next;
    }

    return;
};








/**
 * Returns the number of elements in the list (nodes).
 *
 * @param l pointer to the list (non-NULL)
 */
uint32_t slist_length(struct slist *l){
    struct snode * p = l->front;
    int count = 0;


    while(p != l->back) {
        //puts("were in while");
        count++;
        p = p->next;
    }

    return count-1;
};






/**
 * Deletes the first snode with the given string.
 *
 * @param l pointer to the list (non-NULL)
 * @parap str pointer to a string
 * @return struct snode* or NULL if no match
 */
// struct snode* slist_delete(struct slist *l, void *s){
//     struct snode * p = l->front;
//     p = p->next;
//     int count = 0;
//
//     while(strcmp(p->data, s) != 0) {
//         if (p == l->back) {
//             return NULL;
//         }
//         count++;
//         p = p->next;
//     }
//
//     p = l->front;
//     for(int i=0; i<count; i++) {
//         p = p->next;
//     }
//
//     struct snode * toDel = p->next;
//     p->next = p->next->next;
//
//     toDel->next = NULL;
//     free(toDel->data);
//     free(toDel);
//
//
//     return NULL;
// };
