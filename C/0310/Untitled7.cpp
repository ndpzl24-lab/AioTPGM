#include <stdio.h>

int global_var = 0;
void func()
{
	int auto_var = 0;
	auto_var++;
	global_var++;
	printf("auto_var = %d, global_var =%d\n", auto_var, global_var);
}
int main()
{
	printf("global_var = %d\n", global_var);  // 0
	func();
	printf("global_var = %d\n", global_var); //마지막 global_var = 1 이기 때문에 1이 출력
	func();
	printf("global_var = %d\n", global_var); //마지막 global_var = 2 이기 때문에 1이 출력
	func();
	printf("global_var = %d\n", global_var); //마지막 global_var = 3 이기 때문에 1이 출력
	return 0;
}