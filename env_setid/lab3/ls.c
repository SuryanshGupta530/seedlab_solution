#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

extern char **environ;
int main(){
	char *argv[2];
	argv[0] = "/usr/bin/whoami";
	argv[1] = NULL;
	execve("/usr/bin/whoami", argv, environ); 
	return 0 ;
}
