#include<stdio.h>

extern int test (int, int);

int test (int a, int b)
{
	printf("Here inside test function \n");
	return a+b;
}
