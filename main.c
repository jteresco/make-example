/*
  Small C program that uses a function in another file.

  Intended as part of an example of how to use Makefiles.

  Jim Teresco, Williams College, The College of Saint Rose, Siena College
*/

#include <stdio.h>  /* for printf */
#include <stdlib.h> /* for atoi */
#include "sub.h"    /* for our function */

int main(int argc, char *argv[]) {
  int value, newvalue;

  value=atoi(argv[1]);
  newvalue=sub(value);
  printf("sub(%d)=%d\n",value,newvalue);

  return 0;
}
