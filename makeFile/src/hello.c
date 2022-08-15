//hello.c
#include "hello.h"
bool hello()
{
	int number = 0, tries = 0,ret;
	printf("Hello, world!\n");
try_again:
	printf(">>Enter Any Number : ");
	ret = scanf("%d",&number);
	if(!ret)
	{
		tries++;
		int c;
		while (!isspace(c = getchar()));
		ungetc(c, stdin);
		printf("\033[0;31m");
		if(tries > 2)
		{
			printf(">>Multiple Successive Wrong Inputs\n");
			return false;
		}
		printf(">>Wrong Input.\n>>Input Should be a Number\n>>Try Again\n");
		printf("\033[0m");
		goto try_again;
	}
	printf("The Entered Number = %d\n", number);
	return true;
}
