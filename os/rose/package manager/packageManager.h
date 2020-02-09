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
    char name[90]; // The name of the package; 90 chars mas\x
    char author[90]; // The author; 90 chars max
} Packages;

// Functions
void examplePackage(char name[], float mbSize, char author[]){
    // This is just an example, and not anything else
    // Do not use this in any of the real packages,
    // as this will not work

    // All functions must have the things below THIS line:
    Packages package1;
    name = package1.name;
    author = package1.author;
    // Error handling
    if (name == " " || name == ""){
        printf("Fatal: No name of package");
    } else { /* Nothing, just continue in the code */ }

    if (mbSize < 0){
        printf("Fatal: Negative size of package.");
    }
}