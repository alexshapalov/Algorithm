/* Program: Displays the values of environment variables in alphabet order. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern char **environ;

int cmp (const void *a, const void *b) {
    return strcmp(*(char**)a, *(char**)b);
}

int main () {
    int i = 0;
    while (environ[i] != NULL) i++;
    qsort (environ, i, sizeof(char*), cmp);
    i = 0;
    while (environ[i] != NULL) {
        printf ("%s\n", environ[i++]);
    }
    return 0;
}
