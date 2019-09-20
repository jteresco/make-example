/*
  Small C program that provides a function used in another file.

  Intended as part of an example of how to use Makefiles.

  Jim Teresco, Williams College, The College of Saint Rose, Siena College
*/

#include <math.h>

/* dummy function to compute sqrt n, rounded down to next integer */
int sub(int n) {
  double num, ans;
  int ans_int;

  num=n;
  ans=sqrt(n);
  ans_int=ans;
  return ans;
}
