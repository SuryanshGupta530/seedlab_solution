#include<stdio.h>

int main(){
	printf("I have reached Line 0.\n");
	char *kernel_data_addr = (char*)0xfa603000;
	printf("I have reached Line 1.\n");
	char kernel_data = *kernel_data_addr;
	printf("I have reached Line 2.\n");
	return 0;
}
