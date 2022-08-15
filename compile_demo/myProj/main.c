#include "hello.h"
#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif
int main()
{
	while(1)
	{
		bool ret = hello();
		if(ret)
			printf("Success\n");
		else
		{
			printf(">>Operation Failed. Run the Program Again.\n>>Terminating in 3 Seconds\n>>>3...\n");
			sleep(1);
			printf(">>>2...\n");
			sleep(1);
			printf(">>>1...\n");
			sleep(1);
			printf(">>>Terminated\n");
			printf("\033[0m");
			return 0;
		}
	}
	return 0;
}
