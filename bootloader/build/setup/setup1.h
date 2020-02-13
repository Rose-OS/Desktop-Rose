#include <stdio.h>
#include <stdlib.h>
#define ret return
#define null NULL


typedef struct Criteria { 
    char name[90]; // Name of file
    float size; // Size (in mb)
} Criteria;

typedef struct Package {
    char name[90]; // Name of package
} Package;

void example(Criteria criteria1){
    Criteria criteria1; // create instance of criteria
    
    // all functions must have this
    // below line 16

    // Error handling
    if (criteria1.name == " " || criteria1.name == ""){
        printf("Illegal size");
    } else { ret; }
    if (criteria1.name == null){
        ret;
    } else {}
    if (criteria1.size < 0){
        printf("illegal size");
    } else { ret; }
}
