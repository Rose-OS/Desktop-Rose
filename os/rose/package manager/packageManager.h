// Normal imports
#include <stdio.h>
#include <stdlib.h>



// This directory imports
#include "getPackages.h"

// Typedef's / Structs
typedef struct Packages {
    float bSize; // we all know a package cannot be <0 bytes
    float mbSize; // If mbSize = 0, then
    // do nothing
    float kbSize; // If kbSize = 0, then
    // do nothing
    float gbSize; // If gbSize = 0, then
    // do nothing
} Packages;

// Functions
void example(char name[], float mbSize){
    
}